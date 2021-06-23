#include <ESP8266WiFi.h>
//Parámetros de la red WiFi a conectarse
//char* es un pointer a una variable tipo char que usamos para indicar la dirección
//en memoria en la que comenzamos una cadena de caracteres
const char* ssid = " "; //Nombre de la red WiFi
const char* password = " ";//Contraseña de la red WiFi
const char* host = " "; //IP del PC (revisar con ipconfig)
void conectaWifi() {
  // put your setup code here, to run once:
//  Serial.begin(115200);
//  Serial.println();
//  Serial.printf("Conectando a %s", ssid);
  //Conectarse a WIFI
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) //verificamos que se conecte a la red seleccionada
  {
    delay(500);
//    Serial.print(".");
  }
  //Caso en el que se conectó exitosamente:
//  Serial.println("");
//  Serial.println("WiFi conectado");
}
