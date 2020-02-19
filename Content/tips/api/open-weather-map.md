---
title: Como usar la OpenWeatherMap API
description: La API de OpenWeatherMap te permite entre otras cosas, obtener información del clima y pronosticos del tiempo de cualquier región del mundo.
tags: api
date: 2017-06-03 08:00
language: es
---

La API de OpenWeatherMap te permite entre otras cosas, obtener información del clima y pronosticos del tiempo de cualquier región del mundo.

* Página Principal: [openweathermap.org](https://openweathermap.org)
* Página de la API: [openweathermap.org/api](https://openweathermap.org/api)

## API Key

Para poder usar la API es necesario generar una API key, se puede obtener de forma gratuita aquí:

* [openweathermap.org/appid](https://openweathermap.org/appid)

Ejemplo de una API key:

```
5ea80a3a5da74b767f1e1bd67efdadb8
```


## Ejemplos de llamadas a la API

**Clima de una ciudad por su ID**

```
https://api.openweathermap.org/data/2.5/weather?id=3911925&appid=API_KEY
```
Donde `3911925` es el identificador de la ciudad de La Paz en Bolivia.

[Ejemplo de respuesta](https://gist.github.com/alvareztech/c2adf82d5081bb5708a3b6764f1b2cc9)

**Clima de un grupo de ciudades por IDs separado por comas**

```
https://api.openweathermap.org/data/2.5/group?id=3911925,3919968&&appid=API_KEY
```

**Pronóstico por días**

```
https://api.openweathermap.org/data/2.5/forecast/daily?q=94043&mode=json&units=metric&cnt=7&appid=API_KEY
```

## Parámetros

Parámetros opcionales (se adicionan a la url con &)

- `lang=es` (textos en español)
- `units=metric` (temperatura en grados centígrados)

## Recursos

* Lista de ciudades: [drive.google.com/file/d/0B5wCprFP-EBZb1k0MTQ0eElmYms/view?usp=sharing](https://drive.google.com/file/d/0B5wCprFP-EBZb1k0MTQ0eElmYms/view?usp=sharing)
* Iconos de estados del clima: [openweathermap.org/weather-conditions](http://openweathermap.org/weather-conditions)
