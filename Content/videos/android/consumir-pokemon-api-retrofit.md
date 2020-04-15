---
title: Consumir una API, WebService con Retrofit en Android
description: Tutorial para crear una aplicación Pokédex desde cero.
tags: android, retrofit, java, glide
video.youTube: xQn8u4Htib4
language: es
image: banners/consumir-api-retrofit-pokedex.png
---

Tutorial para crear una aplicación Pokédex desde cero. La aplicación usa *Retrofit* para consumir una API en Android. Además de hacer uso de *Glide* para descargar imágenes.

__Aprenderás__

* Consumir una API o Web Service con Retrofit
* Usar un `RecyclerView` en forma de Grid
* Manejar eventos del `RecyclerView`

__Requisitos__

* [Obtener imágenes con _Glide_](/videos/android/descargar-imagenes-glide/)

## Introduction

__API (0:22)__

* [pokeapi.co](https://pokeapi.co/)

__Google Chrome Extension (1:10)__

* [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)

### Images (1:47)

URL para obtener las imágenes de los pókemon por su número.

```http
̶h̶t̶t̶p̶s̶:̶/̶/̶p̶o̶k̶e̶a̶p̶i̶.̶c̶o̶/̶m̶e̶d̶i̶a̶/̶s̶p̶r̶i̶t̶e̶s̶/̶p̶o̶k̶e̶m̶o̶n̶/̶2̶5̶.̶p̶n̶g̶
```

__Actualización:__ La anterior URL dejo de funcionar pero puedes obtener directamente la imagen desde el repositorio así:

```http
https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png
```

El pokémon número 25 es Pikachu.

![Pikachu](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png)

## Retrofit

[2:02] Dependencia para usar *Retrofit* en el `build.gradle` del módulo

```groovy
c̶o̶m̶p̶i̶l̶e̶ ̶'̶c̶o̶m̶.̶s̶q̶u̶a̶r̶e̶u̶p̶.̶r̶e̶t̶r̶o̶f̶i̶t̶2̶:̶r̶e̶t̶r̶o̶f̶i̶t̶:̶2̶.̶1̶.̶0̶'̶
```

__Actualización:__ `compile` esta _deprecated_ y existen nuevas versiones.

```groovy
implementation 'com.squareup.retrofit2:retrofit:2.7.1'
```

Puedes ver los últimos releases, más información y documentación de _Retrofit_:

* [Website](http://square.github.io/retrofit/)
* [Releases](https://github.com/square/retrofit/releases)

## El código

Código completo de la aplicación:

* [Repository](https://github.com/alvareztech/Pokedex)
* [Download](https://github.com/alvareztech/Pokedex/archive/master.zip)

> El __branch master__ fue actualizado con la migración a AndroidX y la actualización de los gradle tools. Si tu quieres ver exactamente la misma versión del video, esta en el __branch video__.
