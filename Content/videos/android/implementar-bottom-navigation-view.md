---
title: Implementar Bottom Navigation View en Android para la navegación
lang: es
tags: android
video.youTube: aTPwcWQIckw
---
Implementación de un `BottomNavigationView` en una aplicación Android. Componente disponible desde la librería de compatibilidad 25.

### Aprenderás
* Usar el componente `BottomNavigationView`

### Requisitos
* Librería de compatibilidad 25 o superior

## Dependencia
Adición de la dependencia (0.48)

```groovy
compile 'com.android.support:design:25.0.0'
```

## Adicionando el componente
Adicionando el BottomNavigationView (1.08)

```xml
<android.support.design.widget.BottomNavigationView  
    android:id="@+id/bottomNavigationView"
    android:layout_width="match_parent"
    android:layout_height="wrap_content" />
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

## El código

El código completo en:

* [GitHub Repository](https://github.com/alvareztech/BottomNavigationViewSample)
* [Download ZIP](https://github.com/alvareztech/BottomNavigationViewSample/archive/master.zip)

Luego de que descargues o clones el proyecto puedes importarlo con la opción "Import Project" desde *Android Studio*.

## Quitar animación

Si deseas que no tenga la animación de zoom al cambiar de opción (shift mode) aún no hay un método que lo permita hacer de forma sencilla, pero puedes utilizar este método:

```java
private void removeShiftMode(BottomNavigationView bottomNavigationView) {
    BottomNavigationMenuView menuView = (BottomNavigationMenuView) bottomNavigationView.getChildAt(0);
    try {
        Field shiftingMode = menuView.getClass().getDeclaredField("mShiftingMode");
        shiftingMode.setAccessible(true);
        shiftingMode.setBoolean(menuView, false);
        shiftingMode.setAccessible(false);
        for (int i = 0; i < menuView.getChildCount(); i++) {
            BottomNavigationItemView item = (BottomNavigationItemView) menuView.getChildAt(i);
            //noinspection RestrictedApi
            item.setShiftingMode(false);
            //noinspection RestrictedApi
            item.setChecked(item.getItemData().isChecked());
        }
    } catch (NoSuchFieldException e) {
    } catch (IllegalAccessException e) {
    }
}
```

Puedes descargar el mismo ejemplo con esta modificación:

* [GitHub repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/remove-shift)
* [Download ZIP](https://github.com/alvareztech/BottomNavigationViewSample/archive/remove-shift.zip)

## Con Fragments

Si quieres el ejemplo con fragments te lo dejamos aquí:

* [GitHub repository](https://github.com/alvareztech/BottomNavigationViewSample/tree/fragments)
* [Download ZIP](https://github.com/alvareztech/BottomNavigationViewSample/archive/fragments.zip)

## Recursos adicionales

* [Official documentation](https://developer.android.com/reference/android/support/design/widget/BottomNavigationView.html)
* [Design guide](https://material.io/design/components/bottom-navigation.html)
