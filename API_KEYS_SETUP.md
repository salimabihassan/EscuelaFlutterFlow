# 🔐 Configuración de API Keys

**IMPORTANTE:** Este archivo contiene información sensible y NO debe subirse a GitHub.

## PDFShift API Key

Para generar PDFs, necesitas una API key de PDFShift:

1. Crear cuenta en: https://pdfshift.io
2. Obtener tu API key del dashboard
3. Configurar en FlutterFlow:
   - Settings → App Values → Add Constant
   - Name: `pdfShiftAPIKey`
   - Type: `String`
   - Value: `tu-api-key-aqui`

## Firebase Configuration

Los archivos de configuración de Firebase están en `.gitignore` por seguridad:

- `google-services.json` (Android)
- `GoogleService-Info.plist` (iOS)

### Para configurar en tu proyecto:

1. Ir a [Firebase Console](https://console.firebase.google.com)
2. Seleccionar tu proyecto
3. Descargar los archivos de configuración
4. Colocarlos en:
   - Android: `escuela/android/app/google-services.json`
   - iOS: `escuela/ios/Runner/GoogleService-Info.plist`

## Notas de Seguridad

- ❌ NO compartas tus API keys públicamente
- ❌ NO subas archivos de configuración de Firebase
- ✅ Usa variables de entorno en producción
- ✅ Rota las keys periódicamente
