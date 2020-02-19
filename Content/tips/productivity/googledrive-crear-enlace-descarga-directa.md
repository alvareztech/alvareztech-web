---
title: Crear enlaces de descarga directa para archivos en Google Drive
description: La API de OpenWeatherMap te permite entre otras cosas, obtener información del clima y pronosticos del tiempo de cualquier región del mundo.
tags: google drive
date: 2017-06-11 08:00
language: es
---

Un pequeño *tip* para crear acceso directo a nuestros archivos alojados en **Google Drive**. Nos permitirá descargar directamente los archivos y sin pasar por sus páginas de descarga.

Muy útil si estamos compartiendo nuestros archivos a terceros.

Cabe mencionar que en algunos casos si nos sirve de mucho que estén dentro de la página de **Google Drive**, por ejemplo, apertura directa en la aplicación móvil (si el usuario la tiene instalada), opciones directas como guardar una copia en Google Drive o Dropbox (útil cuando el usuario esta logueado en el navegador), pero muchas otras solo queremos que el otro la tenga lo mas rápido posible.

__Aprenderás__

* Conocer como generar enlaces, links de descarga directos.

__Requisitos__

* Cuenta y archivo(s) en Google Drive.

## Compartir

Cuando compartimos un archivo desde la web de Google Drive o de manera similar en su aplicación de escritorio, este nos permite obtener un enlace.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fgoogledrive-crear-enlace-descarga-directa%2Fgd-1.jpg?alt=media&token=b4c12274-04d3-4d06-878b-014463071b1f)

Copiamos dicho enlace.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fgoogledrive-crear-enlace-descarga-directa%2Fgd-2.jpg?alt=media&token=3c393ccc-c8f1-490f-9213-f62899f77150)

Y este tiene la siguiente apariencia:

```language
https://drive.google.com/open?id=0B5wCprFP-EBZT2V0amFUbnpNOHM
```

Ahora simplemente tienes que cambiar lo que se muestra en el siguiente paso.

## El cambio

Nos interesa el valor del `id` y lo colocamos en la siguiente URL:

```language
https://drive.google.com/uc?export=download&id=EL_ID_AQUI
```

Quedando así:

```language
https://docs.google.com/uc?export=download&id=0B5wCprFP-EBZT2V0amFUbnpNOHM
```

Probando este último tenemos el enlace de descarga directa:

* [https://docs.google.com/uc?export=download&id=0B5wCprFP-EBZT2V0amFUbnpNOHM](https://docs.google.com/uc?export=download&id=0B5wCprFP-EBZT2V0amFUbnpNOHM)

Puedes hacer [click aquí](https://drive.google.com/open?id=0B5wCprFP-EBZT2V0amFUbnpNOHM) para ver a donde nos llevaba el enlace inicial.
