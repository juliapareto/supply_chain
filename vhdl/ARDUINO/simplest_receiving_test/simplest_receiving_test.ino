
void setup() {
  // Start debug serial monitor
  Serial.begin(9600);

  delay(1000);
  Serial.println("Starting UART loopback test with FPGA...");
  delay(3000);
  
  // Send test bytes
  byte testData[] = {0xAA,0x55,0x05,0x50,0x10,0x01,0x80,0x08}; //, 0x55, 0xF0, 0x0F, 0xA5
  int numBytes = sizeof(testData);
  byte toSend = 0;
  for (int i = 0; i < numBytes; i++) {
    toSend = testData[i];
    //fpgaSerial.write(toSend);
    //Serial.print("Sent: 0x");
    //Serial.println(toSend, HEX);
    Serial.write(testData[i]);
    
    delay(1000);  // Allow some time for FPGA to process and respond
  }

  Serial.println("Now wait in loop to receive...");
  delay(3000);
    //Serial1.print(9);
    // Wait for response
    while (1){  // Wait for response
      if(Serial.available() != 0){
        byte received = Serial.read();
        Serial.print("Received: 0x");
        Serial.println(received, HEX);
      }
    }


}

void loop() {
  // put your main code here, to run repeatedly:

}
