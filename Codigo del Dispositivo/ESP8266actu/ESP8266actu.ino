//Incluir librería
#include <Time.h>
#include <TimeLib.h>
#include "conectt.h"
#include <ESP8266WiFi.h>
#define PITIDO 1
#define ENTRA_SEN 3
#define ENTRA_PUL 2
bool inp = 0;
String device = "tarjeta1";
int hora = 0, minuto = 0, dia = 0, mes = 0, aux_minuto = 0, cont = 0; // Variables para enviar el registro de los datos
int dayAct = 0, yearAct = 2021, hourAct = 0, segAct = 0, minAct = 0;// Variables que manejan el tiempo y fecha del dispositivo
String monthAct;// Variable de tipo string que ayuda a manejar la fecha del dispositivo
String fecha;// Variable para sincronizar la fecha y hora del dispositivo
int j = 0; //Variable para recorrer los valores que se enviaran a la página web
int registro[5][10];// Matriz que llevara el registro del programa
void setup() {
  conectaWifi(); // Incluimos la Función conectaWifi() creada por el estudiante
  pinMode(PITIDO, OUTPUT);     // Initialise the LED_BUILTIN pin as an output
  pinMode(ENTRA_SEN, INPUT);
  pinMode(ENTRA_PUL, INPUT);
  setTime(hourAct, minAct, segAct, dayAct, 01, yearAct ); // Establecemos los valores del tiempo para el dispositivo
}//Fin del void setup()
void loop() {
  inp = digitalRead(ENTRA_SEN); // Leemos el valor del sensor de distancia
  digitalRead(ENTRA_PUL);// Leemos el valor del buton que ayuda a enviar los datos al servidor
  //  delay(200);// Leemos el valor del sensor de distancia
  hora = hour();//Asignamos el valor de la función hour() a la variable denominada "hora"
  minuto = minute();//Asignamos el valor de la función minute() a la variable denominada "minuto"
  dia = day();//Asignamos el valor de la función day() a la variable denominada "dia"
  mes = month();//Asignamos el valor de la función day() a la variable denominada "mes"
  if (hora != aux_minuto) {//If que lleva el control del tiempo que ha transurrido al usar el dispositivo
    for (int i = 0; i < 5; i++) {// Bucle for el cual ayuda a almacenar los valores dentro de la matriz
      if (i == 0) {
        registro[i][j] = cont;// Almacena el valor del número de veces que se ha llevado la mano a la cara
      }
      if (i == 1) {
        registro[i][j] = hora;// Almacena el valor de la hora en que se ha llevado la mano a la cara
      }
      if (i == 2) {
        registro[i][j] = minuto;// Almacena el valor del minuto en que se ha llevado la mano a la cara
      }
      if (i == 3) {
        registro[i][j] = dia;// Almacena el valor del día en el cual se hace uso del dispositivo
      }
      if (i == 4) {
        registro[i][j] = mes;// Almacena el valor del mes en el cual se hace uso del dispositivo
      }
    }// Fin del Bucle For
    j++;// Incrementa el valor de "j"
    aux_minuto = hora ;// Asignamos el valor de la variable minuto a nuestra variable aux_minuto

    for (int k = 0; k < 10; k++)// Bucle for que ayudara a recorrer las filas de la matriz llamada "registro"
    {
      for (int i = 0; i < 5; i++)// Bucle for que ayudara a recorrer las columnas de la matriz llamada "registro"
      {
        //        Serial.print(registro[i][k]); // Se imprime en el puerto Serial el valor correpondiente a la matriz
        //        Serial.print(" ");
      }
      //      Serial.print ('\n');// Salto de Línea
    }// Fin del Bucle For
  }// Fin del If
  if (inp == 0)// Si el valor obtenido del sensor es mayor a 300 ingresa al if
  {
    cont++;// Aumenta el contador para indicar el numero de veces que se ha llevado las manos al rostro
    while (inp == 0) {// Si el valor obtenido del sensor es mayor a 300 ingresa al if

      digitalWrite(PITIDO, HIGH);// Enviamos un nivel alto al buzzer
      delay(170);

      digitalWrite(PITIDO, LOW);// Enviamos un nivel bajo al buzzer
      delay(170);
      inp = digitalRead(ENTRA_SEN);// Leemos el valor del sensor para evitar aumentos innecesarios del contador
      delay(150);
    }
  }
  if (digitalRead(ENTRA_PUL) != 1) {// Pimera vefiricación para saber si el boton ha sido pulsado (creamos un antirebote)
    delay(50);
    if (digitalRead(ENTRA_PUL) != 1) {// Segunda vefiricación para saber si el boton ha sido pulsado, y seguidamente ingresa al If
      for (int q = 0; q < 10; q++)// Bucle for que nos ayudara a enviar los registros a la pagina web
      {
        //Instanciamos un cliente que se conectará al host
        WiFiClient client;

        //        Serial.printf("\n[Conectando a %s ...", host);

        //Intentamos conectarnos al servidor por el puerto estándar 80
        if (client.connect(host, 80))
        {
          //          Serial.println("Conectado]");
          //
          //          Serial.println("[Enviando una petición (Request)]");

          //Formato de envío de datos desde el módulo ESP8266 hacia el servidor (se debe cambiar la ruta SEGÚN su servidor local)
          client.print(String("GET /servidorproject/prueba_recibe.php?device_label=") + device + "&contador=" + String (registro[0][q]) + "&hora=" + String (registro[1][q]) +
                       "&minuto=" + String (registro[2][q]) + "&dia=" + String (registro[3][q]) + "&mes=" + String (registro[4][q])
                       + " HTTP/1.1\r\n" +  "Host: " + host + "\r\n" + "Connection: close\r\n" +  "\r\n" );
          //          Serial.println("[Response:]");

          while (client.connected())//Mientras la conexión se mantenga
          {
            if (client.available())//Si existen datos disponibles por recibir desde el servidor
            {
              String line = client.readStringUntil('\n');
              //              Serial.println(line);
              if ((line.substring(0, 4)).equals("Date"))// Si los datos recolectados es igual a "Date", ingresa al bucle if
              {
                fecha = line;// Recolectamos los valores de la línea que tiene la fecha y hora del localhost
              }
            }
          }
          //cuando se reciben todos los datos se desconecta del servidor
          client.stop();
          //          Serial.println("\n[Desconectado]");
          // De la línea 115 a la 120 relizamos la recolección de datos que serán enviados
          dayAct = (fecha.substring(11, 13)).toInt();
          monthAct = fecha.substring(14, 17);
          yearAct = (fecha.substring(18, 22)).toInt();
          hourAct = (fecha.substring(23, 25)).toInt();
          minAct = (fecha.substring(26, 28)).toInt();
          segAct = (fecha.substring(29, 34)).toInt();
          if (monthAct == "Jan") {
            monthAct = "01";
          }
          if (monthAct == "Feb") {
            monthAct = "02";
          }
          if (monthAct == "Mar") {
            monthAct = "03";
          }
          if (monthAct == "Apr") {
            monthAct = "04";
          }
          if (monthAct == "May") {
            monthAct = "05";
          }
          if (monthAct == "Jun") {
            monthAct = "06";
          }
          if (monthAct == "Jul") {
            monthAct = "07";
          }
          if (monthAct == "Aug") {
            monthAct = "08";
          }
          if (monthAct == "Sep") {
            monthAct = "09";
          }
          if (monthAct == "Oct") {
            monthAct = "10";
          }
          if (monthAct == "Nov") {
            monthAct = "11";
          }
          if (monthAct == "Dec") {
            monthAct = "12";
          }
          if (hourAct >= 20 || hourAct <= 24) {
            setTime(hourAct + 19, minAct, segAct, dayAct - 1, (monthAct).toInt(), yearAct );
          }
          else {
            setTime(hourAct - 5, minAct, segAct, dayAct, (monthAct).toInt(), yearAct );
          }
        }
        else
        {
          //          Serial.println("Conexión fallida!]");
          client.stop();
        }
      }
      //      Serial.print ('\n');
    }

  }
  delay(10);
}
