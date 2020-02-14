---
title: Consumir una API, WebService con Retrofit en Android
lang: es
tags: android, retrofit, java
video.youTube: xQn8u4Htib4
---

Tutorial para crear una aplicación Pokédex desde cero. La aplicación usa *Retrofit* para consumir una API en Android. Además de hacer uso de *Glide* para descargar imágenes.

### Aprenderás

* Consumir una API o Web Service con Retrofit
* Usar un `RecyclerView` en forma de Grid
* Manejar eventos del `RecyclerView`

### Requisitos

* Obtener imágenes con *Glide*

## Introduction

### API (0:22)
* [pokeapi.co](https://pokeapi.co/)

### Google Chrome Extension (1:10)
* [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)

### Images (1:47)

URL para obtener las imágenes de los pókemon por su número.

```
https://pokeapi.co/media/sprites/pokemon/25.png
```

## Retrofit

2:02 Dependencia para usar *Retrofit* en el `build.gradle` del módulo

```groovy
compile 'com.squareup.retrofit2:retrofit:2.1.0'
```

Más información y documentación de Retrofit:

* [Website](http://square.github.io/retrofit/)

## El código

Código completo de la aplicación:

* [GitHub repository](https://github.com/alvareztech/Pokedex)
* [Download ZIP](https://github.com/alvareztech/Pokedex/archive/master.zip)
