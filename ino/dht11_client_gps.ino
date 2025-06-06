/*
  Require Library: 
  https://github.com/dragino/RadioHead
  
  Upload Data to IoT Server ThingSpeak (https://thingspeak.com/):
  Support Devices: LoRa Shield + Arduino 
  
*/

#include <TinyGPSPlus.h>
#include <SoftwareSerial.h>
#include <RH_RF95.h>
#include <dht11.h>

////////////////////////////// Communication with Dragino //////////////////////////////
RH_RF95 rf95;
char node_id[3] = {1,1,1}; //LoRa End Node ID
float frequency = 868.0;
unsigned int count = 1;
unsigned long lastDisplayTime = 0;
const unsigned long displayInterval = 5000; // Delay between messages (in ms)

////////////////////////////// Sensors //////////////////////////////

    // Communication with GPS
    static const int RXPin = 4, TXPin = 3;
    static const uint32_t GPSBaud = 9600;
    float gps_lat = 0.0;
    float gps_lng = 0.0;
    TinyGPSPlus gps; // The TinyGPSPlus object
    // The serial connection to the GPS device
    SoftwareSerial gpsSerial(RXPin, TXPin);

    // Humidity and Temperature
    dht11 DHT11;
    #define dht_dpin A0 // PIN A0
    float humidity = 0.0;
    float temp = 0.0;

    // Flame sensor
    #define flame_sensor_pin A1
    bool measure2;


    // Photosensor
    #define photosensor_pin A2 
    float measure;

/////////////////////////////////////////////////////////////////////////

void setup()
{
    Serial.begin(9600); // Serial used only to read data on the PC

    // GPS startup
    gpsSerial.begin(GPSBaud); 

    // LoRa Startup
    Serial.println("Initializing LoRa...");
    if (!rf95.init()) {
        Serial.println("LoRa init failed");
    } else {
        Serial.println("LoRa initialized");
        // Setup ISM frequency and LoRa ID
        rf95.setFrequency(frequency);
        rf95.setTxPower(13);
        Serial.print("LoRa End Node ID: ");
        for (int i = 0; i < 3; i++) {
            Serial.print(node_id[i], HEX);
        }
        Serial.println();
        Serial.println();
        }
}


////////////////////// Data acquisition functions ///////////////////////////

    void ReadDHT() // Humidity and temperature
    {
        int chk = DHT11.read(dht_dpin);
        humidity = (float)DHT11.humidity;
        temp = (float)DHT11.temperature;
    }

    float getVoltage(int pin) // Voltage from the light sensor
    {
        int sensor_value;
        sensor_value = analogRead(pin);
        Serial.println(sensor_value * (5.0 / 1024.0));
        return sensor_value * (5.0 / 1024.0);
    }

    bool getBinary(int pin)
    {
        float m;
        bool flame;
        m = getVoltage(pin);
        if (m > 2) {
            flame = 0;
        }
        else flame = 1;
        return flame;
    }

    void getGPS() {
        Serial.print(F("Location: ")); 
        if (gps.location.isValid()) {
            gps_lat = gps.location.lat();
            gps_lng = gps.location.lng();
            Serial.print(gps_lat, 6);
            Serial.print(F(","));
            Serial.print(gps_lng, 6);
        } else {
            Serial.print(F("INVALID"));
            //gps_lat = 0.1;
            //gps_lng = 0.2;
        }

        Serial.print(F("  Date/Time: "));
        if (gps.date.isValid()) {
            Serial.print(gps.date.month());
            Serial.print(F("/"));
            Serial.print(gps.date.day());
            Serial.print(F("/"));
            Serial.print(gps.date.year());
        } else {
            Serial.print(F("INVALID"));
        }

        Serial.print(F(" "));
        if (gps.time.isValid()) {
            if (gps.time.hour() < 10) Serial.print(F("0"));
            Serial.print(gps.time.hour());
            Serial.print(F(":"));
            if (gps.time.minute() < 10) Serial.print(F("0"));
            Serial.print(gps.time.minute());
            Serial.print(F(":"));
            if (gps.time.second() < 10) Serial.print(F("0"));
            Serial.print(gps.time.second());
            Serial.print(F("."));
            if (gps.time.centisecond() < 10) Serial.print(F("0"));
            Serial.print(gps.time.centisecond());
        } else {
            Serial.print(F("INVALID"));
        }

        Serial.println();
    }

////////////////////// Transmission bytes ///////////////////////////
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

    uint16_t CRC16(uint8_t *pBuffer,uint32_t length)
    {
        uint16_t wCRC16=0;
        uint32_t i;
        if (( pBuffer==0 )||( length==0 ))
        {
        return 0;
        }
        for ( i = 0; i < length; i++)
        { 
        wCRC16 = calcByte(wCRC16, pBuffer[i]);
        }
        return wCRC16;
    }

/////////////////////////////////////////////////////////////////////////

void loop()
{   
    while (gpsSerial.available()) {
    gps.encode(gpsSerial.read());
    }

    char data[50] = {0} ;
    int dataLength = 24; // Payload Length
    data[0] = node_id[0] ;
    data[1] = node_id[1] ;
    data[2] = node_id[2] ;

    gps_lat = 0.5; // Debugging value
    gps_lng = 0.4;

    if (millis() - lastDisplayTime >= displayInterval) {
        lastDisplayTime = millis();
        //float measure;
        //bool measure2;

        
        Serial.print("###########    ");
        Serial.print("COUNT=");
        Serial.print(count);
        Serial.println("    ###########");
        count++;

        getGPS();
        measure = getVoltage(photosensor_pin);
        measure2 = getBinary(flame_sensor_pin);
        ReadDHT();
        
        memcpy(&data[3], &humidity, sizeof(float));
        memcpy(&data[7], &temp, sizeof(float));
        memcpy(&data[11], &measure, sizeof(float));
        data[15] = measure2; // flame_sensor voltage
        memcpy(&data[16], &gps_lat, sizeof(float));
        memcpy(&data[20], &gps_lng, sizeof(float));

        Serial.print("Current humidity = ");
        Serial.print(humidity, 2);
        Serial.print("%  ");
        Serial.print("temperature = ");
        Serial.print(temp, 2);//Show temperature
        Serial.println("C  ");
        Serial.print("Measured light voltage = ");
        Serial.print(measure);
        Serial.println("V");
        Serial.print("Flame indicator = ");
        Serial.print(measure2);
        Serial.println(" ");

        uint16_t crcData = CRC16((uint8_t*)data,dataLength);    //get CRC DATA
        Serial.print("Data to be sent(without CRC): ");
        int i;
        for(i = 0;i < dataLength; i++)
        {
            Serial.print(data[i],HEX);
            Serial.print(" ");
        }
        Serial.println();
            
        unsigned char sendBuf[50]={0};

        for(i = 0;i < dataLength;i++)
        {
            sendBuf[i] = data[i] ;
        }
        
        sendBuf[dataLength] = (unsigned char)crcData; // Add CRC to LoRa Data
        sendBuf[dataLength+1] = (unsigned char)(crcData>>8); // Add CRC to LoRa Data

        Serial.print("Data to be sent(with CRC):    ");
        for(i = 0;i < (dataLength +2); i++)
        {
            Serial.print(sendBuf[i],HEX);
            Serial.print(" ");
        }
        Serial.println();

        rf95.send(sendBuf, dataLength+2);//Send LoRa Data
    
    /*
    uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];//Reply data array
    uint8_t len = sizeof(buf);//reply data length

    if (rf95.waitAvailableTimeout(3000))// Check If there is reply in 3 seconds.
    {
        // Should be a reply message for us now   
        if (rf95.recv(buf, &len))//check if reply message is correct
       {
            if(buf[0] == node_id[0] && buf[1] == node_id[2] && buf[2] == node_id[2] ) // Check if reply message has the our node ID
           {
               Serial.print("Got Reply from Gateway: ");//print reply
               Serial.println((char*)buf);
              
               delay(400);
               //Serial.print("RSSI: ");  // print RSSI
               //Serial.println(rf95.lastRssi(), DEC);        
           }    
        }
        else
        {
           Serial.println("recv failed");//
           rf95.send(sendBuf, strlen((char*)sendBuf));//resend if no reply
        }
    }
    else
    {
        Serial.println("No reply, is LoRa gateway running?");//No signal reply
        rf95.send(sendBuf, strlen((char*)sendBuf));//resend data
    }*/
    //delay(30000); // Send sensor data every 30 seconds
    Serial.println("");
}
}



