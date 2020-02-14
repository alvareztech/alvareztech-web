---
title: Enviar notificaciones Android con Firebase Cloud Messaging
lang: es
tags: android, firebase
video.youTube: KTQ4d3ZUS8g
---

Tutorial de Firebase Cloud Messaging para enviar notificaciones a aplicaciones Android. Se hace uso de Firebase Notifications y peticiones REST a la API de FCM.

### Requisitos

* Android Studio 1.4 o posterior con Gradle
* Android 2.3 o superior que también tengan la app Google Play Store instalada o un emulador con Android 2.3 con las API de Google.

# Implementación
Luego de configurar Firebase en el proyecto en Android Studio, se debe colocar la siguiente dependencia en el **build.gradle** del módulo:

# Servicios
Se debe crear clases que extiendan o hereden de los siguientes servicios:

* `FirebaseMessagingService`
* `FirebaseInstanceIdService`

# Firebase Notifications

Se puede enviar notificaciones desde la sección de **Notifications** en la consola de Firebase.

* [console.firebase.google.com](https://console.firebase.google.com/) 

# Desde consola
Para enviar por petición REST Petición POST a:

```
https://fcm.googleapis.com/fcm/send
```

### Ejemplo de envío

**Header**

```
Content-Type:application/json
Authorization:key=KEY
```

**Body**

```json
{
  "to": "f94XHR9cA-Y:APA91bFJ-foRTaZz0q4jUqUcrNNoAV5sbflgJPlyS5XOrx9QtWWlPdzQfhAhLMgL5_kAVxBUcbfboyErEZ4vMVPKVpzsHfp0yAOJGHlyRMURbOLJrj1da1PC8kuHtdi8lMvnpVE6eVS2",
  "notification": {
     "title": "Noticia desde el servidor",
     "body": "Descripción de la noticia desde el servidor"
  },
  "data": {
     "titulo": "Este es el titular",
     "descripcion": "Aquí estará todo el contenido de la noticia"
  }
}
```

# Código
*  [Repositorio en GitHub](https://github.com/alvareztech/EjemploFCM) 
*  [Descargar en ZIP](https://github.com/alvareztech/EjemploFCM/archive/master.zip) 
