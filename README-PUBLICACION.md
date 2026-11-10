# Consultoresca — versión azul tecnológica

Dominio previsto: **https://consultorespatagonicos.com.ar/**.

## Contenido
- `site/index.html`: web institucional, servicios, metodología, tablero demostrativo, contacto.
- `site/assets/`: paleta azul y arte visual del hero derivado de la referencia elegida.
- `site/encuesta.html`, `site/campo.html`, `site/panel.html`: páginas de presentación; **NO son sistemas operativos todavía**.
- `site/privacidad.html` y `site/gracias.html`.
- `netlify.toml`: publica la carpeta `site`.
- `supabase/schema-propuesto.sql`: borrador NO ejecutado de estructura de base propia.

## Cómo desplegar
1. En Netlify crear un sitio nuevo y conectar un **nuevo repositorio GitHub** con este proyecto. No subir ni modificar `comodoro-te-escucha`.
2. Configurar directorio de publicación `site` (ya indicado por `netlify.toml`).
3. Activar notificaciones de **Netlify Forms** para el formulario `consulta-consultoresca`. Comprobar recepción con una consulta de prueba.
4. En Netlify agregar `consultorespatagonicos.com.ar` y `www.consultorespatagonicos.com.ar` como dominios.
5. En DonWeb configurar los DNS **usando exclusivamente los registros que Netlify muestre para este sitio**. No alterar los registros MX/TXT de correo sin verificarlos.
6. Comprobar HTTPS, página de gracias, formulario, navegación móvil, enlaces, y redirección de www.

## Limitaciones actuales
- No se creó ningún proyecto nuevo Supabase, ni se conectó un backend a la encuesta y a los accesos privados.
- El gráfico del sitio es demostrativo con datos ficticios. Esto figura expresamente en pantalla y en CSV.
- Las pantallas de Encuesta, Campo y Panel son informativas, sin captura de datos; nunca publicar las antiguas pantallas Node/SQLite con esta configuración estática.
- La imagen de la ciudad en la portada está basada en un diseño conceptual y no acredita una fotografía documental de Comodoro Rivadavia.
- Se recomienda revisión legal del aviso de privacidad, política de retención y medidas de seguridad antes de recolectar datos personales.

## Diseño
Diseño seleccionado: portada 2 — azules intensos, celestes, degradados, datos sobre ciudad nocturna, blanco; animaciones discretas y compatibilidad móvil. Logo original preservado.
