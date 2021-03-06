/****************************************Copyright (c)**************************************************
**                                    driver program for lpc2100
**
**--------------文件信息--------------------------------------------------------------------------------
** 文件名: IIC.c
** 创建人: WAN.CG
** 日  期: 2007.8.16
** 描  述: μCOS-II下LPC210x的I2c主模式底层驱动
**
**--------------当前版本修订------------------------------------------------------------------------------
** 修改人: 
** 日　期: 
** 描　述: 
**
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/

#include "config.h"
#include "driver.h"


static int8u *I2cBuf;
static OS_EVENT *I2cSem;
static OS_EVENT *I2cMbox;
static int16s I2cNbyte;
static int8u I2cAddr;

#define I2C_WRITE_END       1           /* 写完成   */
#define I2C_READ_END        2           /* 读完成   */
#define I2C_NOT_GET_BUS     4           /* 丢失仲裁 */
#define I2C_ACK_ERR         8           /* 接收ACK错误 */


/*********************************************************************************************************
** 函数名称: I2cInit
** 功能描述: 初始化I2c（主模式）
** 输  　入: FI2c:I2c总线频率
**
** 输  　出: TRUE  :成功
**           FALSE:失败
** 全局变量: I2cSem,I2cMbox
** 调用模块: OSSemCreate
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/
int8u I2cInit(int32u FI2c)
{
    VICIntEnClr = 1 << 9;                           /* 禁止能I2c中断 */
    if (FI2c <= 400000)
    {
        PINSEL0 = (PINSEL0 & 0xffffff0f) | 0x50;    /* 选择管脚为I2c */
        I2CONCLR = 0x6C;                            /* 清除控制寄存器 */
        I2SCLH = (Fpclk / FI2c + 1) / 2;            /* 设置高电平时间 */
        I2SCLL = (Fpclk / FI2c) / 2;                /* 设置低电平时间 */
        I2cSem = OSSemCreate(1);                    /* 信号量用于互斥操作总线 */
        I2cMbox = OSMboxCreate(NULL);               /* 消息邮箱用于中断向任务传递操作结果 */
        if (I2cMbox == NULL)
        {
            return FALSE;
        }
        if (I2cSem != NULL)
        {
            return TRUE;
        }
    }
    return FALSE;
}

/*********************************************************************************************************
** 函数名称: __I2cWrite
** 功能描述: 读I2C，但不发送STOP信号 
** 输      : Addr:从机地址
**           Data:将要写的数据
**           写的数据数目
** 输  　出: 发送的数据字节数
**
** 全局变量: I2cAddr,I2cNbyte,I2cBuf
** 调用模块: OSMboxPend
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/
        int8u __I2cWrite(int8u Addr, int8u *Data, int16s NByte)
{
    int8u err;
    unsigned int Rt;

    I2cAddr = Addr & 0xfe;                              /* 存储发送地址 */
    I2cNbyte = NByte;                                   /* 存储写字节数 */
    I2cBuf = Data;                                      /* 存储写的数据的指针 */
    I2CONSET = 0x24;                                    /* 设置为主机，并启动总线 */
    
    Rt = (unsigned int) OSMboxPend(I2cMbox, 0, &err);   /* 等待操作结束 */
    return Rt;
}


/*********************************************************************************************************
** 函数名称: I2cWrite
** 功能描述: 向I2C从器件写数据
** 输　  入: Addr:从机地址
**           Data:指向将要写的数据的指针
**           NByte:写的数据数目
** 输　   出:发送的数据字节数
**
** 全局变量: I2cSem,I2cNbyte
** 调用模块: OSSemPend,__I2cWrite,OSSemPost
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/
        int16u I2cWrite(int8u Addr, int8u *Data, int16s NByte)
{
    int8u err;
    
    OSSemPend(I2cSem, 0, &err);
    
    I2CONCLR = 0x6C;
    I2CONSET = 0x40;                            /* 使能I2c */
    VICIntEnable = 1 << 9;                      /* 使能I2c中断 */

    if (__I2cWrite(Addr, Data, NByte) == I2C_WRITE_END)
    {
        I2CONSET = 1 << 4;                      /* 发送停止信号 */
        I2CONCLR = 0x28;                        /* 清除标志 */
    }

    VICIntEnClr = 1 << 9;                       /* 禁止能I2c中断 */

    OSSemPost(I2cSem);
    return (NByte - I2cNbyte);
}

/*********************************************************************************************************
** 函数名称: I2cRead
** 功能描述: 从I2c从器件读数据
** 输  　入: Addr:从机地址
**           Ret:指向返回数据存储位置的指针
**           Eaddr:扩展地址存储位置
**           EaddrNByte:扩展地址字节数，0为无
**           ReadNbyte:将要读取的字节数目
** 输  　出: 已读取的字节数
**
** 全局变量: I2cSem,I2cAddr,I2cNbyte,I2cBuf
** 调用模块: OSSemPend,__I2cWrite,OSMboxPend,OSSemPost
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/
        int16s I2cRead(int8u Addr, int8u *Ret, int8u *Eaddr, int16s EaddrNByte, int16s ReadNbyte)
{
    int8u err;
    
    OSSemPend(I2cSem, 0, &err);

    I2CONCLR = 0x6C;
    I2CONSET = 0x40;                            /* 使能I2c */
    VICIntEnable = 1 << 9;                      /* 使能I2c中断 */

    if (EaddrNByte > 0)
    {
        if (__I2cWrite(Addr, Eaddr, EaddrNByte) != I2C_WRITE_END)
        {
            return -1;
        }
    }

    I2cAddr = Addr | 0x01;                      /* 存储发送地址 */
    I2cNbyte = ReadNbyte;                       /* 存储读字节数 */
    I2cBuf = Ret;                               /* 存储读到的数据 */
    I2CONCLR = 0x28;
    I2CONSET = 0x24;                            /* 设置为主机，并启动总线 */
    VICIntEnable = 1 << 9;                      /* 使能I2c中断 */

    OSMboxPend(I2cMbox, 0, &err);               /* 等待操作结束 */

    VICIntEnClr = 1 << 9;                       /* 禁止能I2c中断 */
    OSSemPost(I2cSem);
    return (ReadNbyte - I2cNbyte);
}


/*********************************************************************************************************
** 函数名称: I2c_Exception
** 功能描述: I2c中断服务程序
** 输　  入: 无
**
** 输  　出: 无
**         
** 全局变量: I2cAddr,I2cBuf,I2cNbyte,I2cMbox
** 调用模块: OSMboxPost
**
**------------------------------------------------------------------------------------------------------
********************************************************************************************************/
        void I2c_Exception(void)
{
    OS_ENTER_CRITICAL();
    switch(I2STAT & 0xf8)
    {
        case  0x08:                     /* 已发送起始条件，与0x18相同处理 */
//            break;
        case  0x10:                     /* 已发送重复起始条件 */
            I2DAT = I2cAddr;            /* 发送地址 */
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x18:                     /* 已发送SLA+W，并已接收应答 */
            I2DAT = *I2cBuf++;
            I2cNbyte--;
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x28:                     /* 已发送I2C数据，并接收到应答 */
            if (I2cNbyte > 0)
            {
                I2DAT = *I2cBuf++;
                I2cNbyte--;
                I2CONCLR = 0x28;        /* 清除标志 */
            }
            else
            {
                OSMboxPost(I2cMbox, (void *)I2C_WRITE_END);
                VICIntEnClr = 1 << 9;   /* 禁止能I2c中断 */
            }
            break;
        case  0x20:                     /* 已发送SLA+W；已接收非ACK, 与0x48处理相同 */
//            break;                    
        case  0x30:                     /* 已发送I2DAT中的数据字节；已接收非ACK, 与0x48处理相同 */
//            break;
        case  0x48:                     /* 已发送SLA+R；已接收非ACK */
            I2CONSET = 1 << 4;          /* 发送停止信号 */
            OSMboxPost(I2cMbox, (void *)I2C_ACK_ERR);
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x38:                     /* 在SLA+R/W或数据字节中丢失仲裁 */
            OSMboxPost(I2cMbox, (void *)I2C_NOT_GET_BUS);
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x40:                     /* 已发送SLA+R；已接收ACK */
            if (I2cNbyte <= 1)
            {
                I2CONCLR = 1 << 2;      /* 下次发送非应答信号 */
            }
            else
            {
                I2CONSET= 1 << 2;       /* 下次发送应答信号 */
            }
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x50:                     /* 已接收数据字节；已发送ACK */
            *I2cBuf++ = I2DAT;          /* 接收数据 */
            I2cNbyte--;
            if (I2cNbyte <= 1)
            {
                I2CONCLR = 1 << 2;      /* 下次发送非应答信号 */
            }
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        case  0x58:                     /* 已接收数据字节；已返发送ACK */
            *I2cBuf = I2DAT;            /* 接收数据 */
            I2cNbyte--;
            I2CONSET= 1 << 4;           /* 结束总线 */
            OSMboxPost(I2cMbox, (void *)I2C_READ_END);
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
        default:
            I2CONCLR = 0x28;            /* 清除标志 */
            break;
    }

    VICVectAddr = 0;                    /* 通知中断控制器中断结束 */
    OS_EXIT_CRITICAL();
}
/*********************************************************************************************************
**                            End Of File
********************************************************************************************************/
