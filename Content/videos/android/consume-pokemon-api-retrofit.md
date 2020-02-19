---
title: Consume an API, Web Service with Retrofit on Android
description: Tutorial to create a Pokédex app from scratch.
tags: android, retrofit, java, glide
video.youTube: xQn8u4Htib4
---

Tutorial to create a Pokédex app from scratch. The app uses Retrofit library to consume an API on Android. In addition to using Glide to download images.

__What you'll learn__

* Consume an API or Web Service with Retrofit
* Use a `RecyclerView` component in grid mode
* Handle `RecyclerView` events

__What you'll need__

* Know how to obtain images with Glide

## Introduction

### API (0:22)

* [pokeapi.co](https://pokeapi.co/)

### Google Chrome Extension (1:10)

* [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)

### Images (1:47)

URL to obtain the images of the pokemon by their number.

```http
https://pokeapi.co/media/sprites/pokemon/25.png
```

## Retrofit

2:02: Dependency to use *Retrofit* in the module `build.gradle`

```groovy
compile 'com.squareup.retrofit2:retrofit:2.1.0'
```

More information and Retrofit documentation.

* [Website](http://square.github.io/retrofit/)

## The Code
The complete code:

* [Repository](https://github.com/alvareztech/Pokedex)
* [Download](https://github.com/alvareztech/Pokedex/archive/master.zip)
