---
title: Descargar y usar sólo el ADB (Android Debug Bridge)
description: El ADB es una herramienta que nos permite comunicarnos con un dispositivo Android o emulador Android vía cable USB o incluso vía WiFi.
tags: android, adb
date: 2017-06-11 08:00
language: es
---

Ahora es posible descargarse sólo el ADB (Android Debug Bridge) de Android, tenemos una versión lite de tan solo 3.5 MB. Si no eres desarrollador de seguro te será interesante probarlo. 

__Aprenderás__

* Qué es el _Android Debug Bridge_
* Comandos básicos de ADB

## ¿Qué es el ADB?

Es una herramienta que nos permite comunicarnos con un dispositivo Android o emulador Android vía cable USB o incluso vía WiFi.

Con el ADB desde linea de comandos (terminal o consola) podemos ejecutar diferentes comandos para interactuar con nuestro dispositivo.

## ¿Qué comandos puedo utilizar?

Existen varios comandos que se pueden utilizar, algunos de los más útiles son los siguientes:

### Listar los dispositivos conectados

Este comando es básico para inicializar el ADB y además listar todos los dispositivos (o emuladores) conectados al computador.

```shell
adb devices
```

### Reiniciar el dipositivo

¿Tú Android tiene la opción de reiniciar? Puedes reiniciar el dispositivo conectado simplemente con el siguiente comando.

```shell
adb reboot
```

### Instalar aplicaciones

Si tenemos un archivo `.apk` en el computador y queremos instalarlo en un dispositivo, la forma más cómoda es sin duda usando el siguiente comando.

```shell
adb install ruta_del_apk
```

### Subir y bajar archivos

Si queremos copiar archivos del computador al dispositivo.

```shell
adb push ruta_computador ruta_dispositivo
```

Si queremos copiar archivos del dispositivo al computador.

```shell
adb pull ruta_dispositivo ruta_computador
```

### Grabar video del dispositivo

Desde la versión Android 4.4 (API level 19) se puede grabar la pantalla del dispositivo (sin audio) con un simple comando del ADB.

```shell
adb shell screenrecord /sdcard/mivideo.mp4
```

Se guardará en esa ruta el video en ese formato y nombre, se puede presionar `Control + C` para detener la grabación.

Es una de las muchas cosas que podemos hacer con el comando `shell`.

### Si tenemos varios dispositivos conectados

Los anteriores comandos funcionan así se sencillo si tenemos solo un dispositivo conectado (lo más común). Si tuviéramos más de un dispositivo conectado hay que especificar cual usar mediante su serial, eso se hace con el parámetro `-s`.

```shell
adb -s numero_serial comando
```

Tenemos una lista completa en la página oficial de desarrolladores Android:

* [developer.android.com/studio/command-line/adb.html](https://developer.android.com/studio/command-line/adb.html).

## Descargar

Si somos desarrolladores ya lo tenemos, esta herramienta se encuentra en la ubicación del Android SDK dentro de la carpeta `platform-tools`. Si no lo eres, antes teníamos que descargar todo el Android SDK estamos hablando de mínimo 400 MB (ni que decir de todo el pack con Android Studio que es más de 1.5 GB). Pero gracias a la publicación de [Elliott Hughes en Google+](https://plus.google.com/+ElliottHughes/posts/U3B6H3Sejvv) tenemos los enlaces de descarga directo para las diferentes plataformas.

* [Linux](https://dl.google.com/android/repository/platform-tools-latest-linux.zip)
* [Mac](https://dl.google.com/android/repository/platform-tools-latest-darwin.zip)
* [Windows](https://dl.google.com/android/repository/platform-tools-latest-windows.zip)
