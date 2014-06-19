#include <bsp.h>
#include <pio.h>
#include <async.h>
#include <twid.h>
#include "codec.h"



unsigned char Codec_Read(unsigned char dev_addr,unsigned char reg,unsigned char *pVal)
{
    unsigned char state = 0;   
    state =  TWID_Read( dev_addr>>1, reg, 1, pVal++,1, NULL) ;
    return(state);
}


unsigned char Codec_Write(unsigned char dev_addr,unsigned char reg,unsigned char data)
{      
    unsigned char buf[] = {  data };     
    unsigned char state;
      
    state =  TWID_Write( dev_addr>>1, reg, 1 , buf, sizeof(buf), NULL);     
    
    return state ;
}


unsigned char Codec_Read_SPI(unsigned char dev_addr,unsigned char reg,unsigned char *pVal)
{
    unsigned char state = 0;   
    //state =  TWID_Read( dev_addr>>1, reg, 1, pVal++,1, NULL) ;
    return(state);
}


unsigned char Codec_Write_SPI(unsigned char dev_addr,unsigned char reg,unsigned char data)
{      
    unsigned char buf[] = { dev_addr<<1, reg, data };     
    unsigned char state;    
    
    state = SPI_WriteBuffer_API( buf, 3);     
  
    
    return state ;
    
}


//i2c_channel = 0 ~ 7
unsigned char Codec_Mixer(unsigned char i2c_channel )
{    
     unsigned char buf   ;
     unsigned char state ;
     
     state = 0xe0 ; 
     
     if( i2c_channel <= 3 )  {//PCA9548A,
        buf   = 0x01<<i2c_channel ; //select i2c_channel
        state = TWID_Write( PCA9548A_ADDRESS>>1, 0, 0, &buf, 1, NULL); 
     /*
        buf   = 0 ;
        state = TWID_Write( PCA9540B_ADDRESS>>1, 0, 0, &buf, 1, NULL); 
      
     } else {  // PCA9540B
        buf   = 4 ; //select CH0
        state = TWID_Write( PCA9540B_ADDRESS>>1, 0, 0, &buf, 1, NULL); 
        buf   = 0 ;
        state = TWID_Write( PCA9548A_ADDRESS>>1, 0, 0, &buf, 1, NULL); 
     */
     }
     
     return state ;
}






unsigned char Set_Codec(unsigned char codec_control_type, unsigned char size_para, unsigned char *pdata)
{
    unsigned char i, state = 0 ;
    for(i = 0; i< size_para ; i++)
    {
      if(codec_control_type == 0 ) {
        state = Codec_Write(CODEC_ADDRESS,*(pdata+i*2),*(pdata+i*2+1));
      } else {
        state = Codec_Write_SPI(AD1938_ADDRESS,*(pdata+i*2),*(pdata+i*2+1));
      }
        if( state != 0 ) break;
    }
    return state;
  
}


unsigned char Get_Codec(unsigned char codec_control_type, unsigned char reg, unsigned char *pdata)
{
    unsigned char state = 0 ;
    
    if(codec_control_type == 0 ) {
        state = Codec_Read( CODEC_ADDRESS, reg, pdata) ;
    } else {
        state = Codec_Read_SPI( CODEC_ADDRESS, reg, pdata) ;
    }
    
    return state;
  
}


/*********************************************************************************************************************************/
// OSC=12.288Mhz

unsigned char I2CWrite_Codec( unsigned char reg,unsigned char data )
{
    unsigned char err;
    err = Codec_Write( AD1937_ADDRESS, reg, data);
    return err;
}

unsigned char I2CWrite_Codec_AIC3204( unsigned char reg,unsigned char data )
{
    unsigned char err;
    err = Codec_Write( CODEC_ADDRESS, reg, data);
    return err;
}

void ALL_POWER_ON(void)
{
    I2CWrite_Codec(DAC_Control0,0x00);  //
    I2CWrite_Codec(ADC_Control0,0x00);  //
}


void ALL_POWER_OFF(void)
{
    I2CWrite_Codec(DAC_Control0,0x01);  //
    I2CWrite_Codec(ADC_Control0,0x01);  //
}


unsigned char Codec_DAC_Attenuation( unsigned char DAC_NAME, unsigned int x10gain )
{
    
    unsigned char err;
    float temp ;
    
    if( x10gain == 1000 ){        
        return 0 ;
    }
    if (x10gain > 945) {//0.375*252=94.5dB         
        err = CODEC_SETVOL_RANGE_ERR;
        APP_TRACE_INFO(("ERR: CODEC Gain Over Range!\r\n"));        
        return err;
    }
    temp = x10gain/(0.375*10); 
    err = I2CWrite_Codec(DAC_NAME,(unsigned char)temp);
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }
    APP_TRACE_DBG(("\r\nSet CODEC REG[%d]=0x%0X",DAC_NAME,(unsigned char)temp)); 
    
    return 0;

}

//unsigned char Codec_DAC_Attenuation( unsigned char DAC_NAME, float gain )
//{
//    
//    unsigned char err;
//    float temp ;
//      
//    if ( gain > 0 ) {         
//        err = 1;
//        return err;
//    }
//    
//    if(gain< -95.25 ) {
//        temp = 255 ;
//        
//    } else {
//        temp = -gain/0.375; 
//        
//    }
//    
//    err = I2CWrite_Codec(DAC_NAME,(unsigned char)temp);
//    
//    return err;
//    
//}


// Main clock source = 12.288 MHz.   
unsigned char Codec_SetFCLK( unsigned int fclk )
{
    
    unsigned char err;
    unsigned char pll_reg;
    
    switch( fclk )   {
      
        case 8000:  // Need  12.288 / 2 MHz Osc 
            pll_reg = 0x9e;      
            return CODEC_SETFCLK_RANGE_ERR;
            break;            
        case 16000:            
            pll_reg = 0x9e;            
            break;
        case 24000:      
            pll_reg = 0x9c;            
            break;
        case 32000:            
            pll_reg = 0x9a;      
            break;
        case 44100: // Need 11.2896 MHz Osc 
            pll_reg = 0x98;  
            return CODEC_SETFCLK_RANGE_ERR;
            break;
        case 48000:             
            pll_reg = 0x98;            
            break;
        case 96000: // Need 12.288 * 2 MHz Osc       
            pll_reg = 0x98;             
            return CODEC_SETFCLK_RANGE_ERR;
            break;
        case 0 : //power down clock
            pll_reg = 0x01; 
            break;
        default:
            return CODEC_SETFCLK_RANGE_ERR;
            break;
            
    }
    
    err = I2CWrite_Codec( PLL_Control0, pll_reg );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }

    return err;
    
}


unsigned char Codec_SetMode( unsigned char mode )
{
    unsigned char err;
    unsigned char dac_reg0,dac_reg1;
    unsigned char adc_reg1,adc_reg2;
    
    switch( mode )  {
    
        case I2S_MODE:
                 dac_reg0 = 0x00;      //I2S
                 dac_reg1 = 0x70;      //2 channels
                 adc_reg1 = 0x03;      //I2S
                 adc_reg2 = 0x01;      //2 channels
                 break;
        case TDM_MODE:
                 dac_reg0 = 0x40;      //TDM
                 dac_reg1 = 0x74;      // 8 channels
                 adc_reg1 = 0x23;      //TDM
                 adc_reg2 = 0x21;      // 8 channels
                 break;
        case TDM16_MODE:
                 dac_reg0 = 0x40;      //TDM
                 dac_reg1 = 0x76;      // 16 channels
                 adc_reg1 = 0x23;      //TDM
                 adc_reg2 = 0x31;      // 16 channels
                 break;
        default:
                return CODEC_SETMODE_RANGE_ERR;
                break;
    } 
    
    err = I2CWrite_Codec( DAC_Control0, dac_reg0 );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }    
    err = I2CWrite_Codec( DAC_Control1, dac_reg1 );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }
    
    err = I2CWrite_Codec( ADC_Control1, adc_reg1 );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }    
    err = I2CWrite_Codec( ADC_Control2, adc_reg2 );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }

    return err;    
  
}

/*******************************************/

unsigned char Init_CODEC( unsigned int sample_rate )   
{ 
    unsigned char err;
    unsigned char i;
    static unsigned int sr_saved; 
    
    unsigned char reg_para[][2] = {
        
        { PLL_Control0,0x98 },
        { PLL_Control1,0x00 },  //
        { DAC_Control2,0x18 },  // 16bit    
        { DAC_Mute    ,0xF0 },  // DAC3.4 mute.
        { DAC1L_Volume,0x00 },  // no attenuation on SPK
        { DAC1R_Volume,0x00 },  // no attenuation on SPK
        { DAC2L_Volume,0x00 },  // no attenuation on Lout
        { DAC2R_Volume,0x00 },  // no attenuation on Lout
        { ADC_Control0,0x30 }  //Enable ADC
 //    { DAC3L_Volume,0x00 },  // not used on AB03
 //    { DAC3R_Volume,0x00 },  // not used on AB03 
        
    };
    
    if( sample_rate == sr_saved ) {
        return 0;
    } else {
        sr_saved = sample_rate ;
    }

    for( i = 0; i< sizeof(reg_para)>>1; i++ ) {
      err = I2CWrite_Codec(reg_para[i][0], reg_para[i][1]); 
      if( OS_ERR_NONE != err ) {
          err = CODEC_WR_REG_ERR;
          return err ;
      }
      
    }
    
    err = Codec_SetFCLK( sample_rate );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }    

    err = Codec_SetMode( TDM_MODE );   
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }     

    if( !( Get_Switches() & 0x01 ) ) {
        err = CODEC_LOUT_Small_Gain_En( true ); //attenuation enable
    }
    
    return err;
    
}





unsigned char CODEC_LOUT_Small_Gain_En( bool small_gain )
{
    unsigned char err;
    unsigned char reg;
    if( small_gain ) {        
        reg = 64;    // 64*0.375=24dB attenuation on Lout     
        APP_TRACE_INFO(("Lout Gain 24dB attenuation: Enabled \r\n"));  
        
    } else {        
        reg = 0;    // 0dB attenuation on Lout        
        APP_TRACE_INFO(("Lout Gain 24dB attenuation: Disabled \r\n"));  
        
    }    
    err = I2CWrite_Codec( DAC2L_Volume, reg );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }    
    
    err = I2CWrite_Codec( DAC2R_Volume, reg );
    if( OS_ERR_NONE != err ) {
        err = CODEC_WR_REG_ERR;
        return err ;
    }

    return err;    
    
}


unsigned char CODEC_Set_Volume( unsigned int vol_spk, unsigned int vol_lin )
{
   
    unsigned char err;
    unsigned char temp;
    
    temp = 0xF0;
    err = Codec_DAC_Attenuation(DAC1L_Volume, vol_spk );    
    if( OS_ERR_NONE != err ){
        return err;
    }
    err = Codec_DAC_Attenuation(DAC1R_Volume, vol_spk );
    if( OS_ERR_NONE != err ){
        return err;
    }
    
    err = Codec_DAC_Attenuation(DAC2L_Volume, vol_lin );
    if( OS_ERR_NONE != err ){
        return err;
    }   
    err = Codec_DAC_Attenuation(DAC2R_Volume, vol_lin );
    if( OS_ERR_NONE != err ){
        return err;
    }
     
    if( vol_spk == SET_VOLUME_MUTE ) {
        temp += (3<<0);
    }
    if( vol_lin == SET_VOLUME_MUTE ) {
        temp += (3<<2);
    }
    err = I2CWrite_Codec(DAC_Mute,temp);
    
    return err;
    
}


















/*
unsigned char config_aic3204[][2] = {
    
    
	      0,0x00, //page0---------------------	      
	      //software reset	
	      1,0X01, 
	      
	      //PLL not used here
	      4,0x01,	 //BCLK as main clock       
	      11,0x84,  //NDAC=4    
	      12,0x82,  //MDAC=2	      
	      13,0x00,   
	      14,32,    //DOSR=32
	      
	      18,0x84,  //NADC=4               
	      19,0x82,  //MADC=2		      
	      20,32,   //AOSR=32		    
	      //30,0X82,  //bclk=bdiv_clkin/4

	      //set route settings
	      //29,0X11,    // Inner ADC is routed to DAC	
	      //29,0X21,    // I2S input is routed to I2S output	
	      //29,0X1,     // No innner rounte      

	      //set digital interface, On S-II board CODEC set as master 
	      27,0x71,   	//DSP mode,32bit,Slave,HZ after data transmit done	  
	      28,96,   	//data offset 6*32 = 6<<5 = 192, defalut put line in channels on slot 6, 7 
//	      32,0X00, 
//	      33,0X4d, 
	      34,0x20, 
//	      53,0X02,  	//Dout is pin5
//	      54,0X02,  	//pin4 is i2s data input  
	         
//		  //set channels
//	      63,0Xd4, //DAC Channel Setup 
//	      64,0X00, //DAC Channel Setup	 
//	      65,0X00, //DAC Volume L set 0dB
//	      66,0X00, //DAC Volume R set 0dB
	     
//	      //set dmic data pin setting
//	      55,0X0e,   // Set MISO as PDM CLK ouput pin
//	      56,0X02,   // SCLK pin is enabled	
          
          //set ADC channel
	      81, 0xF0,//81, 0xDC , //????????adc_input_para,   // enable ADC and set SCLK as PDM DATA input pin-------	    
	      //Dmic clock output(=adc_mod_clk), PDM CLK = ADC_MOD_CLK	        
	      82,0X00,   //ADC Fine gain adjust, 0dB, unmute
	      83,0X00,   //ADC Volume L set 0dB
	      84,0X00,   //ADC Volume R set 0dB

	      0,0X01,  //page1--------------------------
	          
	      //set power
	      1,0x08,  //disconnect AVDD and DVDD		 
	      2,0X01,  //enable Master Analog Power Control		
//	      3,0X00,  //Set the DAC L PTM mode to PTM_P3/4
//	      4,0X00,  //Set the DAC R PTM mode to PTM_P3/4		      
//	      9, 0XFF,  //All HPOUT,LOUT and Mixer Amplifier are Power up  
//	      9, 0x3c,
	      10,0X00,  //Set the Input Common Mode to 0.9V and Output Common Mode for Headphone to Input Common Mode
//		  20,0X00,  //headphone driver startup

		  //set route settings
		  //CODEC LO to FM23 LIN, single ended
////		  12,0X00, //HPL route off
////	      13,0X00, //HPR route off
////	      14,0X08, //LOL route: DAC L 
////	      15,0X00, //LOR route off
////
////	      12,0X08, //HPL route off
////	      13,0X08, //HPR route off
////	      14,0X08, //LOL route: DAC L 
////	      15,0X08, //LOR route off
	      
//          //set DAC output gains
//	      16,0X00,  //HPL 0db gain
//	      17,0X00,  //HPR 0db gain
//	      //18,0X00,  //LOL 0db gain
//	      //19,0X00,  //LOR 0db gain  
//	      18,0X3A,  //LOL -6db gain
//	      19,0X3A,  //LOR -6db gain   
          
		 //set ADC routine
	      52,0X04, //IN3L to L_MICPGA_Positive
	      54,0X40, //CM1L to L_MICPGA_Negative
	      55,0X04, //IN3R to R_MICPGA_Positive
	      57,0X40, //CM1R to R_MICPGA_Negative         

	      		       
	      //set ADC input gains
	      59,0X00,  //L PGA 0db gain
	      60,0X00   //R PGA 0db gain	    
};

unsigned char Init_CODEC_AIC3204( unsigned int sample_rate ) 
{
    unsigned char i ;
    unsigned char err;
    
    for (i = 0 ; i< sizeof(config_aic3204)>>1 ; i++ ) {    
        err = I2CWrite_Codec_AIC3204(config_aic3204[i][0],config_aic3204[i][1]);
        if(err != 0 ) {
            break;
        }
    }
    return err;    
    
}

unsigned char Set_AIC3204_DSP_Offset( unsigned char slot_index ) 
{
    
    unsigned char err;
    
    if( slot_index >6 ) { //slot_index is for line in channels
        return 0x99;
    }      
    err = I2CWrite_Codec_AIC3204( 28, slot_index << 5);
    
    return err;    
    
}
*/

