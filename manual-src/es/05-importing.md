---
slug: importing
number: 5
title: Cómo traer mazos
description: "Importa en JustFlip! paquetes de Anki, hojas de cálculo CSV, mazos hechos con IA y mazos seleccionados, entiende qué pasa cuando vuelves a importar el mismo archivo y exporta un interés para compartirlo o guardarlo."
---

# Cómo traer mazos {#importing number="5"}

::: lede
No tienes por qué escribir tú cada tarjeta. JustFlip! lee paquetes de
Anki, hojas de cálculo y archivos de mazo escritos por una IA, y puede
devolverte un interés en un único archivo. Este capítulo muestra por
dónde entra cada tipo de archivo, qué se trae y las pocas reglas que
deciden si una importación añade tarjetas o actualiza las que ya tienes.
:::

::: inthischapter
- Encuentra la importación en el iPhone, el iPad y el Mac
- Trae un mazo de Anki y lee el informe de importación
- Convierte una hoja de cálculo en un mazo
- Importa mazos hechos por una IA o de la biblioteca seleccionada
- Qué hace volver a importar, antes de hacerlo
- Exporta un interés para guardarlo o compartirlo
:::

Importar forma parte de la versión gratuita, como todo lo de este
capítulo.

## Dónde está la importación {#where}

Toda importación empieza en la pantalla **Intereses**. JustFlip!
reconoce el archivo por su nombre y su contenido, así que los mismos
puntos de entrada admiten todos los formatos.

| En | Cómo |
|---|---|
| iPhone, iPad | El menú [Añadir o importar]{.ui} (el botón de la bandeja) → [Importar tarjetas]{.ui} |
| iPhone, iPad | En Archivos, Mail o Safari: comparte el archivo, o ábrelo con JustFlip! |
| iPad, Mac | Arrastra archivos a la lista de intereses; aparece [Soltar para importar]{.ui} |
| Mac | **Archivo › Import Cards…** (⇧⌘I) o **Archivo › Import Interest Archive…** |
| Cualquiera | Mantén pulsado un interés → [Importar tarjetas]{.ui}: un archivo CSV o de Anki directamente a ese interés |
| Cualquiera | [Añadir o importar]{.ui} → [Pegar tarjetas]{.ui}: tarjetas que has copiado (consulta [Pegar tarjetas](#paste)) |

La importación principal acepta varios archivos a la vez, y carpetas
enteras: se importan todos los archivos compatibles que contengan.

![El menú Añadir o importar de la pantalla Intereses, con Importar tarjetas y Pegar tarjetas.](images/manual/{lang}/05-import-menu.jpg){.phone}

### En qué se convierte cada archivo

| Archivo | Qué es | Dónde acaba |
|---|---|---|
| `.apkg`, `.colpkg` | Un mazo o una colección de Anki | Un interés que eliges; un mazo por cada mazo de Anki |
| `.csv` | Una hoja de cálculo, una tarjeta por fila | Un interés que eliges; siempre un mazo nuevo |
| `.flashcards` | Un archivo de mazo, solo texto, hecho por una IA o seleccionado | El interés indicado dentro del archivo |
| `.flashcards.zip` | Un archivo de mazo con imágenes y sonido, o un interés exportado | El interés indicado dentro del archivo |

Con los archivos de Anki y CSV, JustFlip! te pregunta primero dónde
poner las tarjetas. La hoja [Importar tarjetas]{.ui} tiene un menú
[Interés]{.ui} (que incluye [Nuevo interés...]{.ui}) y, para una hoja de
cálculo, un [Nombre del mazo]{.ui}. Toca [Continuar]{.ui}.

Cuando la importación crea un interés nuevo, la hoja también ofrece
[Incluir en la búsqueda del dispositivo]{.ui}, que decide si sus
tarjetas pueden aparecer en Spotlight (capítulo 8).

## Mazos de Anki {#anki}

JustFlip! importa los paquetes de mazo (`.apkg`) y de colección
(`.colpkg`) de Anki, tanto de versiones antiguas como actuales. En
Anki, usa **Archivo › Exportar**, elige *Paquete de mazo de Anki* e
incluye los archivos multimedia. Luego importa el archivo como se
explica arriba.

Si quieres traer también tu progreso, marca además *Include scheduling information* (incluir la información de programación) al exportar.

La promesa es sencilla: **se trae el contenido de aprendizaje, no la
presentación de Anki.** Llegan tus palabras, imágenes, sonidos,
fórmulas y etiquetas. También puede venir tu progreso de repaso. Los estilos y los scripts de Anki se quedan atrás.

### Qué se trae

- **Todas las tarjetas.** Cada tarjeta de Anki se convierte en una
  tarjeta de JustFlip!. Funcionan los tipos de nota anverso/reverso,
  invertida e invertida opcional.
- **Notas cloze, divididas.** Una nota con `{{c1::…}}`, `{{c2::…}}` y
  `{{c3::…}}` da tres tarjetas de JustFlip!, una por número, igual que
  en Anki. Cada tarjeta oculta su propio número y muestra los demás
  rellenos. Una pista como `{{c1::París::capital}}` se conserva.
- **Imágenes**, en línea, en el orden en que aparecen. El texto
  alternativo de una imagen de Anki se convierte en lo que dice la voz
  por ella.
- **Sonido.** Cada `[sound:…]` de una cara se conserva, en orden
  (capítulo 4).
- **Oclusión de imagen**, tanto de la herramienta propia de Anki como
  del antiguo complemento Image Occlusion Enhanced. Las dos se convierten
  en tarjetas de oclusión nativas.
- **Formato**: negrita, cursiva, listas, enlaces, tablas pequeñas,
  matemáticas, subíndices y superíndices.
- **Etiquetas.**
- **La estructura de mazos, aplanada.** JustFlip! no tiene submazos, así
  que `Idiomas::Inglés::Verbos` se convierte en un único mazo llamado
  **Idiomas / Inglés / Verbos**.
- **Tu progreso de repaso**, si la exportación incluye la información de programación. Cada tarjeta que hayas estudiado conserva su intervalo, su facilidad, su fecha de repaso y sus fallos, y su registro de repasos llega como historial. Así, un mazo que llevas años estudiando sigue donde estaba. Las tarjetas suspendidas llegan retiradas. Desactiva [Conservar el progreso de Anki]{.ui} en la hoja de importación si prefieres que todas empiecen como nuevas.

### Qué se queda en Anki

- **Los parámetros FSRS de Anki.** Si usas FSRS en Anki, no se importan sus parámetros ni el estado de memoria de cada tarjeta. La tarjeta conserva su intervalo, su fecha de repaso y su registro de repasos, y recibe la facilidad predeterminada.
- **El progreso de mazos compartidos.** Un mazo descargado que nunca estudiaste no tiene historial que traer, así que sus tarjetas empiezan como nuevas.
- **Los estilos.** El CSS personalizado, las fuentes y los colores se
  simplifican.
- **El código.** El JavaScript y los complementos nunca se ejecutan, y
  no se conservan.
- **Todo lo que está en internet.** Las imágenes remotas, las páginas
  incrustadas y los iframes no se descargan.
- **El vídeo.**
- **Las banderas.** Las banderas de tarjeta de Anki no se trasladan.
- **La pregunta repetida.** Anki vuelve a mostrar la pregunta en la cara
  de la respuesta; JustFlip! voltea la tarjeta en el sitio, así que esa
  copia se descarta. Las tarjetas de huecos son la excepción, porque ahí
  la frase repetida *es* la respuesta.

::: gotcha
#### Una nota cloze de Anki son varias tarjetas

Un mazo que en Anki muestra 300 notas puede llegar como 700 tarjetas.
No es duplicación: cada número de cloze es una tarjeta, en Anki y en
JustFlip!. El recuento de la hoja de importación es el número de
tarjetas.
:::

::: gotcha
#### Las tarjetas importadas no tienen idioma

Anki no guarda en qué idioma está cada campo, así que todas las
tarjetas importadas empiezan con su [Idioma]{.ui} en **Ninguno**, y una
cara sin idioma nunca se lee en voz alta (capítulo 3). Si quieres
escuchar un mazo importado, pon el idioma en sus tarjetas.
:::

### La hoja de importación {#anki-report}

Al importar un único archivo de Anki desde el menú
[Añadir o importar]{.ui}, desde Archivos o arrastrándolo, se abre
[Importar desde Anki]{.ui}. Primero lee el paquete
([Comprobando el paquete…]{.ui}, [Descomprimiendo…]{.ui},
[Leyendo tarjetas…]{.ui}) y luego muestra [Listo para estudiar]{.ui}:
cuántos mazos de Anki, [Tarjetas]{.ui}, [Imágenes]{.ui} y [Audio]{.ui}
ha encontrado.

Si el paquete contiene tarjetas que ya has estudiado, la hoja muestra también [Conservar el progreso de Anki]{.ui}, activado por defecto. Con él activado, esas tarjetas conservan su programación y su historial de repaso de Anki. Si lo desactivas, todas las tarjetas empiezan de cero.

![La hoja Importar desde Anki: el resumen, Qué ha cambiado y Opciones.](images/manual/{lang}/05-anki-report.jpg){.phone}

En [Qué ha cambiado]{.ui} está el informe de importación: una frase
sencilla por cada cosa que conviene saber antes de confirmar. Por
ejemplo:

- *240 tarjetas conservan su programación y su historial de repaso de Anki.* (Con un mazo compartido o con [Conservar el progreso de Anki]{.ui} desactivado: *Las tarjetas empiezan de cero aquí. Tu historial de repaso se queda en Anki.*)
- *Las respuestas ya no repiten la pregunta: JustFlip la mantiene en
  pantalla al girar.*
- *No se pudieron leer 12 imágenes y se han dejado fuera.*
- *3 tarjetas no tenían nada en la cara de la pregunta y se han
  omitido.*
- *2 campos procedían de complementos de Anki y se han dejado fuera.*

No se escribe nada *dentro* de tus tarjetas. Una imagen que falta
simplemente falta, y el informe es el único sitio que lo dice.

En [Opciones]{.ui} están los [Mazos]{.ui} que creará la importación, y
una única elección, [Si ya tienes estas tarjetas]{.ui}:

| Opción | Tarjetas que ya importaste de este paquete |
|---|---|
| [Añadir una copia nueva]{.ui} | No se tocan; el paquete entero se vuelve a añadir, como mazos nuevos. Es la opción por defecto |
| [Omitir las que ya tengo]{.ui} | Se quedan como están; solo se añaden las tarjetas nuevas |
| [Actualizarlas y mantener mi progreso]{.ui} | Su texto, imágenes y etiquetas se actualizan a partir del archivo; tu programación no se toca |

JustFlip! recuerda de qué nota y tarjeta de Anki viene cada tarjeta
importada, así que la correspondencia funciona incluso después de que
edites la pregunta en JustFlip!. Toca [Importar]{.ui} para añadir las
tarjetas.

::: tip
#### Actualizar un mazo que sigues estudiando en Anki

Sigue trabajando en Anki, vuelve a exportar e importa con
[Actualizarlas y mantener mi progreso]{.ui}. Las correcciones se
traen, las notas nuevas se añaden y tu programación de JustFlip! sigue
siendo tuya.
:::

::: gotcha
#### La importación rápida se salta la elección

Dos vías de Anki importan directamente, sin hoja y siempre como copia
nueva: [Importar tarjetas]{.ui} desde el menú de un interés, y varios
archivos de Anki elegidos a la vez. Para omitir o actualizar tarjetas
que ya tienes, importa los archivos de uno en uno desde el menú
[Añadir o importar]{.ui}.
:::

## Hojas de cálculo (CSV) {#csv}

Un archivo CSV es la forma más sencilla de pasar una lista a JustFlip!:
una lista de vocabulario, un glosario, una exportación de otra app.
Cada fila es una tarjeta; una columna es la pregunta y otra, la
respuesta.

```csv
Pregunta,Respuesta
the dog,el perro
the cat,el gato
"the house, the home",la casa
```

Después de [Continuar]{.ui}, [Importar CSV]{.ui} muestra una vista
previa en directo:

- **[Separador]{.ui}**: coma, punto y coma, barra vertical o tabulador.
  JustFlip! lo deduce de las primeras filas; cámbialo si las columnas
  no se ven bien.
- **[Omitir la primera fila como encabezado]{.ui}**: desactivado al
  principio. Actívalo cuando tu primera fila contenga los títulos de
  las columnas.
- **[Asignación de columnas]{.ui}**: elige qué columna es el
  [Anverso (pregunta)]{.ui} y cuál el [Reverso (respuesta)]{.ui}. Las
  demás columnas se ignoran.
- **[Vista previa]{.ui}**: las primeras filas tal como se van a leer.

Toca **Importar (N)** cuando todo se vea bien.

![La vista previa de Importar CSV con el separador, el interruptor del encabezado, la asignación de columnas y una vista previa de las filas.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Algunos detalles que te ahorran un segundo intento:

- Pon un campo entre comillas dobles cuando contenga el separador o un
  salto de línea; dentro de él, escribe una comilla como `""`.
- El texto puede usar el marcado de tarjeta del capítulo 3: negrita,
  matemáticas, huecos. Un `{{c1::…}}` en una celda CSV sigue siendo
  **una** tarjeta con todos sus huecos; las tarjetas de CSV nunca se
  dividen como las notas cloze de Anki.
- Una fila con la pregunta vacía se omite. Una fila con la respuesta
  vacía se importa como una tarjeta sin respuesta.
- Las tarjetas de CSV no tienen idioma, ni imágenes, ni etiquetas.

::: gotcha
#### La fila de encabezado se convierte en tarjeta

[Omitir la primera fila como encabezado]{.ui} empieza desactivado. Si
se te olvida, los títulos de tus columnas se convierten en una tarjeta
llamada «Pregunta» cuya respuesta es «Respuesta». Revisa la primera
fila de la vista previa antes de importar.
:::

::: gotcha
#### Un CSV nunca actualiza nada

Cada importación de CSV crea un mazo **nuevo**, aunque ya exista un
mazo con el mismo nombre: acabas con dos. Para cambiar tarjetas que
importaste de una hoja de cálculo, edítalas en JustFlip!, o elimina el
mazo antiguo antes de importar el archivo corregido.
:::

## Mazos hechos con IA {#ai}

El mazo con el que más fácil se aprende es el que sale de *tu* material:
tus apuntes, un capítulo, la transcripción de una clase. JustFlip! no
habla con ninguna IA por sí misma. En su lugar, la web le da a tu IA las
instrucciones para escribir un archivo de mazo de JustFlip!, y tú
importas el resultado.

| Página | Para | Obtienes |
|---|---|---|
| [Prompt para IA](https://just-flip.app/ai-prompt.html) | Cualquier IA de chat: ChatGPT, Claude, Gemini | Un archivo `.flashcards` solo de texto |
| [Skill para IA](https://just-flip.app/ai-skill.html) | Un agente de programación que puede leer archivos de tu ordenador | Un `.flashcards.zip`, con imágenes y sonido |

Una IA de chat solo puede devolver texto, así que la página del prompt
para IA pide un mazo solo de texto. Un agente de programación puede
abrir tus imágenes y audios locales y empaquetarlos en un zip, con
descripciones, licencias e incluso oclusión de imagen.

Importa el archivo como cualquier otro. El archivo indica su propio
interés y sus mazos, así que no hay hoja de configuración: JustFlip!
usa un interés con ese nombre si lo tienes, y si no, lo crea. Un
archivo de mazo también puede fijar el idioma de cada mazo, para que
las tarjetas estén listas para leerse en voz alta.

::: tip
#### Revisa antes de aprender

Una IA puede equivocarse con total seguridad. Echa un vistazo a un mazo
nuevo antes de tu primer repaso, y corrige o elimina lo que te parezca
dudoso. Diez minutos de edición son mejores que semanas repasando una
respuesta equivocada.
:::

## Pegar tarjetas {#paste}

A veces las tarjetas ya están en tu portapapeles: la respuesta de una
IA de chat, una columna de una hoja de cálculo, una lista en Notas.
Elige [Añadir o importar]{.ui} → [Pegar tarjetas]{.ui}. Como explica su
nota [Cómo funciona]{.ui}, copias las tarjetas (una por línea, con la
pregunta y la respuesta separadas por una coma) y tocas Pegar. JustFlip!
encuentra las tarjetas en lo que copiaste, incluso dentro del bloque de
código de una IA de chat, e ignora el texto de alrededor.

Una lista pegada pasa por las mismas hojas [Importar tarjetas]{.ui} e
[Importar CSV]{.ui} que un archivo CSV, a un mazo llamado
**Tarjetas pegadas** salvo que lo cambies. Un archivo de mazo pegado
(el JSON que escribe una IA a partir de la página del prompt para IA)
se importa como un archivo `.flashcards`. Nada sale de tu dispositivo.

## Mazos seleccionados {#curated}

La [página de mazos](https://just-flip.app/decks/) de la web es una
pequeña biblioteca de mazos ya hechos (idiomas, música, matemáticas,
programación y ciencias) en todos los idiomas que habla la app. Toca
**Descargar mazo** y abre el archivo con JustFlip!. Son archivos
`.flashcards` y `.flashcards.zip` normales, así que todo lo que se
explica en [Importar de nuevo el mismo archivo](#reimport) se les
aplica también.

## Importar de nuevo el mismo archivo {#reimport}

Los archivos de mazo (`.flashcards` y `.flashcards.zip` de una IA, de la
biblioteca seleccionada o de tu propio editor) están pensados para
importarse una y otra vez. Corrige una errata en el archivo, añade diez
tarjetas, impórtalo: tu mazo se actualiza en lugar de duplicarse.

Así es como JustFlip! los hace corresponder:

1. **El interés** es el que tiene el nombre de interés del archivo. Las
   mayúsculas y los espacios sueltos no importan.
2. **El mazo** es el de ese interés con *exactamente* el nombre de mazo
   del archivo.
3. **Cada tarjeta** se identifica por su **texto de pregunta**,
   exactamente como está escrito. Una coincidencia se actualiza en el
   sitio: su respuesta, sus imágenes y sus sonidos se sustituyen por los
   del archivo, y su progreso se conserva. Una tarjeta sin coincidencia
   se añade.

Las tarjetas que están en tu mazo pero no en el archivo no se tocan;
una importación nunca elimina nada.

::: gotcha
#### Dos tarjetas, una pregunta

Como las tarjetas se identifican por su pregunta, dos tarjetas de un
mismo mazo con el mismo texto de pregunta («¿Qué nota es esta?»,
«Traduce:») acaban siendo una sola tarjeta, incluso en una importación
completamente nueva. Dale a cada tarjeta su propia pregunta, o lleva la
consigna común al nombre del mazo.
:::

::: gotcha
#### Las tarjetas que son solo imagen se añaden cada vez

Una tarjeta sin ningún texto de pregunta (solo una imagen) no se puede
hacer corresponder, así que nunca se fusiona. Eso mantiene intacto un
mazo de imágenes de «¿Qué es esto?», pero también significa que, al
volver a importar el archivo, esas tarjetas se añaden por segunda vez.
En un archivo de mazo, omite por completo el campo `q` en esas
tarjetas: un `"q": ""` vacío cuenta como texto de pregunta y se fusiona
con todos los demás vacíos.
:::

::: gotcha
#### Tus cambios no sobreviven a una reimportación

Actualizar una tarjeta sustituye su contenido por el del archivo. Si
corregiste una respuesta en JustFlip!, haz la misma corrección en el
archivo, o la siguiente importación volverá a poner la respuesta
antigua. Y si cambias el nombre del mazo en JustFlip!, el archivo ya no
lo encuentra: la siguiente importación crea un mazo nuevo con el nombre
antiguo.
:::

Los paquetes de Anki siguen su propia regla: la elección de
[la hoja de importación](#anki-report). Los archivos CSV nunca se hacen
corresponder.

## Exportar y compartir {#export}

Para llevarte un interés, mantenlo pulsado (clic con el botón
secundario en el Mac) y elige [Exportar archivo]{.ui}. En el Mac,
**Archivo › Export Interest…** (⇧⌘E) hace lo mismo con el interés
seleccionado. JustFlip! escribe un solo archivo,
*Nombre del interés*.flashcards.zip, y te pregunta dónde guardarlo.

El archivo contiene todo lo de ese interés: cada mazo y tarjeta, las
imágenes y los sonidos, y **todo tu progreso de repaso**. Guárdalo en
Archivos o en iCloud Drive, envíalo por AirDrop o mándalo como
cualquier otro archivo.

Importar un archivo exportado restaura exactamente ese interés. Su
interés, sus mazos y sus tarjetas se identifican por los
identificadores ocultos que lleva el archivo, no por sus nombres, así
que nada se duplica: también se encuentran los mazos renombrados.

::: gotcha
#### Un archivo exportado trae consigo su programación

Importar un archivo exportado pone la programación de cada tarjeta tal
como estaba guardada en él. Si importas un archivo antiguo sobre un
interés que sigues estudiando, esas tarjetas vuelven al punto en que
estaban cuando exportaste. Tu historial de repasos se fusiona, no se
duplica. Las tarjetas que añadiste después de la exportación se quedan,
y las que eliminaste después vuelven.
:::

::: note
#### Compartir un mazo con alguien

Un archivo exportado también contiene tu progreso, y quien lo importe
recibe tu programación para esas tarjetas. Para una copia limpia,
comparte en su lugar el archivo de mazo original: el `.flashcards` o
`.flashcards.zip` que importaste.
:::

El mismo menú tiene [Exportar estadísticas]{.ui}, como
[Hoja de cálculo (CSV)]{.ui} o [Datos completos (JSON)]{.ui}. Esos
archivos son para leer y analizar, no para volver a importar
(capítulo 9). Para una copia de seguridad de toda tu biblioteca,
consulta el capítulo 10.

## Cuando una importación te sorprende {#troubleshooting .cheatsheet}

| Lo que ves | Por qué, y qué hacer |
|---|---|
| Menos tarjetas que filas o notas | Se fusionaron tarjetas con el mismo texto de pregunta (archivos de mazo), o se omitieron filas con la pregunta vacía (CSV) |
| Más tarjetas que notas de Anki | Cada número de cloze es su propia tarjeta: es lo esperado |
| El mazo apareció dos veces | Un CSV siempre crea un mazo nuevo; una importación de Anki con [Añadir una copia nueva]{.ui} añade mazos nuevos |
| Las tarjetas que son solo imagen se duplicaron | No se pueden hacer corresponder al reimportar; elimina las sobrantes, o importa en un mazo nuevo |
| Las tarjetas importadas no suenan | Las tarjetas de Anki y CSV no tienen idioma: ponles uno (capítulo 3) |
| La primera tarjeta es «Pregunta / Respuesta» | Activa [Omitir la primera fila como encabezado]{.ui} |
| Todo el texto está en una sola columna | Cambia el [Separador]{.ui} en la vista previa del CSV |
| Falta una imagen | Revisa el informe de Anki, y recuerda que SVG no se admite (capítulo 4) |
| Mi corrección desapareció tras una importación | La versión del archivo la sustituyó: corrige también el archivo |
| La programación de una tarjeta ha retrocedido | Importaste un archivo exportado más antiguo de ese interés |
