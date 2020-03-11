---
title: Implement Bottom Navigation View for Android
description: Implementation of a Bottom Navigation View in an Android application.
tags: android, material, jetpack, androidx
video.youTube: aTPwcWQIckw
date: 2016-10-22 08:00
---

Implementation of a Bottom Navigation View in an Android application.

> Now this component is part of _Jetpack_ and this tutorial was updated to _AndroidX_. 

## Dependency

Dependency addition (0.48)

```groovy
c̶o̶m̶p̶i̶l̶e̶ ̶'̶c̶o̶m̶.̶a̶n̶d̶r̶o̶i̶d̶.̶s̶u̶p̶p̶o̶r̶t̶:̶d̶e̶s̶i̶g̶n̶:̶2̶5̶.̶0̶.̶0̶'̶
```

```groovy
implementation 'com.google.android.material:material:1.1.0'
```

## Adding  the component

Adding the `BottomNavigationView` (1.08)

```
<com.google.android.material.bottomnavigation.BottomNavigationView
    android:id="@+id/bottomNavigationView"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_gravity="bottom"
    app:labelVisibilityMode="labeled"
    app:menu="@menu/menu_navigation" />
```

Versión del video (deprecated):

```xml
<̶a̶n̶d̶r̶o̶i̶d̶.̶s̶u̶p̶p̶o̶r̶t̶.̶d̶e̶s̶i̶g̶n̶.̶w̶i̶d̶g̶e̶t̶.̶B̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶
     a̶n̶d̶r̶o̶i̶d̶:̶i̶d̶=̶"̶@̶+̶i̶d̶/̶b̶o̶t̶t̶o̶m̶N̶a̶v̶i̶g̶a̶t̶i̶o̶n̶V̶i̶e̶w̶"̶
     a̶n̶d̶r̶o̶i̶d̶:̶l̶a̶y̶o̶u̶t̶_̶w̶i̶d̶t̶h̶=̶"̶m̶a̶t̶c̶h̶_̶p̶a̶r̶e̶n̶t̶"̶
     a̶n̶d̶r̶o̶i̶d̶:̶l̶a̶y̶o̶u̶t̶_̶h̶e̶i̶g̶h̶t̶=̶"̶w̶r̶a̶p̶_̶c̶o̶n̶t̶e̶n̶t̶"̶ ̶/̶>̶
```

## Menu

Menu creation (1.38)

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

## The Code

The complete code:

* [Repository](https://github.com/alvareztech/BottomNavigationViewSample)
* [Download](https://github.com/alvareztech/BottomNavigationViewSample/archive/master.zip)

> The updated version is in _master_ branch if you need exactly the video version you can use the _video_ branch.

After you download or clone the project you can import it with the "Import Project" option from Android Studio.

## Extra

### Badges

Now it's posible to add _badges_ to each section.

__Import BadgeDrawable__

```java
import com.google.android.material.badge.BadgeDrawable;
```
__Set a value or mark by the id of the menu__

```java
BadgeDrawable badge = bottomNavigationView.getOrCreateBadge(R.id.inicioItem);
badge.setNumber(7); // optional if you just want to put a red dot
badge.setVisible(true);
```

### Themes

It's no longer neccesary to place a shadow manually, it's already in the default theme.

__Default__

```xml
style="@style/Widget.MaterialComponents.BottomNavigationView"
```

If you need a `BottomNavigationView` with the app primary color background.

```xml
style="@style/Widget.MaterialComponents.BottomNavigationView.Colored"
```

And this is the old style with some animation, but not recommended.

```xml
style="@style/Widget.Design.BottomNavigationView"
```

### Remove animation

If you don't want the selection animation you can add the following attribute.

```xml
app:labelVisibilityMode="labeled"
```

 ̶I̶f̶ ̶y̶o̶u̶ ̶w̶a̶n̶t̶ ̶t̶o̶ ̶n̶o̶t̶ ̶h̶a̶v̶e̶ ̶t̶h̶e̶ ̶z̶o̶o̶m̶ ̶a̶n̶i̶m̶a̶t̶i̶o̶n̶ ̶w̶h̶e̶n̶ ̶t̶h̶e̶ ̶o̶p̶t̶i̶o̶n̶ ̶c̶h̶a̶n̶g̶e̶s̶ ̶(̶s̶h̶i̶f̶t̶ ̶m̶o̶d̶e̶)̶ ̶t̶h̶e̶r̶e̶ ̶i̶s̶ ̶n̶o̶ ̶m̶e̶t̶h̶o̶d̶ ̶t̶h̶a̶t̶ ̶a̶l̶l̶o̶w̶s̶ ̶t̶h̶i̶s̶,̶ ̶b̶u̶t̶ ̶y̶o̶u̶ ̶c̶a̶n̶ ̶u̶s̶e̶ ̶t̶h̶i̶s̶:̶

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

 ̶Y̶o̶u̶ ̶c̶a̶n̶ ̶d̶o̶w̶n̶l̶o̶a̶d̶ ̶t̶h̶e̶ ̶s̶a̶m̶e̶ ̶e̶x̶a̶m̶p̶l̶e̶ ̶w̶i̶t̶h̶ ̶t̶h̶i̶s̶ ̶c̶h̶a̶n̶g̶e̶.̶

* [Repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/remove-shift)
* [Download](https://github.com/alvareztech/BottomNavigationViewSample/archive/remove-shift.zip)

## With Fragments

If you want an example with fragments I leave it here (not updated with _AndroidX_ yet):

* [Repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/fragments)
* [Download](https://github.com/alvareztech/BottomNavigationViewSample/archive/fragments.zip)

## Resources

* [Class Definition](https://developer.android.com/reference/android/support/design/widget/BottomNavigationView.html) (deprecated)
* [Class Definition](https://developer.android.com/reference/com/google/android/material/bottomnavigation/BottomNavigationView)
* [Design guide](https://material.io/design/components/bottom-navigation.html)
