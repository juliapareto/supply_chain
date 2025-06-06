/*
  Upload Data to IoT Server ThingSpeak (https://thingspeak.com/):
  Support Devices: LG01 
  
  Example sketch showing how to get data from remote LoRa node, 
  Then send the value to IoT Server

  It is designed to work with the other sketch dht11_client. 

  modified 24 11 2016
  by Edwin Chen <support@dragino.com>
  Dragino Technology Co., Limited
*/

#include <SPI.h>
#include <RH_RF95.h>
#include <Console.h>
#include "ThingSpeak.h"
#include "YunClient.h"
YunClient client;
RH_RF95 rf95;

//If you use Dragino IoT Mesh Firmware, uncomment below lines.
//For product: LG01. 
#define BAUDRATE 115200

// PRODUCT 1 : 2864984 57X7LQ10OYB7LA9B
// PRODUCT 2 : 2974057 DTPDPQUDLUL1QT34
// PRODUCT 3 : 2974062 9853DOAQLNPSDDCQ

unsigned long myChannelNumber = 2864984;
const char * myWriteAPIKey = "57X7LQ10OYB7LA9B";
uint16_t crcdata = 0;
uint16_t recCRCData = 0;
float frequency = 868.0;

void setup()
{
    Bridge.begin(BAUDRATE);
    //Console.begin();// Don't use Console here, since it is conflict with the ThinkSpeak library. 

    ThingSpeak.begin(client);
    
    if (!rf95.init())
        //Console.println("init failed");
    ;
    // Setup ISM frequency
    rf95.setFrequency(frequency);
    // Setup Power,dBm
    rf95.setTxPower(13);
    
    //Console.println("Start Listening ");
}

uint16_t calcByte(uint16_t crc, uint8_t b)
{
    uint32_t i;
    crc = crc ^ (uint32_t)b << 8;
  
    for ( i = 0; i < 8; i++)
    {
      if ((crc & 0x8000) == 0x8000)
        crc = crc << 1 ^ 0x1021;
      else
        crc = crc << 1;
    }
    return crc & 0xffff;
}

uint16_t CRC16(uint8_t *pBuffer, uint32_t length)
{
    uint16_t wCRC16 = 0;
    uint32_t i;
    if (( pBuffer == 0 ) || ( length == 0 ))
    {
        return 0;
    }
    for ( i = 0; i < length; i++)
    {
        wCRC16 = calcByte(wCRC16, pBuffer[i]);
    }
    return wCRC16;
}

uint16_t recdata( unsigned char* recbuf, int Length)
{
    crcdata = CRC16(recbuf, Length - 2); //Get CRC code
    recCRCData = recbuf[Length - 1]; //Calculate CRC Data
    recCRCData = recCRCData << 8; //
    recCRCData |= recbuf[Length - 2];
}
void loop()
{

    if (rf95.waitAvailableTimeout(5000))// Listen Data from LoRa Node
    {
        uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];//receive data buffer
        uint8_t len = sizeof(buf);//data buffer length
        if (rf95.recv(buf, &len))//Check if there is incoming data
        {
            recdata( buf, len);
            if(crcdata == recCRCData) //Check if CRC is correct
            { 
                //Console.println("Get Data from LoRa Node");
                if(buf[0] == 1||buf[1] == 1||buf[2] ==1) //Check if the ID match the LoRa Node ID
                {
                    uint8_t data[] = "   Server ACK";//Reply 
                    data[0] = buf[0];
                    data[1] = buf[1];
                    data[2] = buf[2];
                    rf95.send(data, sizeof(data));// Send Reply to LoRa Node
                    rf95.waitPacketSent();
                    //int newData[7] = {0, 0, 0, 0, 0, 0, 0}; //Store Sensor Data here
                    //for (int i = 0; i < 7; i++)
                    //{
                    //    newData[i] = buf[i + 3];
                    //}
                    float h = 0.0;
                    float t = 0.0;
                    float p = 0.0;
                    float lati = 0.0;
                    float lon = 0.0;
                    
                    memcpy(&h, &buf[3], sizeof(float));
                    memcpy(&t, &buf[7], sizeof(float));
                    memcpy(&p, &buf[11], sizeof(float));
                    memcpy(&lati, &buf[16], sizeof(float));    // 
                    memcpy(&lon, &buf[20], sizeof(float));     // 
                    float f = buf[15];
                    
                    ThingSpeak.setField(2,h); // 
                    ThingSpeak.setField(1,t);
                    ThingSpeak.setField(3,p);
                    ThingSpeak.setField(4,f);
                    ThingSpeak.setField(5, lati);
                    ThingSpeak.setField(6, lon);
                    ThingSpeak.writeFields(myChannelNumber, myWriteAPIKey);   // Send Data to IoT Server.
                }
            }       
         }
         else
         {
              //Console.println("recv failed");
              ;
          }
     }
}
