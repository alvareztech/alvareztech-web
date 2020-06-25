---
title: Ver información de un Keystore
description: Listar la información de un keystore, alias, etc.
tags: keytool, java
language: es
---
Puedes listar la información de un _keystore_ ejecutando el siguiente comando. Obviamente necesitarás el password del keystore.

```
keytool -v -list -keystore mykeystore.keystore
```

Y si quieres ver la información para un _alias_ específico:

```
keytool -list -keystore mykeystore.keystore -alias myalias
```

Si el _alias_ no existe se lanzará una excepción `java.lang.Exception: Alias does not exist`.
