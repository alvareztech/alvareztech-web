---
title: Implementar Bottom Navigation View en Android para la navegación
description: Implementación de un Bottom Navigation View en una aplicación Android.
tags: android, material, jetpack, androidx
video.youTube: aTPwcWQIckw
date: 2016-10-22 08:00
language: es
---

Implementación de un `BottomNavigationView` en una aplicación Android.

> Ahora este componente es parte de _Jetpack_ y este tutorial se actualizó a _AndroidX_. 

## Dependencia

Adición de la dependencia (0.48)

```groovy
c̶o̶m̶p̶i̶l̶e̶ ̶'̶c̶o̶m̶.̶a̶n̶d̶r̶o̶i̶d̶.̶s̶u̶p̶p̶o̶r̶t̶:̶d̶e̶s̶i̶g̶n̶:̶2̶5̶.̶0̶.̶0̶'̶
```

```groovy
implementation 'com.google.android.material:material:1.1.0'
```

## Adicionando el componente

Adicionando el `BottomNavigationView` (1.08)

```
<com.google.android.material.bottomnavigation.BottomNavigationView
    android:id="@+id/bottomNavigationView"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_gravity="bottom"
    app:labelVisibilityMode="labeled"
    app:menu="@menu/menu_navigation" />
```

Video version (deprecated):

```xml
<̶a̶n̶d̶r̶o̶i̶d̶.̶s̶u̶p̶p̶o̶r̶t̶.̶d̶e̶s̶i̶g̶n̶.̶w̶i̶d̶g̶e̶t̶.̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶
     a̶n̶d̶r̶o̶i̶d̶:̶i̶d̶=̶"̶@̶+̶i̶d̶/̶b̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶"̶
     a̶n̶d̶r̶o̶i̶d̶:̶l̶a̶y̶o̶u̶t̶_̶w̶i̶d̶t̶h̶=̶"̶m̶a̶t̶c̶h̶_̶p̶a̶r̶e̶n̶t̶"̶
     a̶n̶d̶r̶o̶i̶d̶:̶l̶a̶y̶o̶u̶t̶_̶h̶e̶i̶g̶h̶t̶=̶"̶w̶r̶a̶p̶_̶c̶o̶n̶t̶e̶n̶t̶"̶ ̶/̶>̶
```

## Menú

Creación del menú (1.38)

`menu_navigation.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>  
<menu xmlns:android="http://schemas.android.com/apk/res/android">

    <item
        android:id="@+id/inicioItem"
        android:icon="@drawable/ic_home"
        android:title="@string/inicio" />

    <item
        android:id="@+id/buscarItem"
        android:icon="@drawable/ic_search"
        android:title="@string/buscar" />

    <item
        android:id="@+id/camaraItem"
        android:icon="@drawable/ic_camera_alt"
        android:title="@string/camara" />

    <item
        android:id="@+id/favoritosItem"
        android:icon="@drawable/ic_favorite"
        android:title="@string/favoritos" />

    <item
        android:id="@+id/perfilItem"
        android:icon="@drawable/ic_person"
        android:title="@string/perfil" />

</menu>
```

[master es](https://github.com/alvareztech/BottomNavigationViewSample)

> La versión actualizada se encuentra en el branch _master_ si quieres ver la versión exacta del video puedes ir al branch _video_.

Luego de que descargues o clones el proyecto puedes importarlo con la opción "Import Project" desde *Android Studio*.

---

## Extra

### Badges

Ahora es posible adicionar _badges_ a cada sección.

__Importar BadgeDrawable__

```java
import com.google.android.material.badge.BadgeDrawable;
```
__Colocar un valor o marca por el id del menu__

```java
BadgeDrawable badge = bottomNavigationView.getOrCreateBadge(R.id.inicioItem);
badge.setNumber(7); // opcional si solo quieres poner un punto rojo
badge.setVisible(true);
```

### Themes

Ya no es necesario colocar la sombra manualmente, esta ya esta en el tema por defecto.

__Default__

```xml
style="@style/Widget.MaterialComponents.BottomNavigationView"
```

Si quieres que el `BottomNavigationView` tenga de fondo el color primario de la aplicación.

```xml
style="@style/Widget.MaterialComponents.BottomNavigationView.Colored"
```

Y este es el antiguo estilo con algo de movimiento, pero no recomendado.

```xml
style="@style/Widget.Design.BottomNavigationView"
```

### Quitar animación

Si no deseas la animación de selección puedes adicionar el siguiente attributo.

```xml
app:labelVisibilityMode="labeled"
```

 ̶S̶i̶ ̶d̶e̶s̶e̶a̶s̶ ̶q̶u̶e̶ ̶n̶o̶ ̶t̶e̶n̶g̶a̶ ̶l̶a̶ ̶a̶n̶i̶m̶a̶c̶i̶ó̶n̶ ̶d̶e̶ ̶z̶o̶o̶m̶ ̶a̶l̶ ̶c̶a̶m̶b̶i̶a̶r̶ ̶d̶e̶ ̶o̶p̶c̶i̶ó̶n̶ ̶(̶s̶h̶i̶f̶t̶ ̶m̶o̶d̶e̶)̶ ̶a̶ú̶n̶ ̶n̶o̶ ̶h̶a̶y̶ ̶u̶n̶ ̶m̶é̶t̶o̶d̶o̶ ̶q̶u̶e̶ ̶l̶o̶ ̶p̶e̶r̶m̶i̶t̶a̶ ̶h̶a̶c̶e̶r̶ ̶d̶e̶ ̶f̶o̶r̶m̶a̶ ̶s̶e̶n̶c̶i̶l̶l̶a̶,̶ ̶p̶e̶r̶o̶ ̶p̶u̶e̶d̶e̶s̶ ̶u̶t̶i̶l̶i̶z̶a̶r̶ ̶e̶s̶t̶e̶ ̶m̶é̶t̶o̶d̶o̶:̶

```java
 ̶p̶r̶i̶v̶a̶t̶e̶ ̶v̶o̶i̶d̶ ̶r̶e̶m̶o̶v̶e̶S̶h̶i̶f̶t̶M̶o̶d̶e̶(̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶ ̶b̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶)̶ ̶{̶
̶ ̶ ̶ ̶ ̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶M̶e̶n̶u̶V̶i̶e̶w̶ ̶m̶e̶n̶u̶V̶i̶e̶w̶ ̶=̶ ̶(̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶M̶e̶n̶u̶V̶i̶e̶w̶)̶ ̶b̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶.̶g̶e̶t̶C̶h̶i̶l̶d̶A̶t̶(̶0̶)̶;̶
̶ ̶ ̶ ̶ ̶t̶r̶y̶ ̶{̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶F̶i̶e̶l̶d̶ ̶s̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶ ̶=̶ ̶m̶e̶n̶u̶V̶i̶e̶w̶.̶g̶e̶t̶C̶l̶a̶s̶s̶(̶)̶.̶g̶e̶t̶D̶e̶c̶l̶a̶r̶e̶d̶F̶i̶e̶l̶d̶(̶"̶m̶S̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶"̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶s̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶.̶s̶e̶t̶A̶c̶c̶e̶s̶s̶i̶b̶l̶e̶(̶t̶r̶u̶e̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶s̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶.̶s̶e̶t̶B̶o̶o̶l̶e̶a̶n̶(̶m̶e̶n̶u̶V̶i̶e̶w̶,̶ ̶f̶a̶l̶s̶e̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶s̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶.̶s̶e̶t̶A̶c̶c̶e̶s̶s̶i̶b̶l̶e̶(̶f̶a̶l̶s̶e̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶f̶o̶r̶ ̶(̶i̶n̶t̶ ̶i̶ ̶=̶ ̶0̶;̶ ̶i̶ ̶<̶ ̶m̶e̶n̶u̶V̶i̶e̶w̶.̶g̶e̶t̶C̶h̶i̶l̶d̶C̶o̶u̶n̶t̶(̶)̶;̶ ̶i̶+̶+̶)̶ ̶{̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶I̶t̶e̶m̶V̶i̶e̶w̶ ̶i̶t̶e̶m̶ ̶=̶ ̶(̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶I̶t̶e̶m̶V̶i̶e̶w̶)̶ ̶m̶e̶n̶u̶V̶i̶e̶w̶.̶g̶e̶t̶C̶h̶i̶l̶d̶A̶t̶(̶i̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶/̶/̶n̶o̶i̶n̶s̶p̶e̶c̶t̶i̶o̶n̶ ̶R̶e̶s̶t̶r̶i̶c̶t̶e̶d̶A̶p̶i̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶i̶t̶e̶m̶.̶s̶e̶t̶S̶h̶i̶f̶t̶i̶n̶g̶M̶o̶d̶e̶(̶f̶a̶l̶s̶e̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶/̶/̶n̶o̶i̶n̶s̶p̶e̶c̶t̶i̶o̶n̶ ̶R̶e̶s̶t̶r̶i̶c̶t̶e̶d̶A̶p̶i̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶i̶t̶e̶m̶.̶s̶e̶t̶C̶h̶e̶c̶k̶e̶d̶(̶i̶t̶e̶m̶.̶g̶e̶t̶I̶t̶e̶m̶D̶a̶t̶a̶(̶)̶.̶i̶s̶C̶h̶e̶c̶k̶e̶d̶(̶)̶)̶;̶
̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶ ̶}̶
̶ ̶ ̶ ̶ ̶}̶ ̶c̶a̶t̶c̶h̶ ̶(̶N̶o̶S̶u̶c̶h̶F̶i̶e̶l̶d̶E̶x̶c̶e̶p̶t̶i̶o̶n̶ ̶e̶)̶ ̶{̶
̶ ̶ ̶ ̶ ̶}̶ ̶c̶a̶t̶c̶h̶ ̶(̶I̶l̶l̶e̶g̶a̶l̶A̶c̶c̶e̶s̶s̶E̶x̶c̶e̶p̶t̶i̶o̶n̶ ̶e̶)̶ ̶{̶
̶ ̶ ̶ ̶ ̶}̶
̶}̶
```

 ̶P̶u̶e̶d̶e̶s̶ ̶d̶e̶s̶c̶a̶r̶g̶a̶r̶ ̶e̶l̶ ̶m̶i̶s̶m̶o̶ ̶e̶j̶e̶m̶p̶l̶o̶ ̶c̶o̶n̶ ̶e̶s̶t̶a̶ ̶m̶o̶d̶i̶f̶i̶c̶a̶c̶i̶ó̶n̶:̶

* [Repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/remove-shift)
* [Download](https://github.com/alvareztech/BottomNavigationViewSample/archive/remove-shift.zip)

### Con Fragments

Si quieres el ejemplo con fragments te lo dejamos aquí (aún no actualizada con _AndroidX_):

* [Repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/fragments)
* [Download](https://github.com/alvareztech/BottomNavigationViewSample/archive/fragments.zip)

## Recursos adicionales

* [Class Definition](https://developer.android.com/reference/android/support/design/widget/BottomNavigationView.html) (deprecated)
* [Class Definition](https://developer.android.com/reference/com/google/android/material/bottomnavigation/BottomNavigationView)
* [Design guide](https://material.io/design/components/bottom-navigation.html)
