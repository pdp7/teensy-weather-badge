/***************************************************************************
  This is a library for the BME280 humidity, temperature & pressure sensor

  Designed specifically to work with the Adafruit BME280 Breakout
  ----> http://www.adafruit.com/products/2650

  These sensors use I2C or SPI to communicate, 2 or 4 pins are required
  to interface.

  Adafruit invests time and resources providing this open source code,
  please support Adafruit andopen-source hardware by purchasing products
  from Adafruit!

  Written by Limor Fried & Kevin Townsend for Adafruit Industries.
  BSD license, all text above must be included in any redistribution
 ***************************************************************************/

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2

#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme; // I2C
//Adafruit_BME280 bme(BME_CS); // hardware SPI
//Adafruit_BME280 bme(BME_CS, BME_MOSI, BME_MISO,  BME_SCK);

void setup() {

  // by default, we'll generate the high voltage from the 3.3v line internally! (neat!)
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x32)
  // init done
  //display.display();
  //delay(2000);
  display.clearDisplay();

  
  Serial.begin(9600);
  Serial.println(F("BME280 test"));

  if (!bme.begin()) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }

  // text display tests
  

}

void loop() {
  float temp_c_float = bme.readTemperature();
  int temp_c = round( bme.readTemperature() );
  int temp_f = round( ( (temp_c_float * 9.0) / 5.0 ) + 32.0 );
  int humidity = round ( bme.readHumidity() );
  float hpa = bme.readPressure() / 100.0F;
  float alt = bme.readAltitude(SEALEVELPRESSURE_HPA);
  
  display.clearDisplay();
  display.setCursor(0, 0);
  display.setTextColor(WHITE);
  
  if( temp_f < 100) {
    display.setTextSize(3);
  } else {
    display.setTextSize(2);
  }
  display.print( temp_f );
  display.setTextSize(1);
  display.print("F ");
  display.setTextSize(2);
  display.print( temp_c );
  display.setTextSize(1);
  display.print("C ");
  display.setTextSize(2);
  display.print( humidity );
  display.setTextSize(1);
  display.print("%");

  display.setCursor(0, 25);
  display.print( hpa );
  display.setTextSize(1);
  display.print(" hPa ");
  
  display.print( alt );
  display.setTextSize(1);
  display.println(" m");
  
  display.display();
  
  delay(2000);
}
