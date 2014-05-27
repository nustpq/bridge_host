/* ----------------------------------------------------------------------------
 *         ATMEL Microcontroller Software Support 
 * ----------------------------------------------------------------------------
 * Copyright (c) 2008, Atmel Corporation
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the disclaimer below.
 *
 * Atmel's name may not be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * DISCLAIMER: THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
 * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * ----------------------------------------------------------------------------
 */

//------------------------------------------------------------------------------
//         Headers
//------------------------------------------------------------------------------


#include <bsp.h>
#include "spi.h"
#include <timer.h>

static const Pin spi_pins[] = { PINS_SPI0, PIN_SPI0_NPCS3 };

OS_EVENT * SPI_Sem; //sem for TWI




AT91PS_SPI spi_fpga = AT91C_BASE_SPI0 ;



//------------------------------------------------------------------------------
//         Exported functions
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//// Enables a SPI peripheral
//// \param spi  Pointer to an AT91S_SPI instance.
//------------------------------------------------------------------------------
void SPI_Enable(AT91S_SPI *spi)
{
    spi->SPI_CR = AT91C_SPI_SPIEN;
}

//------------------------------------------------------------------------------
//// Disables a SPI peripheral.
//// \param spi  Pointer to an AT91S_SPI instance.
//------------------------------------------------------------------------------
void SPI_Disable(AT91S_SPI *spi)
{
    spi->SPI_CR = AT91C_SPI_SPIDIS;
}

//------------------------------------------------------------------------------
//// Configures a SPI peripheral as specified. The configuration can be computed
//// using several macros (see "SPI configuration macros") and the constants
//// defined in LibV3 (AT91C_SPI_*).
//// \param spi  Pointer to an AT91S_SPI instance.
//// \param id  Peripheral ID of the SPI.
//// \param configuration  Value of the SPI configuration register.
//------------------------------------------------------------------------------
void SPI_Configure(AT91S_SPI *spi,
                          unsigned int id,
                          unsigned int configuration)
{
    AT91C_BASE_PMC->PMC_PCER = 1 << id;  
    spi->SPI_CR = AT91C_SPI_SPIDIS;
    // Execute a software reset of the SPI twice
    spi->SPI_CR = AT91C_SPI_SWRST;
    spi->SPI_CR = AT91C_SPI_SWRST;
    spi->SPI_MR = configuration;
}

//------------------------------------------------------------------------------
//// Configures a chip select of a SPI peripheral. The chip select configuration
//// is computed using the definition provided by the LibV3 (AT91C_SPI_*).
//// \param spi  Pointer to an AT91S_SPI instance.
//// \param npcs  Chip select to configure (1, 2, 3 or 4).
//// \param configuration  Desired chip select configuration.
//------------------------------------------------------------------------------
void SPI_ConfigureNPCS(AT91S_SPI *spi,
                              unsigned int npcs,
                              unsigned int configuration)
{
    spi->SPI_CSR[npcs] = configuration;
}

//------------------------------------------------------------------------------
//// Sends data through a SPI peripheral. If the SPI is configured to use a fixed
//// peripheral select, the npcs value is meaningless. Otherwise, it identifies
//// the component which shall be addressed.
//// \param spi  Pointer to an AT91S_SPI instance.
//// \param npcs  Chip select of the component to address (1, 2, 3 or 4).
//// \param data  Word of data to send.
//------------------------------------------------------------------------------
void SPI_Write(AT91S_SPI *spi, unsigned int npcs, unsigned short data)
{
    unsigned char  err;
    
    OSSemPend( SPI_Sem, 0, &err );
    
    // Discard contents of RDR register
    //volatile unsigned int discard = spi->SPI_RDR;

    // Send data
    while ((spi->SPI_SR & AT91C_SPI_TXEMPTY) == 0);
    spi->SPI_TDR = data | SPI_PCS(npcs);
    while ((spi->SPI_SR & AT91C_SPI_TDRE) == 0);
    
    OSSemPost( SPI_Sem );
      
}

//------------------------------------------------------------------------------
///// Sends the contents of buffer through a SPI peripheral, using the PDC to
///// take care of the transfer.
///// \param spi  Pointer to an AT91S_SPI instance.
///// \param buffer  Data buffer to send.
///// \param length  Length of the data buffer.
//------------------------------------------------------------------------------
unsigned char SPI_WriteBuffer(AT91S_SPI *spi,
                                     void *buffer,
                                     unsigned int length)
{
#if !defined(CHIP_SPI_DMA)
    // Check if first bank is free
    if (spi->SPI_TCR == 0) {

        spi->SPI_TPR = (unsigned int) buffer;
        spi->SPI_TCR = length;
        spi->SPI_PTCR = AT91C_PDC_TXTEN;
        return 1;
    }
    // Check if second bank is free
    else if (spi->SPI_TNCR == 0) {

        spi->SPI_TNPR = (unsigned int) buffer;
        spi->SPI_TNCR = length;
        return 1;
    }
#endif      
    // No free banks
    return 0;
}

//------------------------------------------------------------------------------
//// Returns 1 if there is no pending write operation on the SPI; otherwise
//// returns 0.
//// \param pSpi  Pointer to an AT91S_SPI instance.
//------------------------------------------------------------------------------
unsigned char SPI_IsFinished(AT91S_SPI *pSpi)
{
    return ((pSpi->SPI_SR & AT91C_SPI_TXEMPTY) != 0);
}

//------------------------------------------------------------------------------
//// Reads and returns the last word of data received by a SPI peripheral. This
//// method must be called after a successful SPI_Write call.
//// \param spi  Pointer to an AT91S_SPI instance.
//------------------------------------------------------------------------------
unsigned short SPI_Read(AT91S_SPI *spi)
{
    unsigned char  err;
    unsigned short data;
    
    OSSemPend( SPI_Sem, 0, &err );
    
    while ((spi->SPI_SR & AT91C_SPI_RDRF) == 0);
    //must add a delay, related to SPI seed  ? 
    delay_us(100);    
    data = spi->SPI_RDR & 0xFFFF;
    
    OSSemPost( SPI_Sem );
     
    return data;
}

//------------------------------------------------------------------------------
//// Reads data from a SPI peripheral until the provided buffer is filled. This
//// method does NOT need to be called after SPI_Write or SPI_WriteBuffer.
//// \param spi  Pointer to an AT91S_SPI instance.
//// \param buffer  Data buffer to store incoming bytes.
//// \param length  Length in bytes of the data buffer.
//------------------------------------------------------------------------------
unsigned char SPI_ReadBuffer(AT91S_SPI *spi,
                                    void *buffer,
                                    unsigned int length)
{
#if !defined(CHIP_SPI_DMA)
    // Check if the first bank is free
    if (spi->SPI_RCR == 0) {

        spi->SPI_RPR = (unsigned int) buffer;
        spi->SPI_RCR = length;
        spi->SPI_PTCR = AT91C_PDC_RXTEN;
        return 1;
    }
    // Check if second bank is free
    else if (spi->SPI_RNCR == 0) {

        spi->SPI_RNPR = (unsigned int) buffer;
        spi->SPI_RNCR = length;
        return 1;
    }
#endif
    // No free bank
    return 0;
}


//return 0 if write succeed
//return 1 if write failed
unsigned char SPI_WriteBuffer_API(  void *buffer,  unsigned int length)
{
    unsigned char state;
    unsigned char err;
    unsigned int  couter = 0 ;
    
    OSSemPend( SPI_Sem, 0, &err );
     
    state = SPI_WriteBuffer( spi_fpga, buffer, length );
    if( state == 1 ) {
        while( ! SPI_IsFinished( spi_fpga ) ) {
            OSTimeDly(1);
            if( couter++ > 2000 ) { //timeout : 2s
                state = 0 ;
                break;
            }
        }        
    }    
    
    OSSemPost( SPI_Sem ); 
    
    return (state == 0) ;
    
}


void SPI_Initialize( AT91S_SPI *spi, unsigned int npcs, unsigned int spi_clk, unsigned int mck )
{
    unsigned int clk ;
    
    clk = mck / spi_clk ;    
    if( clk>255 ){      
        clk = 255;
    }
    
    //ASSERT(clk>0, "-F- Invalid SPI clock parameters\n\r");
    SPI_Sem  = OSSemCreate(1); 
    
    PIO_Configure(spi_pins, PIO_LISTSIZE(spi_pins) );  
    SPI_Configure(spi, AT91C_ID_SPI0,  AT91C_SPI_MSTR | AT91C_SPI_MODFDIS |(7 << 16)  )  ;     
    SPI_Enable(spi);
   
    SPI_ConfigureNPCS(spi, npcs,  AT91C_SPI_CSAAT|AT91C_SPI_BITS_8|AT91C_SPI_CPOL|(clk << 8)|(200<16) )  ;

     
   
} 

void SPI_Init(  unsigned int spi_clk )
{
    
   SPI_Initialize( spi_fpga, NPCS_FPGA, spi_clk, MCK ) ;   // Configure SPI   
  
}



unsigned char Select_FPGA_Channel( unsigned int channles )
{      
 
    unsigned char state;    
    
    state = SPI_WriteBuffer_API( (unsigned char *)&channles, 4);     
  
    
    return state ;
    
}

