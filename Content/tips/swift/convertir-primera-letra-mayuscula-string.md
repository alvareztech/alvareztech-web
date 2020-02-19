---
title: Cómo convertir la primera letra a mayúscula de un String
description: Si quieres convertir la primera letra de un String a mayúscula sin importar el resto de las letras, adiciona esta extensión...
tags: swift
language: es
---

Si quieres convertir la primera letra de un String a mayúscula sin importar el resto de las letras, adiciona esta extensión:

```swift
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
```

Un ejemplo para probarlo:

```swift
let test = "winter is Comming"
print(test.capitalizingFirstLetter())
```

Actualizado para Swift 5.0. Disponible desde iOS 8.0
