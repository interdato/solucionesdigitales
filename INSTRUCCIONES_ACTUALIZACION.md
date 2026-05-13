# Instrucciones para publicar en GitHub Pages

## 1. Subir archivos

Descomprime este ZIP y sube el contenido completo a la raíz del repositorio:

https://github.com/interdato/solucionesdigitales

No subas el ZIP como un solo archivo. La raíz debe contener:

```text
index.html
styles.css
script.js
.nojekyll
README.md
INSTRUCCIONES_ACTUALIZACION.md
assets/
```

## 2. Activar GitHub Pages

Ve a:

Settings → Pages

En `Build and deployment` selecciona:

- Source: Deploy from a branch
- Branch: main
- Folder: /root

Guarda los cambios.

## 3. URL esperada

https://interdato.github.io/solucionesdigitales/

## 4. Cómo actualizar videos

Los videos están en:

```text
assets/videos/
```

Para reemplazar un video, sube uno nuevo con el mismo nombre. Así no tienes que modificar el HTML.

## 5. Cómo actualizar la presentación

Reemplaza estos archivos manteniendo el mismo nombre:

```text
assets/docs/presentacion-interdato-soluciones-digitales.pdf
assets/docs/presentacion-interdato-soluciones-digitales.pptx
```

## 6. Notas comerciales

Cada video incluye una explicación orientada al cliente: qué hace, cómo le sirve y en qué tipo de operación aplica. Esto está pensado para que el prospecto pueda navegar por su cuenta después de escanear el QR.
