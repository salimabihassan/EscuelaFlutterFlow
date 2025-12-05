# Configuración de Firebase

## ⚠️ Archivos de Configuración Requeridos

Este proyecto requiere archivos de configuración de Firebase que **NO** están incluidos en el repositorio por razones de seguridad.

### Para Android

1. Descarga `google-services.json` desde la consola de Firebase:
   - Ve a [Firebase Console](https://console.firebase.google.com/)
   - Selecciona tu proyecto
   - Ve a Configuración del proyecto → Tus apps
   - Descarga el archivo `google-services.json` para tu app Android

2. Coloca el archivo en:
   ```
   android/app/google-services.json
   ```

### Para iOS

1. Descarga `GoogleService-Info.plist` desde la consola de Firebase:
   - Ve a [Firebase Console](https://console.firebase.google.com/)
   - Selecciona tu proyecto
   - Ve a Configuración del proyecto → Tus apps
   - Descarga el archivo `GoogleService-Info.plist` para tu app iOS

2. Coloca el archivo en:
   ```
   ios/Runner/GoogleService-Info.plist
   ```

## 🔒 Seguridad

**NUNCA** compartas estos archivos públicamente ni los subas a GitHub. Contienen claves API y configuraciones sensibles de tu proyecto Firebase.

## Verificación

Después de colocar los archivos, verifica que están en las rutas correctas:

```bash
# Verificar Android
ls android/app/google-services.json

# Verificar iOS
ls ios/Runner/GoogleService-Info.plist
```

Ambos archivos están en `.gitignore` para prevenir que se suban accidentalmente al repositorio.
