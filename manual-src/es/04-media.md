---
slug: media
number: 4
title: Imágenes, sonido y oclusión
description: "Añade imágenes y sonido a las tarjetas de JustFlip!, descríbelas para VoiceOver, cita sus fuentes y convierte un diagrama con etiquetas en tarjetas de oclusión de imagen, además de las reglas para que todo se vea bien en cualquier dispositivo."
---

# Imágenes, sonido y oclusión {#media number="4"}

::: lede
Algunas cosas son más fáciles de recordar que de describir: un pájaro,
un acorde, un hueso de la mano, cómo se pronuncia una palabra. JustFlip!
permite que una tarjeta muestre una imagen, reproduzca un sonido y, con
la oclusión de imagen, tape partes de un diagrama para que puedas
ponerte a prueba con cada una de sus etiquetas.
:::

::: inthischapter
- Añade imágenes desde Fotos o el portapapeles, y elige dónde van
- Descubre qué pestaña guarda el editor, para no perder nada
- Describe las imágenes para VoiceOver y cita a sus autores
- Pon sonido en una tarjeta, y reproduce varias pistas de Anki
- Convierte un diagrama con etiquetas en una serie de tarjetas de oclusión de imagen
- Prepara imágenes que se vean nítidas, pesen poco y sean visibles en modo oscuro
:::

Nada de este capítulo requiere JustFlip! Pro. Las imágenes, el sonido y
la oclusión de imagen funcionan igual en la versión gratuita.

## Añadir una imagen {#pictures}

Cada cara de una tarjeta tiene su propia imagen. Hay tres formas de
añadirla, y se diferencian en dónde acaba la imagen.

**En el texto.** En la pestaña [Texto]{.ui}, toca el botón de imagen que
está a la izquierda del todo en la barra de formato
([Insertar imagen]{.ui}) y elige una foto. JustFlip! pone el marcador
`![attachment:0]` en el cursor, y la imagen aparece justo ahí en la
tarjeta, entre las palabras que la rodean.

**Como la cara entera.** Cambia a la pestaña [Imagen]{.ui} y toca
[Elegir imagen]{.ui}. Sin texto, la imagen llena la cara, centrada y
escalada para que quepa. Es la opción adecuada para las tarjetas de
«¿Qué es esto?»: una bandera, una hoja, una radiografía.

**Desde el portapapeles.** Copia una imagen desde donde sea y pégala en
el campo de texto. JustFlip! guarda la propia imagen, no un enlace a su
origen, e inserta el marcador por ti.

![La pestaña Imagen del editor de tarjetas, con una foto elegida y los campos de descripción y licencia debajo.](images/manual/{lang}/04-image-tab.jpg){.phone}

Una cara admite una imagen. Si eliges otra, sustituye a la anterior;
para quitar una imagen, abre la pestaña [Imagen]{.ui} y toca
[Quitar]{.ui}.

::: tip
#### En el Mac

El botón de imagen abre tu fototeca de Fotos. Para una imagen que está
en otro sitio (una descarga, una captura de pantalla, un escaneo),
añádela primero a Fotos y luego elígela en el editor de tarjetas.
:::

::: tip
#### Hacer una foto para una tarjeta

Haz primero la foto con la app Cámara y luego elígela desde Fotos en el
editor de tarjetas.
:::

### Dónde va una imagen {#placement}

Una imagen puede acabar en uno de tres sitios. JustFlip! lo decide según
lo que hay en la cara, no con un ajuste:

| En la cara | Dónde va la imagen |
|---|---|
| Una imagen y nada de texto | Llena la cara, centrada |
| Texto con un marcador `![attachment:0]` | Dentro del texto, donde está el marcador |
| Texto sin marcador | Debajo del texto, como un bloque |

El tercer caso es el que obtienes con los mazos que importas
(capítulo 5) y con muchos mazos seleccionados: el archivo indica una
imagen, pero el texto no tiene marcador. Una imagen así no se mueve
cuando editas el texto, y se quita desde la pestaña [Imagen]{.ui}.

Si el marcador está en tu texto y lo borras, la imagen se va con él al
guardar.

::: note
#### Varias imágenes en una cara

Una cara que haces tú admite una imagen. Las tarjetas importadas de
Anki pueden traer varias, cada una con su propio marcador numerado:
`![attachment:0]`, `![attachment:1]`, etc. Borra un marcador y solo
desaparece esa imagen; las demás se quedan.
:::

Una imagen grande en una tarjeta muestra un botón [Ampliar]{.ui}. Abre
la imagen a pantalla completa, donde puedes pellizcar o tocar dos veces
para verla más de cerca.

## Lo que se guarda es la pestaña que está a la vista {#tabs}

Las pestañas [Texto]{.ui}, [Imagen]{.ui} y [Audio]{.ui} parecen tres
cajones de una misma cara. En realidad se parecen más a tres *tipos* de
cara, y [Guardar]{.ui} guarda la de la pestaña que está a la vista:

| Guardado en | Qué conserva esa cara |
|---|---|
| [Texto]{.ui} | El texto; una imagen si está en el texto o debajo; un sonido que la tarjeta ya tuviera |
| [Imagen]{.ui} | La imagen; un sonido que la tarjeta ya tuviera. El texto se descarta |
| [Audio]{.ui} | El sonido y el idioma de esa cara. El texto y la imagen se descartan |

::: gotcha
#### Vuelve a Texto antes de guardar

¿Vas a cambiar el sonido o la imagen de una tarjeta que también tiene
texto? Haz el cambio en la pestaña [Audio]{.ui} o [Imagen]{.ui}, luego
vuelve a [Texto]{.ui} y toca [Guardar]{.ui} ahí. Si guardas en la otra
pestaña, esa cara pierde su texto.
:::

Esa regla te da recetas sencillas para tarjetas mixtas:

- **Texto e imagen:** quédate en la pestaña [Texto]{.ui} y añade la
  imagen con el botón de imagen de la barra.
- **Imagen y sonido:** elige el sonido en la pestaña [Audio]{.ui} y
  guarda. Luego edita la tarjeta, elige la imagen en la pestaña
  [Imagen]{.ui} y vuelve a guardar.
- **Texto y sonido:** elige el sonido en la pestaña [Audio]{.ui} y
  guarda. Luego edita la tarjeta, escribe el texto en la pestaña
  [Texto]{.ui} y guarda.

Las recetas en dos pasos hacen falta porque un sonido elegido en una
tarjeta *nueva* solo se guarda desde la pestaña [Audio]{.ui}. Una vez
que la tarjeta tiene sonido, las otras pestañas lo conservan.

## Describir y citar las imágenes {#descriptions}

Cuando una cara tiene una imagen, aparecen dos campos debajo:
[Descripción de la imagen]{.ui} y [Licencia de la imagen]{.ui}. Los dos
son opcionales, y los dos merecen unos segundos.

### La descripción

VoiceOver lee la descripción en lugar de la imagen. Sin ella, solo dice
«Imagen», lo que no le cuenta nada de la tarjeta a quien no puede verla.

Describe lo que la imagen *muestra*, no lo que *significa*. En una
tarjeta que pregunta «¿Qué pájaro es este?», escribe «Un pájaro pequeño
y marrón con el pecho rojo sobre un poste de una valla», no «Un
petirrojo», que delata la respuesta.

::: note
#### Las descripciones y las pistas habladas son cosas distintas

La descripción es para VoiceOver. La pista hablada del capítulo 3,
`![attachment:0]{una manzana roja}`, es lo que dicen el botón del
altavoz y Leer tarjetas. Una imagen sin pista se queda en silencio
cuando se lee la tarjeta en voz alta, diga lo que diga su descripción.
:::

### La licencia

¿Usas una foto o un dibujo de otra persona? Pon el autor y la licencia
en [Licencia de la imagen]{.ui}, por ejemplo «Foto: Juana Pérez, CC BY
4.0». En este campo funcionan los enlaces escritos como
`[label](https://…)`.

En la tarjeta aparece un pequeño botón ⓘ en el pie. Al tocarlo se abre
una hoja con el texto completo, así el crédito está ahí para quien lo
quiera sin llenar la tarjeta.

![Una tarjeta con una foto y el botón de licencia ⓘ en el pie; encima, la hoja Licencia de la imagen abierta.](images/manual/{lang}/04-licence-sheet.jpg){.phone}

Los mazos seleccionados y los hechos con IA también pueden llevar
licencias, en sus campos `q_image_license` y `a_image_license`
(capítulo 5).

## Tamaño, formatos y sincronización {#size}

La imagen de una tarjeta viaja con la tarjeta. Se guarda dentro de tu
biblioteca y se sincroniza a través de iCloud con todos tus
dispositivos, así que una imagen que añades en el Mac está en tu iPhone
un momento después.

Esa comodidad tiene un precio: cada megabyte se sincroniza con cada
dispositivo. JustFlip! mantiene las imágenes a raya por su cuenta. Al
guardar, una imagen de más de 3.000 píxeles por su lado largo se reduce
a 3.000; una foto opaca se guarda como JPEG, y una imagen con
transparencia la conserva. Las imágenes más pequeñas se guardan
exactamente como son.

Los archivos de sonido se guardan exactamente como los eliges. Una
grabación de tres minutos puede pesar fácilmente más que cien tarjetas
de texto, así que recorta los clips a la parte que necesitas.

| | Funciona | No funciona |
|---|---|---|
| Imágenes | Todo lo que muestre tu fototeca de Fotos; PNG, JPEG, GIF y WebP en importaciones | SVG y otros formatos vectoriales |
| Sonido | Archivos que el sistema reconoce como audio, como `.mp3`, `.m4a` y `.wav` | Vídeo |

::: gotcha
#### Nada de SVG

Los dibujos vectoriales (`.svg`) no se pueden mostrar en una tarjeta.
Exporta antes el dibujo como PNG, a unos 2.000 píxeles de ancho y con
fondo blanco (consulta [Imágenes que funcionan](#good-images)).
:::

## Sonido en una tarjeta {#audio}

Abre la pestaña [Audio]{.ui} y toca [Elegir archivo de audio]{.ui} para
escoger un archivo en Archivos. La pestaña muestra entonces el nombre y
el tamaño del archivo, un botón de papelera para quitarlo y
[Reemplazar audio]{.ui}. Debajo está el [Idioma]{.ui} de esa cara.

JustFlip! no graba desde el micrófono. Graba con Notas de Voz, comparte
la nota en Archivos y elígela desde ahí.

![La pestaña Audio con un archivo de audio elegido: su nombre, su tamaño, el botón de papelera y Reemplazar audio.](images/manual/{lang}/04-audio-tab.jpg){.phone}

### Cómo se reproduce

Nada se reproduce solo. Lo que ves depende de la cara:

- **Una cara que es solo un sonido** muestra un gran botón de
  reproducción en el centro de la tarjeta.
- **Una cara que además tiene texto o una imagen** tiene un pequeño
  botón [Audio]{.ui} en el pie, junto al botón del altavoz. Mientras
  suena el audio, dice [Reproduciendo]{.ui}.

Poner el sonido detiene la voz si está leyendo la tarjeta, y al revés.

### Varias pistas

Las notas de Anki a veces llevan más de un sonido en una cara: una
palabra y luego una frase de ejemplo. JustFlip! los conserva todos, en
su orden original. El botón del pie dice entonces **Audio (2)**,
**Audio (3)**, etc., y abre un menú con una entrada por pista.

::: gotcha
#### Reemplazar una pista las reemplaza todas

El editor muestra solo la primera pista. [Reemplazar audio]{.ui} o el
botón de papelera actúan sobre *todas* las pistas de esa cara. Si
quieres conservar las pistas extra, no toques la pestaña [Audio]{.ui}.
:::

## Oclusión de imagen {#occlusion}

La **oclusión de imagen** convierte una imagen en muchas tarjetas. Tapas
partes de un diagrama con formas, y cada parte tapada se convierte en
su propia tarjeta que pregunta «¿Qué hay aquí debajo?». Es la forma más
rápida de aprenderse un mapa, una lámina de anatomía, un circuito, una
tabla de digitaciones: cualquier imagen llena de etiquetas.

![El editor de oclusión: un diagrama anatómico con rectángulos dibujados sobre las etiquetas, y la fila de herramientas encima.](images/manual/{lang}/04-occlusion-editor.jpg){.shot width=80%}

### Crear tarjetas de oclusión

1. Abre un mazo, toca el botón [Más acciones]{.ui} (•••) y elige
   [Añadir tarjetas de oclusión de imagen]{.ui}.
2. Toca [Seleccionar imagen]{.ui} y elige la imagen.
3. Arrastra sobre la imagen para tapar una zona. Repite con cada
   etiqueta que quieras aprender.
4. Elige un modo, añade el texto opcional y toca
   **Guardar N tarjetas**.

Las herramientas que hay encima de la imagen:

| Herramienta | Qué hace |
|---|---|
| [Rectángulo]{.ui} / [Elipse]{.ui} | Dibuja una zona nueva al arrastrar |
| [Seleccionar]{.ui} | Mueve una zona arrastrándola; cambia su tamaño desde el tirador de la esquina |
| [Deshacer]{.ui} / [Rehacer]{.ui} | Avanza y retrocede por tus cambios |
| [Duplicar zona]{.ui} | Copia la zona seleccionada |
| [Eliminar zona]{.ui} | Quita la zona seleccionada |
| [Cambiar imagen]{.ui} | Cambia la imagen de debajo |

### Dos modos {#occlusion-modes}

En [Modo]{.ui} eliges cuánta parte de la imagen queda oculta mientras
una tarjeta hace su pregunta. En cualquier caso, cada zona se convierte
en su propia tarjeta.

| Modo | Al preguntar | Ideal para |
|---|---|---|
| [Ocultar una, adivinar una]{.ui} | Solo se tapa la zona que se pregunta; ves todas las demás etiquetas | Aprender dónde está cada cosa, con las vecinas como pistas |
| [Ocultar todas, adivinar una]{.ui} | Se tapan todas las zonas; la que se pregunta tiene un borde más marcado y un signo de interrogación | Ponerte a prueba de verdad, sin que las otras etiquetas te den pistas |

Empieza con [Ocultar una, adivinar una]{.ui}. Cuando una imagen te
resulte fácil, una segunda serie de tarjetas en
[Ocultar todas, adivinar una]{.ui} es un buen examen.

### El texto que la rodea

Debajo del modo hay tres campos opcionales:

- **[Encabezado (opcional)]{.ui}**: se muestra encima de la imagen en
  todas las tarjetas. Pon aquí la pregunta: «Nombra el hueso».
- **[Notas de la respuesta (opcional)]{.ui}**: se muestran bajo la
  imagen una vez revelada la respuesta. Útil para una regla
  mnemotécnica o un detalle.
- **[Comentarios (opcional)]{.ui}**: una nota para ti. Se guarda con las
  tarjetas, pero no se muestra durante el repaso.

Luego está [Descripción de la imagen]{.ui}. Como dice el editor,
VoiceOver la lee en lugar de la imagen, así que describe el diagrama
sin delatar ninguna respuesta: «Vista frontal del esqueleto humano» en
vez de una lista de los huesos.

::: gotcha
#### Las tapas ocultan la imagen, no el texto que contiene

Una zona tapa exactamente el área que dibujaste. Si una etiqueta asoma
por fuera de su rectángulo, la respuesta se ve. Dibuja con generosidad:
un margen alrededor de cada etiqueta no cuesta nada.
:::

### Repasar una tarjeta de oclusión {#occlusion-review}

Una tarjeta de oclusión no se voltea. La imagen se queda en su sitio;
toca [Mostrar respuesta]{.ui} arriba (o pulsa la barra espaciadora en un
teclado) y la zona tapada se abre, contorneada, mientras el resto se
queda como estaba. Luego evalúala como cualquier otra tarjeta. Pellizca
para ampliar un diagrama con mucho detalle.

![Una tarjeta de oclusión durante el repaso, antes y después de Mostrar respuesta.](images/manual/{lang}/04-occlusion-review.jpg){.phone}

Las tarjetas de oclusión forman parte de tus repasos normales en el
iPhone, el iPad y el Mac. El Apple Watch las deja fuera y te dice
cuántas tarjetas te esperan en el iPhone.

### Editar una tarjeta de oclusión {#occlusion-edit}

Edita cualquier tarjeta de la serie (mantenla pulsada, o haz clic con
el botón secundario en el Mac, y elige [Editar tarjeta]{.ui}) y
JustFlip! abre el editor de zonas, no el de texto. Ahí puedes mover,
añadir o eliminar zonas, cambiar el modo, el texto o incluso la imagen.

Las zonas que conservas mantienen su historial de repasos. Una zona que
añades se convierte en una tarjeta nueva; una zona que eliminas se lleva
su tarjeta con ella.

::: note
#### Oclusión desde Anki y desde archivos

Las notas de oclusión de imagen propias de Anki, y las del antiguo
complemento Image Occlusion Enhanced, llegan como tarjetas de oclusión
nativas de JustFlip! cuando importas el mazo (capítulo 5). Los archivos
de mazo creados con la skill para agentes de programación también
pueden contener tarjetas de oclusión.
:::

## Imágenes que funcionan {#good-images}

Una tarjeta dibuja tu imagen exactamente como es. No hay ningún fondo
detrás, ni marco, ni corrección automática del contraste. Así las fotos
se ven naturales, y por eso vale la pena aprender algunas costumbres.

::: gotcha
#### Los dibujos de líneas transparentes desaparecen en modo oscuro

Un PNG con líneas negras sobre fondo transparente se ve perfecto en modo
claro. En modo oscuro, la tarjeta de detrás es casi negra y el dibujo
desaparece: líneas, etiquetas, notas en un pentagrama, todo. Antes de
añadir un diagrama, una imagen de una fórmula o un boceto escaneado,
ponle un fondo blanco o claro sólido. La mayoría de los editores de
imagen lo llaman *acoplar*; exportar como JPEG también lo hace. Comprueba
la tarjeta una vez en modo oscuro antes de hacer cincuenta más iguales.
:::

Algunas reglas prácticas más:

1. **Usa imágenes de mapa de bits.** PNG para diagramas, texto y
   dibujos de líneas; JPEG para fotos. Nada de SVG.
2. **Unos 2.000 píxeles por el lado largo es más que suficiente.**
   JustFlip! nunca dibuja una imagen en una tarjeta a más de unos 2.200
   píxeles, y reduce todo lo que pase de 3.000 al guardar. Más
   resolución solo cuesta tiempo de sincronización.
3. **Recorta sin miedo.** Una tarjeta es pequeña. Quita todo lo que no
   sea aquello por lo que preguntas: la imagen se hace más grande gratis.
4. **Que el texto de la imagen sea grande.** Las etiquetas que se leen
   bien en la pantalla de un portátil suelen ser un borrón en una
   tarjeta del iPhone. Ampliar ayuda, pero una tarjeta que tienes que
   ampliar se repasa más despacio.
5. **Una idea por imagen.** Un diagrama con veinte etiquetas da una mala
   tarjeta y veinte buenas tarjetas de oclusión.

## Referencia rápida {#reference .cheatsheet}

| Tarea | Dónde |
|---|---|
| Imagen dentro del texto | Pestaña [Texto]{.ui} → botón de imagen de la barra |
| Imagen como la cara entera | Pestaña [Imagen]{.ui} → [Elegir imagen]{.ui} |
| Imagen desde el portapapeles | Pégala en el campo de texto (⌘V en el Mac) |
| Quitar una imagen | Pestaña [Imagen]{.ui} → [Quitar]{.ui} |
| Describir para VoiceOver | [Descripción de la imagen]{.ui}, debajo de la imagen |
| Citar al autor | [Licencia de la imagen]{.ui} → el botón ⓘ de la tarjeta |
| Añadir un sonido | Pestaña [Audio]{.ui} → [Elegir archivo de audio]{.ui} |
| Reemplazar o quitar un sonido | Pestaña [Audio]{.ui} → [Reemplazar audio]{.ui} o el botón de papelera |
| Nuevas tarjetas de oclusión | Mazo → [Más acciones]{.ui} → [Añadir tarjetas de oclusión de imagen]{.ui} |
| Editar las zonas de oclusión | Edita cualquier tarjeta de la serie |
| Revelar una tarjeta de oclusión | [Mostrar respuesta]{.ui}, o la barra espaciadora |
