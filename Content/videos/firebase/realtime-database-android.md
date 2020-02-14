---
title: Firebase: Database Realtime para Android
lang: es
tags: android, firebase
video.youTube: peQ9ATXwPwg
---

Tutorial para la construcción de una aplicación Android para modificar y obtener actualizaciones en tiempo real de datos con Firebase.

## Dependencia

Adición de la dependencia (0.38)

```groovy
compile 'com.google.firebase:firebase-database:9.0.1'
```

> A la fecha el número de la versión puede ser mayor.

## Referencias
Referencias para acceso a la base de datos (2.39)

```java
DatabaseReference ref = FirebaseDatabase.getInstance().getReference();
DatabaseReference mensajeRef = ref.child("mensaje");
```

## Cambiar valor

Modificar valor del mensaje al presionar el botón (2.54)

```java
String mensaje = mensajeEditText.getText().toString();  
mensajeRef.setValue(mensaje);  
mensajeEditText.setText("");
```

## Listener

Adicionar oyente de cambios a mensaje (3.25)

```java
mensajeRef.addValueEventListener(new ValueEventListener() {  
    @Override
    public void onDataChange(DataSnapshot dataSnapshot) {
        String value = dataSnapshot.getValue(String.class);
        mensajeTextView.setText(value);
    }

    @Override
    public void onCancelled(DatabaseError databaseError) {

    }
});
```

## Código

> Código actualizado Nov 30, 2018

* [Repositorio GitHub](https://github.com/alvareztech/AndroidFirebaseRealtimeDatabaseSample)
* [Descargar ZIP](https://github.com/alvareztech/AndroidFirebaseRealtimeDatabaseSample/archive/master.zip)
* [Repositorio GitHub](https://github.com/alvareztech/AndroidFirebaseRealtimeDatabaseSample/tree/youtube) (versión anterior/video)
* [Descargar ZIP](https://github.com/alvareztech/AndroidFirebaseRealtimeDatabaseSample/archive/youtube.zip) (versión anterior/video)

## Recursos

* [Documentación](https://firebase.google.com/docs/database/android/start/)
