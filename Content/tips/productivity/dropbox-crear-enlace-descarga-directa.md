---
title: Crear enlaces de descarga directa para archivos en Dropbox
description: La API de OpenWeatherMap te permite entre otras cosas, obtener información del clima y pronosticos del tiempo de cualquier región del mundo.
tags: dropbox
date: 2017-06-02 08:00
lang: es
---

> Requires update (Images, description)

De la misma manera cuando estamos en la web o la aplicación de escritorio podemos compartir el archivo.

![](/content/images/2016/12/Screen_Shot_2016-12-20_at_17_24_42.png)

Dropbox generará el vínculo (enlace o link) y copiamos.

![](/content/images/2016/12/Screen_Shot_2016-12-20_at_17_25_38.png)

Devolviéndonos uno que tiene la siguiente apariencia:

```language
https://www.dropbox.com/s/ewb5fvxfcp3pphe/android-20162-5.pdf?dl=0
```

Le cambiamos `www` por `dl` y tenemos lo siguiente (incluso podemos quitar al final `?dl=0` pero no es requisito para que funcione)

```language
https://dl.dropbox.com/s/ewb5fvxfcp3pphe/android-20162-5.pdf
```

Obteniendo así en enlace de descarga directa:

* [https://dl.dropbox.com/s/ewb5fvxfcp3pphe/android-20162-5.pdf](https://dl.dropbox.com/s/ewb5fvxfcp3pphe/android-20162-5.pdf)

Puedes hacer [click aquí](https://www.dropbox.com/s/ewb5fvxfcp3pphe/android-20162-5.pdf?dl=0) para ver a donde nos llevaba el enlace inicial.
