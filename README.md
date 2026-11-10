# Carstens–Anzulovich Consultora

Sitio institucional de **Carstens–Anzulovich**, preparado para el dominio [consultorespatagonicos.com.ar](https://consultorespatagonicos.com.ar).

## Diseño elegido

Portada tecnológica azul: blanco, azul marino y celeste, imágenes de ciudad nocturna, visualizaciones de datos y animaciones suaves. Se conserva la identidad de la consultora.

## Estructura del proyecto

- `site/index.html`: página institucional.
- `site/assets/`: estilos e imágenes del diseño.
- `site/encuesta.html`, `site/campo.html`, `site/panel.html`: páginas informativas, no módulos operativos todavía.
- `site/privacidad.html`: información de privacidad sujeta a revisión.
- `netlify.toml`: publicación de la carpeta `site` en Netlify.
- `supabase/schema-propuesto.sql`: esquema propuesto, **no ejecutado**.

## Publicación en Netlify

1. Subir a este repositorio los archivos del paquete **consultoresca-azul-github.zip**, conservando su estructura de carpetas.
2. En Netlify elegir `Add new project` → `Import an existing project` → GitHub → `PabloRiquelme1973/ConsultoraCA`.
3. El directorio de publicación debe ser `site` (se encuentra en `netlify.toml`).
4. Verificar la web en el subdominio temporal `.netlify.app` antes de conectar el dominio.
5. Incorporar `consultorespatagonicos.com.ar` en Netlify y copiar a DonWeb únicamente los registros DNS mostrados para este sitio. **No alterar los registros MX, SPF o DKIM del correo**.

## Límites de la primera publicación

El gráfico de portada/tablero utiliza **datos ficticios**. Las encuestas, la aplicación de encuestadores y el panel privado aún no están conectados a Supabase y **no reciben respuestas reales**. No agregar claves secretas al repositorio público.

## Estado

Repositorio inicializado. Pendiente cargar el contenido completo del sitio y conectar Netlify.
