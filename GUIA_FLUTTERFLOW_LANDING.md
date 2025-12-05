# Guía: Recrear Landing Page en FlutterFlow

## 📋 Estructura General de la Página

```
Column (Scroll: enabled)
├── Header Section (Container)
├── Hero Section (Container)
├── Features Grid (Row → Wrap)
├── Reports Section (Container)
├── Benefits Section (Container)
├── CTA Section (Container)
└── Footer (Container)
```

---

## 🎨 PASO 1: Configurar Colores del Theme

**Settings → App Values → Colors:**
- `primaryBlue`: #00366C
- `secondaryBlue`: #0051a8
- `lightBlue`: #e3eafc
- `veryLightBlue`: #f5f8fd
- `backgroundGray`: #f5f7fa
- `textDark`: #333333
- `textMedium`: #555555
- `textLight`: #666666

---

## 📱 PASO 2: Header Section

### Container (Header)
**Propiedades:**
- Width: Infinite
- Height: 350px
- Background: Linear Gradient
  - Start Color: `primaryBlue` (#00366C)
  - End Color: `secondaryBlue` (#0051a8)
  - Direction: Top Left → Bottom Right
- Padding: 60px (all sides)
- Alignment: Center

### Contenido del Header (Column dentro del Container):
```
Column
├── Image (Logo)
│   ├── Path: Upload "logoEduSysPro2 (1).png"
│   ├── Width: 200px
│   ├── Height: Auto
│   └── Margin Bottom: 20px
│
├── Text (Título)
│   ├── Content: "Sistema de Reportes Escolares"
│   ├── Font Size: 38px
│   ├── Font Weight: Bold
│   ├── Color: White
│   ├── Text Align: Center
│   └── Margin Bottom: 15px
│
└── Text (Subtítulo)
    ├── Content: "Gestión académica digital completa y profesional"
    ├── Font Size: 20px
    ├── Color: White (opacity 95%)
    └── Text Align: Center
```

---

## 🎯 PASO 3: Hero Section

### Container (Hero)
**Propiedades:**
- Width: 90% of screen
- Max Width: 1200px
- Background: White
- Border Radius: 15px
- Padding: 50px
- Margin: -40px auto 40px (para que solape el header)
- Box Shadow: Large (Spread: 30, Blur: 30, Opacity: 0.1)
- Alignment: Center

### Contenido (Column):
```
Column
├── Text (Título)
│   ├── Content: "Digitaliza y profesionaliza la gestión académica de tu colegio"
│   ├── Font Size: 32px
│   ├── Font Weight: Bold
│   ├── Color: primaryBlue
│   ├── Text Align: Center
│   └── Margin Bottom: 20px
│
├── Text (Descripción)
│   ├── Content: "Sistema completo para generar reportes de notas..."
│   ├── Font Size: 18px
│   ├── Color: textMedium
│   ├── Text Align: Center
│   ├── Line Height: 1.8
│   └── Margin Bottom: 30px
│
└── Button (CTA)
    ├── Text: "Solicitar Demostración"
    ├── Background: Linear Gradient (secondaryBlue → primaryBlue)
    ├── Border Radius: 50px
    ├── Padding: 18px horizontal, 45px vertical
    ├── Font Size: 19px
    ├── Font Weight: 600
    ├── Box Shadow: Medium
    └── Action: Navigate to contact page / Open email
```

---

## ✨ PASO 4: Features Grid (6 tarjetas)

### Container (Features Section)
**Propiedades:**
- Width: 90% of screen
- Max Width: 1200px
- Padding: 60px vertical, 20px horizontal
- Background: Transparent

### Wrap o GridView (dentro del Container):
**GridView configuración:**
- Cross Axis Count: 3 (desktop), 2 (tablet), 1 (mobile)
- Main Axis Spacing: 30px
- Cross Axis Spacing: 30px
- Child Aspect Ratio: 1.1

### Feature Card (Repetir 6 veces):

**Container (Card):**
- Background: White
- Border Radius: 12px
- Padding: 35px
- Border Top: 4px solid primaryBlue
- Box Shadow: Medium
- Height: Auto

**Contenido (Column):**
```
Column
├── Text (Icono)
│   ├── Content: "⚡" (cambiar por cada card)
│   ├── Font Size: 48px
│   └── Margin Bottom: 20px
│
├── Text (Título)
│   ├── Font Size: 22px
│   ├── Font Weight: Bold
│   ├── Color: primaryBlue
│   └── Margin Bottom: 15px
│
└── Text (Descripción)
    ├── Font Size: 15px
    ├── Color: textLight
    └── Line Height: 1.7
```

### Los 6 Features:
1. **⚡ Rápido y Eficiente** - "Genera reportes profesionales en segundos..."
2. **🎨 Diseño Profesional** - "Reportes con diseño moderno y limpio..."
3. **🔒 Seguro y Confiable** - "Integración directa con Firebase..."
4. **📱 Acceso Desde Cualquier Lugar** - "Desarrollado en FlutterFlow..."
5. **📊 Reportes Completos** - "Notas por semestre, informe anual..."
6. **✨ Fácil de Usar** - "Interfaz intuitiva y amigable..."

---

## 📋 PASO 5: Reports Section

### Container (Reports)
**Propiedades:**
- Width: 90% of screen
- Max Width: 1200px
- Background: White
- Border Radius: 15px
- Padding: 50px
- Margin: 40px vertical
- Box Shadow: Medium

### Contenido:
```
Column
├── Text (Título)
│   ├── Content: "Tipos de Reportes Disponibles"
│   ├── Font Size: 30px
│   ├── Font Weight: Bold
│   ├── Color: primaryBlue
│   ├── Text Align: Center
│   └── Margin Bottom: 40px
│
└── Row (o Wrap para 3 cards)
    ├── Report Card 1: Primer Semestre
    ├── Report Card 2: Informe Final
    └── Report Card 3: Personalidad
```

### Report Card (Repetir 3 veces):

**Container:**
- Flex: 1 (para que se distribuyan equitativamente)
- Background: Linear Gradient (lightBlue → veryLightBlue)
- Border Radius: 10px
- Border Left: 5px solid secondaryBlue
- Padding: 30px
- Margin: 0 12px

**Contenido (Column):**
```
Column
├── Text (Título)
│   ├── Font Size: 20px
│   ├── Font Weight: Bold
│   ├── Color: primaryBlue
│   └── Margin Bottom: 15px
│
└── Column (Lista de características)
    └── Text (repetir 5 veces)
        ├── Content: "✓ [característica]"
        ├── Font Size: 14px
        ├── Color: textMedium
        └── Padding: 8px vertical
```

### Los 3 Report Types:
1. **📝 Informe Primer Semestre**
   - ✓ 10 notas por asignatura
   - ✓ Promedio semestral
   - ✓ Datos del estudiante
   - ✓ Formato vertical A4
   - ✓ Listo para imprimir

2. **📋 Informe Final Anual**
   - ✓ Ambos semestres lado a lado
   - ✓ Promedio general del año
   - ✓ Asistencia y anotaciones
   - ✓ Formato horizontal A4
   - ✓ Observaciones del docente

3. **👤 Informe de Personalidad**
   - ✓ 32 indicadores conductuales
   - ✓ 7 ámbitos de evaluación
   - ✓ Calificación por semestre
   - ✓ Leyenda de indicadores
   - ✓ Firma de profesor y director

---

## 🎁 PASO 6: Benefits Section

### Container (Benefits)
**Propiedades:**
- Width: 90% of screen
- Max Width: 1200px
- Background: Linear Gradient (primaryBlue → secondaryBlue)
- Border Radius: 15px
- Padding: 50px
- Margin: 40px vertical

### Contenido:
```
Column
├── Text (Título)
│   ├── Content: "Beneficios Comprobados"
│   ├── Font Size: 30px
│   ├── Font Weight: Bold
│   ├── Color: White
│   ├── Text Align: Center
│   └── Margin Bottom: 30px
│
└── Row (4 benefit items)
    ├── Benefit 1: 90%
    ├── Benefit 2: 100%
    ├── Benefit 3: 24/7
    └── Benefit 4: 0
```

### Benefit Item (Repetir 4 veces):

**Container:**
- Flex: 1
- Padding: 20px
- Alignment: Center

**Contenido (Column):**
```
Column
├── Text (Número)
│   ├── Font Size: 48px
│   ├── Font Weight: Bold
│   ├── Color: White
│   ├── Opacity: 0.9
│   └── Margin Bottom: 10px
│
└── Text (Descripción)
    ├── Font Size: 16px
    ├── Color: White
    ├── Opacity: 0.95
    └── Text Align: Center
```

### Los 4 Benefits:
1. **90%** - "Reducción en tiempo de generación de reportes"
2. **100%** - "Eliminación de errores de transcripción"
3. **24/7** - "Disponibilidad del sistema desde cualquier lugar"
4. **0** - "Papel desperdiciado, genera solo cuando necesitas"

---

## 📞 PASO 7: CTA Final Section

### Reutilizar el mismo diseño del Hero Section (PASO 3)
**Cambios:**
- Título: "¿Listo para modernizar tu gestión académica?"
- Descripción: "Únete a los colegios que ya están transformando..."
- Botón: "Contáctanos Ahora"
- Action del botón: Open URL → `mailto:colegio@gmail.com`

---

## 🦶 PASO 8: Footer

### Container (Footer)
**Propiedades:**
- Width: Infinite
- Background: #1a1a1a
- Padding: 40px vertical, 20px horizontal
- Margin Top: 60px

### Contenido (Column):
```
Column (Alignment: Center)
├── Text (Título)
│   ├── Content: "Sistema de Reportes Escolares"
│   ├── Font Size: 16px
│   ├── Font Weight: Bold
│   ├── Color: White
│   └── Margin Bottom: 10px
│
├── Text (Subtitle)
│   ├── Content: "Desarrollado con FlutterFlow & Firebase"
│   ├── Font Size: 13px
│   ├── Color: White
│   ├── Opacity: 0.8
│   └── Margin Bottom: 10px
│
├── Text (Copyright)
│   ├── Content: "© 2025 - Todos los derechos reservados"
│   ├── Font Size: 13px
│   ├── Color: White
│   ├── Opacity: 0.8
│   └── Margin Bottom: 10px
│
└── Row (Contact Info)
    ├── Text + IconButton (Email)
    └── Text (Phone)
```

---

## 📱 PASO 9: Hacer Responsive

### Breakpoints en FlutterFlow:

**Desktop (> 1000px):**
- Features Grid: 3 columnas
- Reports: 3 cards en fila
- Benefits: 4 items en fila
- Max Width: 1200px para todas las secciones

**Tablet (600-1000px):**
- Features Grid: 2 columnas
- Reports: 2 cards en primera fila, 1 en segunda
- Benefits: 2 items por fila
- Hero padding: 40px

**Mobile (< 600px):**
- Features Grid: 1 columna
- Reports: 1 card por fila (Column en lugar de Row)
- Benefits: 2 items por fila
- Header padding: 30px
- Hero padding: 30px
- Título Hero: 24px
- Botones: Full width

### Cómo aplicar en FlutterFlow:
1. Selecciona cada Container/Row/Column
2. Click en "Responsive" tab
3. Configura diferentes valores para Mobile/Tablet/Desktop
4. Usa Conditional Visibility si necesitas ocultar elementos en móvil

---

## 🎨 PASO 10: Animaciones (Opcional)

Agrega animaciones a las cards para mejor UX:

**Para Feature Cards:**
- Animation: Scale + Fade In
- Trigger: On Page Load
- Delay: Escalonado (0ms, 100ms, 200ms, etc.)
- Duration: 600ms

**Para Benefits:**
- Animation: Slide From Bottom
- Trigger: On Page Load
- Duration: 800ms

**Hover Effects (Web):**
En el Custom Code del Container:
```dart
// Agregar MouseRegion wrapper para hover effects
```

---

## ✅ Checklist Final

- [ ] Colores del theme configurados
- [ ] Logo subido y colocado
- [ ] Header con gradiente
- [ ] Hero section con CTA button
- [ ] 6 Feature cards creadas
- [ ] 3 Report type cards
- [ ] Benefits section con 4 items
- [ ] CTA final section
- [ ] Footer con links
- [ ] Responsive configurado para móvil/tablet/desktop
- [ ] Navegación del botón CTA configurada
- [ ] Animaciones aplicadas (opcional)
- [ ] Preview en diferentes tamaños de pantalla

---

## 📝 Notas Adicionales

### Fonts Recomendadas:
- Primary: Roboto o SF Pro (nativa de Flutter)
- Headers: Poppins (más impacto)

### Botón CTA Actions:
```
Navigate To: ContactPage
// O
Launch URL: mailto:colegio@gmail.com?subject=Solicitud de Demostración
```

### Para mejorar SEO (Web):
En Settings → SEO:
- Title: "Sistema de Reportes Escolares | Gestión Académica Digital"
- Description: "Genera reportes de notas y personalidad profesionales..."
- Keywords: "reportes escolares, gestión académica, notas digitales"

---

## 🚀 ¿Necesitas Ayuda?

Si necesitas:
- Custom Widgets específicos
- Código para efectos especiales
- Integración con backend
- Animaciones complejas

¡Avísame y te ayudo con el código específico!
