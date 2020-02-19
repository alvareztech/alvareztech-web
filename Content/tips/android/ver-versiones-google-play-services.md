---
title: Conocer las versiones de Google Play Services que se pueden usar
description: Conocer las versiones de Google Play Services que se pueden usar
tags: android, android studio
date: 2017-05-18 08:00
language: es
---

Si quieres usar un servicio de _Google Play Services_ en Android es necesario que pongas la dependencia adecuada con la versión adecuada. Sin embargo en _Android Studio_ no se muestran que versiones exactamente podemos usar si bien no usaremos la última.

**Aprenderás**

* Donde se instala el _Google Play Services SDK_
* A reconocer versiones para utilizar

**Requisitos**

* Tener instalado _Google Play Services SDK_

## Ruta Android SDK

Todos las herramientas o complementos que descarguemos desde _Android Studio_ se colocan en la carpeta que contiene el SDK de Android.

Si no sabes donde se encuentra debes ir a la siguiente opción en Android Studio:

![SDK Manager](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fver-versiones-google-play-services%2Fsdk-manager.png?alt=media&token=93fc8c14-4fd1-4966-ba5d-e4139044e56b)

Ahí se muestra la opción que dice `Android SDK Location`.

![Android SDK](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fver-versiones-google-play-services%2Fandroid-sdk.png?alt=media&token=c8cc6605-4aca-457f-b559-97cd727d2779)

Ve a esa carpeta o directorio desde el explorador o desde la terminal.

## Ruta Google Play Services

Luego de ir a la ruta del SDK debemos ingresar a las siguientes carpetas:

```
/extras/google/m2repository/com/google/android/gms/play-services/
```

En donde puedes ver las siguientes carpetas que representan las carpetas:

![Versiones Google Play](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fver-versiones-google-play-services%2Fversiones-play-services.png?alt=media&token=2645ab52-6d77-4d95-8158-473a97a8e110)

## Escoger una versión

Si estamos desarrollando una aplicación que se publicará en _Google Play_, lo normal es que esa persona que descargue nuestra aplicación tenga conexión a Internet y por lo tanto tenga las últimas versiones de Google Play Services.

Sin embargo para realizar pruebas en el emulador, probar como funcionaba antes u otros casos podemos escoger diferentes versiones.

Colocamos la dependencia seguida de la versión de tres números que viste en el paso anterior:

![Dependencia](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fver-versiones-google-play-services%2Fdependecies.png?alt=media&token=090e0b3f-92c2-4907-ac08-1c0ff9328743)

Se recomienda usar específicamente que servicio usarás de todos los que proporciona _Google Play Services_.

## Releases

Ya puedes escoger las versiones exactas de _Google Play Services_. Para ver las novedades que presentan cada versión puedes ir a la página de Releases de _Google Play Services_:

* [Google Play Services Releases](https://developers.google.com/android/guides/releases)
