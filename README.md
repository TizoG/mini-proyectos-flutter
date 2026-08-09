# Mini proyectos Flutter

Colección de aplicaciones pequeñas para aprender y practicar Flutter mediante objetivos concretos. Cada carpeta contiene un proyecto independiente, su documentación y los recursos visuales utilizados durante el diseño.

La colección comienza con una tarjeta de perfil para Android y crecerá progresivamente con nuevos mini proyectos.

## Estado de la colección

| Proyecto | Objetivo | Estado |
|---|---|---|
| [MiniProyecto 1 — Tarjeta de perfil](./MiniProyecto_1_Tarjeta_Perfil/) | Construir una tarjeta de perfil cuidando composición, jerarquía visual y adaptación a Android | Diseño en OpenDesign |

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

Cada aplicación se ejecuta desde su propia carpeta. Cuando el primer proyecto Flutter esté inicializado:

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
└── MiniProyecto_1_Tarjeta_Perfil/
    ├── README.md
    ├── docs/
    │   ├── mockups/
    │   └── capturas/
    └── ...                    # aplicación Flutter, cuando se inicialice
```

## Licencia

Este repositorio se distribuye bajo la [licencia MIT](./LICENSE).
