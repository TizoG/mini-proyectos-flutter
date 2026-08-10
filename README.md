# Mini proyectos Flutter

Colección de 20 aplicaciones pequeñas para ganar soltura con Flutter y Dart mediante objetivos concretos, visuales y terminables. Los proyectos están ordenados de menor a mayor complejidad.

Cada carpeta contiene una aplicación independiente, su README y los recursos visuales utilizados durante el diseño.

## Principios de la colección

- Una pantalla o un flujo muy corto.
- Sin backend, login ni APIs externas.
- Datos locales en memoria, salvo que un proyecto indique otra cosa.
- Arquitectura proporcional al problema, sin capas innecesarias.
- Duración orientativa de 1 a 3 horas por primera versión.
- Cierre con una mejora visual y una breve revisión del aprendizaje.

## Roadmap

| # | Proyecto | Qué se construirá | Conceptos principales | Estado |
|---:|---|---|---|---|
| 1 | [Tarjeta de perfil](./MiniProyecto_1_Tarjeta_Perfil/) | Perfil ficticio de una sola pantalla | Layouts, imágenes, estilos y componentes reutilizables | Primera versión implementada · revisión visual pendiente |
| 2 | [Generador de frases](./MiniProyecto_2_Generador_Frases/) | Frase aleatoria al pulsar un botón | Listas, botones y aleatoriedad | Base Flutter Android lista · UI pendiente |
| 3 | Selector de estado de ánimo | Selección de emoji con mensaje asociado | `ChoiceChip`, enums y comunicación entre widgets | Pendiente |
| 4 | Semáforo de hábitos | Seguimiento visual de tres hábitos | Booleanos, color y estados | Pendiente |
| 5 | Generador de colores | Color aleatorio con su valor hexadecimal | `Color`, funciones y `setState` | Pendiente |
| 6 | Contador de vasos de agua | Registro diario con progreso y límites | Contadores, porcentajes y `LinearProgressIndicator` | Pendiente |
| 7 | Repartidor de tareas | Asignación aleatoria de una tarea | Listas, números aleatorios y actualización de UI | Pendiente |
| 8 | Lista de equipaje | Objetos preparados y progreso del viaje | `Checkbox`, listas, progreso y estado vacío | Pendiente |
| 9 | Conversor rápido | Conversión entre unidades sencillas | `DropdownButton`, funciones y cálculos | Pendiente |
| 10 | Cuenta atrás de enfoque | Temporizador de 5, 15 o 25 minutos | `Timer`, estado y formato de tiempo | Pendiente |
| 11 | Divisor de cuenta | Reparto de importe y propina entre personas | `TextField`, validación y cálculos | Pendiente |
| 12 | Tarjeta de receta | Ingredientes y pasos de una receta | Scroll, secciones, listas y jerarquía visual | Pendiente |
| 13 | Panel de notas rápidas | Notas breves de colores | Formularios, `Wrap`, tarjetas y eliminación | Pendiente |
| 14 | Lista de la compra | Alta, marcado y eliminación de productos | Listas dinámicas, `TextField`, `setState` y estado vacío | Pendiente |
| 15 | Diario de una frase | Registro y visualización de una frase diaria | Formularios, validación y estado | Pendiente |
| 16 | Quiz de cinco preguntas | Preguntas, respuestas y puntuación final | Modelos, listas, condiciones y navegación sencilla | Pendiente |
| 17 | Selector de película | Recomendación fija según el género elegido | Filtros, enums, `switch` y tarjetas | Pendiente |
| 18 | Control de gastos del día | Gastos por categoría con total e indicadores | Modelos, categorías, listas y sumas | Pendiente |
| 19 | Reproductor musical visual | Interfaz ficticia de reproducción | `Stack`, `Slider`, controles y diseño detallado | Pendiente |
| 20 | Panel de gastos con barras | Resumen visual de gasto por categorías | Porcentajes, agrupación de datos y barras | Pendiente |

## Requisitos

Para ejecutar los proyectos necesitarás:

- Flutter SDK instalado y disponible en el `PATH`.
- Android Studio o Visual Studio Code con las extensiones de Flutter y Dart.
- Android SDK.
- Un emulador Android o un dispositivo físico con depuración USB.

Puedes comprobar el entorno con:

```bash
flutter doctor
```

## Descargar la colección

Clona el repositorio:

```bash
git clone https://github.com/TizoG/mini-proyectos-flutter.git
cd mini-proyectos-flutter
```

También puedes descargarlo desde GitHub mediante **Code → Download ZIP**.

## Ejecutar un mini proyecto

Cada aplicación se ejecuta desde su propia carpeta. Para abrir el primer proyecto:

```bash
cd MiniProyecto_1_Tarjeta_Perfil
flutter pub get
flutter run
```

Consulta siempre el README del proyecto, ya que puede incluir requisitos o instrucciones particulares.

## Organización

```text
mini-proyectos-flutter/
├── README.md
├── LICENSE
├── MiniProyecto_1_Tarjeta_Perfil/
│   ├── README.md
│   ├── docs/
│   │   ├── mockups/
│   │   └── capturas/
│   ├── android/
│   ├── lib/
│   └── pubspec.yaml
└── MiniProyecto_N_Nombre/     # proyectos futuros
```

## Licencia

Este repositorio se distribuye bajo la [licencia MIT](./LICENSE).
