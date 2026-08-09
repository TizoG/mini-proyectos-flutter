# MiniProyecto 1 — Tarjeta de perfil

Primer proyecto de la serie **Mini proyectos Flutter**. Consistirá en una aplicación Android de una sola pantalla que mostrará una tarjeta de perfil con una jerarquía visual clara y una composición adaptable.

> Estado actual: diseño en OpenDesign. La aplicación Flutter todavía no se ha inicializado.

## Objetivo

Practicar los fundamentos de construcción de interfaces en Flutter mediante un resultado pequeño y reconocible:

- composición de widgets;
- distribución, alineación y espaciado;
- imagen o avatar de perfil;
- jerarquía tipográfica;
- colores y formas con Material 3;
- componentes reutilizables;
- adaptación a diferentes tamaños de pantalla Android.

## Datos previstos de la aplicación

| Propiedad | Valor |
|---|---|
| Nombre visible | Tarjeta de Perfil |
| Paquete Dart | `mini_proyecto_1_tarjeta_perfil` |
| Identificador Android | `com.example.tarjeta_perfil` |
| Plataformas | Android |
| Diseño | OpenDesign |

## Diseño

Los mockups se incorporarán en [`docs/mockups`](./docs/mockups/) cuando termine la fase de diseño en OpenDesign.

Cuando exista una versión implementada, las capturas reales se guardarán en [`docs/capturas`](./docs/capturas/).

## Estructura prevista

La estructura final se mantendrá deliberadamente sencilla porque este primer mini proyecto se centra en fundamentos de UI:

```text
lib/
├── main.dart
├── app/
└── features/
    └── profile/
        └── presentation/
            ├── pages/
            └── widgets/
```

No se introducirán capas de dominio o datos mientras el proyecto no tenga lógica que las justifique.

## Cómo ejecutar

Estas instrucciones serán aplicables cuando se inicialice la aplicación:

```bash
flutter pub get
flutter run
```

Para ejecutar específicamente sobre Android, inicia antes un emulador o conecta un dispositivo y comprueba que Flutter lo detecta:

```bash
flutter devices
flutter run
```

## Próximos pasos

1. Finalizar el mockup en OpenDesign.
2. Exportar y documentar las referencias visuales.
3. Inicializar Flutter exclusivamente para Android.
4. Definir tokens visuales básicos.
5. Implementar la interfaz por componentes.
6. Añadir pruebas de widgets proporcionales al alcance.
7. Incorporar capturas del resultado final.

## Licencia

Este proyecto forma parte del repositorio y utiliza su [licencia MIT](../LICENSE).
