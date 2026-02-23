# Privacy Policy - Instrucciones de Implementación

## 📋 Archivos Generados

Se han creado dos versiones de la Privacy Policy:

1. **privacy-policy.md** - Formato Markdown (para GitHub/documentación)
2. **privacy-policy.html** - Formato HTML (para publicación en web)

## 🌐 Publicación en una URL Pública

### Requisitos de Google Play Store

Google Play **requiere** que la Privacy Policy:
- ✅ Sea accesible en una URL pública activa
- ✅ Sea específica para tu aplicación
- ✅ Cubra comprensivamente cómo se manejan los datos del usuario
- ✅ Sea fácil de entender

### Opciones de Publicación Recomendadas

#### Opción 1: GitHub Pages (Gratuito y Recomendado)

1. **En tu repositorio:** Crea una rama `gh-pages` o usa la rama principal
2. **Copia el archivo HTML** a la raíz de tu repositorio:
   ```
   tu-repo/
   └── privacy-policy.html
   ```

3. **Activa GitHub Pages:**
   - Ve a Settings > Pages
   - Selecciona la rama `main` (o la que uses)
   - La URL será: `https://orfloresti.github.io/myportfolio/privacy-policy.html`

4. **Enlace permanente:** Este será tu URL para Google Play

#### Opción 2: Crear un Sitio Web Dedicado

```
https://tudominio.com/privacy-policy
```

Puedes usar servicios como:
- **Vercel** (gratuito): https://vercel.com
- **Netlify** (gratuito): https://netlify.com
- **GitHub Pages** (gratuito)
- Tu propio servidor web

#### Opción 3: Incluir en tu Portfolio App Web

Si despliega la app para web, puedes agregar:
```dart
routes: {
  '/': (context) => const HomeScreen(),
  '/privacy-policy': (context) => const PrivacyPolicyScreen(),
}
```

## 📱 Integración en la App Flutter

### Opción A: Enlace a URL Externa

```dart
import 'package:url_launcher/url_launcher.dart';

// En tu widget
ElevatedButton(
  onPressed: () {
    launchUrl(Uri.parse('https://orfloresti.github.io/myportfolio/privacy-policy.html'));
  },
  child: const Text('Privacy Policy'),
)
```

### Opción B: Pantalla Interna

Crea `lib/screens/privacy_policy_screen.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: WebView(
        initialUrl: 'https://orfloresti.github.io/myportfolio/privacy-policy.html',
      ),
    );
  }
}
```

Agrega a `pubspec.yaml`:
```yaml
dependencies:
  webview_flutter: ^4.2.0
```

## 📝 Configuración en Google Play Console

### Paso a Paso:

1. **Ve a Play Console** → Tu aplicación → Policy and programs → App content

2. **Sección "Privacy Policy":**
   - Click en "Start" (o "Manage" si ya existe)
   - Pega tu URL: `https://orfloresti.github.io/myportfolio/privacy-policy.html`
   - Guarda los cambios

3. **Verifica que la URL sea **activa y accesible**:
   - Abre en tu navegador
   - Debe cargar completamente

4. **Declaraciones adicionales:**
   - Ads: **No** (tu app no tiene anuncios)
   - Sensitive Permissions: **Declarar correctamente según lo usado**

## 🔐 Contenido de la Privacy Policy

Tu documento cubre (según Google Play):

✅ **Recopilación de datos:**
- Información de dispositivo
- Estadísticas de uso
- Reportes de crashes

✅ **Uso de datos:**
- Mejora de la app
- Análisis de rendimiento
- Solución de problemas

✅ **Terceros:**
- Google Fonts
- URL Launcher
- Font Awesome

✅ **Derechos del usuario:**
- Cómo controlar datos
- Opciones de opt-out
- Derechos de privacidad (GDPR, CCPA, LGPD)

✅ **Seguridad:**
- Almacenamiento local
- Encriptación
- Retención de datos

## 📋 Checklist para Google Play

- [ ] URL de Privacy Policy publicada y activa
- [ ] Documento accesible sin contraseña
- [ ] Específico para tu aplicación y no genérico
- [ ] Cubre todos los datos que recopila la app
- [ ] Explica el uso de Google Fonts, URL Launcher, etc.
- [ ] Incluye información sobre permisos
- [ ] Menciona seguridad y protección de datos
- [ ] Contacto claro para preguntas
- [ ] Fecha de última actualización

## 🌍 Traducciones

Este documento está en **inglés** (requerido por Google Play). Si necesitas traducción al español u otro idioma:

1. Copia el contenido a un servicio de traducción
2. Crea versiones multiidioma en tu web
3. Enlaza la versión en inglés en Google Play (requisito)

Ejemplo de URL multilíngue:
- `https://tudominio.com/privacy-policy` (English)
- `https://tudominio.com/es/privacy-policy` (Spanish)

## ⚠️ Importante

- **No copies** la política tal cual de otras apps (Google lo detecta)
- **Mantén actualizado** el documento si cambias funcionalidades
- **Revisa regularmente** según cambios en el código de la app
- **Consulta con un abogado** si trabajas con datos sensibles

## 📞 Soporte

Si tienes dudas específicas sobre cumplimiento:
- Google Play Developer Community
- Documentación oficial: https://support.google.com/googleplay/android-developer/answer/9859455

---

**Nota:** Esta Privacy Policy está diseñada para cumplir con Google Play Store. Asegúrate de que sea correcta antes de publicar en producción.
