# MiniProyecto 3 — Selector de estado de ánimo

Tercer proyecto de la serie **Mini proyectos Flutter**. Será una aplicación Android de una sola pantalla donde el usuario seleccionará cómo se siente mediante cinco mascotas ilustradas y recibirá un mensaje asociado.

> Estado actual: base Flutter inicializada exclusivamente para Android, assets incorporados y diseño final de OpenDesign conservado. La interfaz todavía no está implementada.

## Diseño de referencia

El artefacto original está en [`docs/mockups/selector_estado_animo_mockup.html`](./docs/mockups/selector_estado_animo_mockup.html). Presenta las fases de la aplicación dentro de móviles Android de 390 × 844 px e incluye estados emocionales, accesibilidad, validación a 320 px, Design System, inventario de componentes y especificaciones para Flutter.

Las cinco mascotas definitivas se encuentran en [`assets/images/moods/`](./assets/images/moods/).

## Objetivo de aprendizaje

- Modelar un conjunto cerrado de valores mediante un `enum`.
- Mantener una única fuente de verdad con `Mood? selectedMood`.
- Actualizar la interfaz mediante `setState`.
- Comunicar acciones entre widgets mediante propiedades y callbacks.
- Construir una selección exclusiva sin booleanos duplicados.
- Organizar opciones con `Wrap` y adaptar el contenido a móviles estrechos.
- Utilizar assets locales con semántica accesible.
- Extraer widgets pequeños sin introducir capas innecesarias.

## Alcance funcional

- Una pantalla titulada **Mi ánimo**.
- Cinco estados locales: Feliz, Tranquilo, Cansado, Triste y Estresado.
- Ninguna selección al iniciar.
- Una única selección activa.
- Tarjeta de resultado con mascota, nombre y mensaje.
- Cambio de selección tantas veces como se quiera.
- Animaciones breves con alternativa para movimiento reducido.
- Sin backend, login, navegación, persistencia ni APIs externas.

## Estados de referencia

| Estado | Asset | Mensaje |
|---|---|---|
| Feliz | `mood_happy.png` | Disfruta este buen momento y compártelo. |
| Tranquilo | `mood_calm.png` | Aprovecha esta calma para avanzar a tu ritmo. |
| Cansado | `mood_tired.png` | Quizá sea un buen momento para bajar el ritmo. |
| Triste | `mood_sad.png` | No tienes que resolverlo todo ahora. Cuídate. |
| Estresado | `mood_stressed.png` | Respira unos segundos y céntrate en una sola cosa. |

## Buenas prácticas previstas

La primera versión utilizará una arquitectura proporcional al ejercicio:

```text
MoodPage
├── MoodHeader
├── MoodSelector
│   └── MoodOptionCard
└── MoodMessageCard
```

`MoodPage` será el propietario de `selectedMood`. Los componentes visuales recibirán datos mediante propiedades y comunicarán interacciones mediante callbacks. La imagen, etiqueta, mensaje y color se derivarán del valor seleccionado.

No se introducirán repositorios, casos de uso, inyección de dependencias ni gestores de estado externos.

## Sistema visual

### Colores base

| Rol | Valor |
|---|---|
| Fondo | `#F7F8FC` |
| Superficie | `#FFFFFF` |
| Texto principal | `#25273A` |
| Texto secundario | `#73768A` |
| Principal | `#6C63E8` |
| Contenedor principal | `#EFEEFF` |
| Borde | `#E4E5ED` |

### Acentos emocionales

| Estado | Acento |
|---|---|
| Feliz | `#F6C453` |
| Tranquilo | `#42B8B0` |
| Cansado | `#8176D9` |
| Triste | `#6599D1` |
| Estresado | `#F2765B` |

La referencia utiliza Manrope, una escala de espaciado basada en 4 px y radios de 12, 18 y 24 px. El HTML documenta tamaños, pesos, alturas de línea, elevaciones y estados de interacción.

## Datos técnicos

| Propiedad | Valor |
|---|---|
| Nombre visible previsto | Mi estado de ánimo |
| Paquete Dart | `mini_proyecto_3_selector_estado_animo` |
| Identificador Android | `com.example.mini_proyecto_3_selector_estado_animo` |
| Plataformas generadas | Android |
| Flutter | 3.44.2 |
| Dart | 3.12.2 |
| Diseño | OpenDesign · Material 3 · móvil 390 × 844 px |

## Estructura objetivo

```text
lib/
├── main.dart
├── app/
│   └── mood_app.dart
└── features/
    └── mood/
        ├── models/
        │   └── mood.dart
        └── presentation/
            ├── pages/
            │   └── mood_page.dart
            └── widgets/
                ├── mood_header.dart
                ├── mood_selector.dart
                ├── mood_option_card.dart
                └── mood_message_card.dart
```

## Cómo ejecutar

```bash
flutter pub get
flutter devices
flutter run
```

La base no contiene carpetas de plataforma para iOS, web, Windows, macOS ni Linux.

## Validación

```bash
flutter analyze
flutter test
```

## Próximos pasos

1. Crear el `enum Mood` con sus datos asociados.
2. Construir el tema y los tokens visuales.
3. Implementar la pantalla de fuera hacia dentro.
4. Añadir la selección exclusiva con `setState`.
5. Verificar 390 × 844 px, 320 px y texto grande.
6. Guardar capturas de la implementación y compararlas con OpenDesign.

## Licencia

Este proyecto forma parte del repositorio y utiliza su [licencia MIT](../LICENSE).
