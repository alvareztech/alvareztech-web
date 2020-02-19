---
title: Generar API key desde la consola de Google Cloud Platform
description: Conocer las versiones de Google Play Services que se pueden usar
tags: google cloud, android
date: 2017-05-08 08:00
language: es
---

**Aprenderás**

* Generar API key desde la consola de _Google Cloud Platform_
* Obtener API key de _Google Maps_ y _Google Places_

**Requisitos**

* Una cuenta Google

## Sitio

Ingresar a:

[console.cloud.google.com](https://console.cloud.google.com)

Y autenticarse con una cuenta Google.

## Crear proyecto

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew1.png?alt=media&token=3867cd91-4397-4c10-adcf-dc7f6b128913)

Colocar un nombre y Crear.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew2.png?alt=media&token=3c23b694-fb09-478a-98b8-36ef5347a97b)

Esperar a que termine la creación. Se puede un progreso en forma de campana en la parte superior derecha.

## Habilitar una API

Habilitaremos la API de Google Maps para Android.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew3.png?alt=media&token=74149936-5fdb-40dc-b1c7-f21b56696dff)

Presionamos habilitar API

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew4.png?alt=media&token=383bc95e-810a-4e40-9524-dc951e9fad3f)

Ahí podremos ver toda la gama de servicios que ofrece Google no solo para Android.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew5.png?alt=media&token=a13cbf4d-05ad-479e-b7c6-caa5d04e1c7f)

Detectamos la que queremos habilitar:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew6.png?alt=media&token=2053c8a5-de47-49a0-947a-71181a1980cc)

Seleccionamos y presionamos habilitar:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew8.png?alt=media&token=505c69b4-99df-4f65-b507-6a1802330c28)

## API Key

Para poder generar un API key vamos a la siguiente opción:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew9.png?alt=media&token=71875e50-5e99-4b58-a3af-1a2224ad64c0)

Presionamos crear credencial:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew10.png?alt=media&token=3b9ab837-4906-4080-afef-512dbc7febff)

Luego crear Clave:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew11.png?alt=media&token=e8e44efd-f42f-48c2-8008-470d40750849)

Y ahí tenemos el API key:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew12.png?alt=media&token=290908bf-53df-4d07-9d10-addbc65e0659)

Podemos copiarlo con la opción:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew13.png?alt=media&token=d8c4c87a-7796-40f0-894f-dd5a33870a67)

## Claves

Luego de cerrar la anterior ventana podemos notar que existe una lista de claves, si, podemos crear varias.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew14.png?alt=media&token=8e9724ee-3df8-4cd0-965c-273d6f687d42)

Y podemos acceder, editar el nombre, y lo más importante restringir el uso.

La API key que acabamos de generar no tiene ninguna restricción, es decir cualquiera que la tenga la puede usar en su aplicación web, móvil, etc. Esto obviamente no deberíamos dejarlo así cuando nuestra aplicación entre a producción y mucho peor con aquellas APIs con costo.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew18.png?alt=media&token=213a9a27-e71a-4eb0-af94-2dabfe83e032)

## Habilitar otra API

Ahora vamos a habilitar otra API, para este caso la API de _Google Places_ para Android.

Ingresamos al panel de control, y de nuevo a habilitar API.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew15.png?alt=media&token=0a64e177-f391-44aa-851b-4893afb0c8d2)

En la pantalla seleccionas la API que dijimos:

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew7.png?alt=media&token=37580525-f134-4c37-8079-ff7a71ca6acc)

Y luego habilitar como lo hicimos anteriormente.

![](https://firebasestorage.googleapis.com/v0/b/maksha-41f4f.appspot.com/o/labs%2Fobtener-apikey-consola-gcp%2Fnew17.png?alt=media&token=70feff9d-bff0-4453-a643-50b648cd57c7)

En resumen la misma API key que obtuvimos anteriormente ahora sirve para _Google Maps_ y _Google Places_. No necesitamos dos, solo una.

De esa manera puedes habilitar y obtener la o las API key desde la consola de _Google Cloud Platform_.
