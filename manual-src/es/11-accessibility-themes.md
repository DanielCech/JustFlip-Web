---
slug: accessibility-themes
number: 11
title: Accesibilidad y temas
description: "Cómo funciona JustFlip! con VoiceOver, el texto más grande, Reducir movimiento, Aumentar contraste y Control por voz, cómo elegir un tema y un tamaño de texto, y cómo escribir tarjetas con las que todo el mundo pueda aprender."
---

# Accesibilidad y temas {#accessibility-themes number="11"}

::: lede
JustFlip! se apoya en los ajustes de accesibilidad que ya usas en tu
iPhone, iPad y Mac. No tienes que activar nada en la app. VoiceOver, el
texto más grande, Reducir movimiento y Aumentar contraste simplemente
funcionan. Además, JustFlip! tiene su propio tamaño de texto y cinco
temas, para que la app se lea con comodidad y tenga el aspecto que te
gusta.
:::

::: inthischapter
- Qué ajustes del sistema sigue JustFlip!, y qué cambia cada uno
- Repasa con VoiceOver: voltear, evaluar y oír los huecos
- Ajusta el tamaño del texto, para todo el dispositivo o solo para JustFlip!
- Elige un tema: JustFlip claro, JustFlip oscuro, Niebla, Niebla oscuro o Sistema
- Escribe tarjetas que funcionen para cualquier estudiante, vea u oiga como vea u oiga
:::

## Sigue tus ajustes {#system-settings}

JustFlip! no tiene ningún modo de accesibilidad que activar. Lee los
ajustes de **Ajustes › Accesibilidad** de tu dispositivo y se adapta a
ellos. Esto es lo que cambia cada uno:

| Ajuste del sistema | Qué hace JustFlip! |
|---|---|
| VoiceOver | Lee cada tarjeta, botón y gráfico, con acciones con nombre para voltear y evaluar |
| Texto más grande | Escala el texto de la app, incluido el texto de tus tarjetas |
| Texto en negrita | Dibuja el texto de la app con un grosor mayor |
| Reducir movimiento | Evita que la tarjeta gire al voltearla, y suaviza otras animaciones |
| Aumentar contraste | Cambia a colores de mayor contraste y añade contornos donde el color por sí solo no basta |
| Diferenciar sin color | Añade símbolos, puntos y contornos a los indicadores que si no usarían solo el color |
| Control por voz | Cada botón responde a su nombre visible, y la tarjeta a algunas frases más |

El único ajuste de accesibilidad dentro de la app es tu **tamaño de
texto**, en **Ajustes › Apariencia**. Puedes leer más sobre él en
[Texto más grande](#larger-text).

::: note
#### Nuestro informe público de accesibilidad

Mantenemos un informe sincero y detallado de lo que está implementado y
de lo que aún se está probando, dispositivo por dispositivo, en
https://just-flip.app/accessibility/. Las etiquetas de accesibilidad de
Apple en el App Store se publican categoría a categoría, solo después de
que esa categoría supere las pruebas en dispositivos reales.
:::

## VoiceOver {#voiceover}

VoiceOver lee JustFlip! igual que lee las apps de Apple. Las listas, los
formularios y los Ajustes usan controles estándar, y los elementos
agrupados, como la fila de un mazo o una estadística, se leen como un
solo elemento en lugar de como una ristra de fragmentos.

### Tarjetas y repasos

Para VoiceOver, una tarjeta es **un solo elemento**. Lee la cara que
estás viendo, y una pista te indica que toques dos veces para voltearla.
Después del giro, VoiceOver anuncia «Pregunta» o «Respuesta», para que
siempre sepas en qué cara estás.

En una tarjeta, desliza hacia arriba o hacia abajo para llegar a sus
acciones:

- [Voltear tarjeta]{.ui} le da la vuelta a la tarjeta.
- [Mostrar contenido completo]{.ui} abre una tarjeta demasiado larga en
  una hoja donde puedes leerla entera.
- [Ver imagen a pantalla completa]{.ui} o
  [Ver diagrama a pantalla completa]{.ui} abre una imagen o un diagrama
  a tamaño completo, donde puedes ampliarlo.

Los botones de evaluación se leen con la evaluación primero y los
detalles después: la evaluación, luego cuándo volvería la tarjeta y
luego cuántas veces has elegido esa evaluación en esta sesión.
Después de cada evaluación, VoiceOver te dice dónde estás, por ejemplo
«Tarjeta 4 de 20», y anuncia [Práctica completada]{.ui} al final de la
sesión.

:::: pair
```markdown
La capital de Francia
es {{c1::París}}.
```

::: {.card side="question" spoken="La capital de Francia es espacio en blanco."}
La capital de Francia es [[…]]{.blank}.
:::
::::

**Los huecos nunca se delatan.** En la cara de la pregunta, VoiceOver
dice «espacio en blanco» donde están las palabras ocultas, o lee la
pista si el hueco tiene una. La respuesta solo llega después del giro.

VoiceOver lee el resto de la tarjeta igual que la propia voz de
JustFlip!:

- **Se usan las pistas habladas.** `[iOS]{ai ou ese}` se lee como
  «ai ou ese» (capítulo 3).
- **Las fórmulas** se leen a partir de su pista hablada, o de su código
  TeX cuando no hay pista.
- **Los diagramas** se leen por sus etiquetas, no por sus flechas.
- **Las tablas** se leen fila a fila, celda a celda.
- **Las imágenes** se leen a partir de su descripción (consulta
  [Escribir tarjetas accesibles](#accessible-cards)). Una imagen sin
  descripción se lee simplemente como «Imagen».
- **Las marcas** se leen por su nombre, por ejemplo «Marca roja».

### Listas y acciones

Los menús de mantener pulsado también tienen acciones de VoiceOver, así
que no necesitas el gesto. En la fila de un interés, desliza hacia
arriba o hacia abajo para [Editar interés]{.ui}, [Importar tarjetas]{.ui},
[Exportar archivo]{.ui}, [Exportar estadísticas]{.ui} y [Eliminar]{.ui}.
La fila de un mazo ofrece [Editar mazo]{.ui} y [Eliminar mazo]{.ui}. En
el campo de etiquetas, VoiceOver confirma cada etiqueta al añadirla o
quitarla.

En Estadísticas, los gráficos se pueden explorar punto a punto: cada
punto se lee con su fecha y su valor.

En una tarjeta de oclusión de imagen, la imagen ofrece [Acercar]{.ui},
[Alejar]{.ui} y [Restablecer zoom]{.ui} como acciones, en lugar de
pellizcar.

### En el Apple Watch

El reloj lee cada tarjeta como «Pregunta» o «Respuesta» seguido de su
texto. Para evaluar una tarjeta en el reloj normalmente hay que
mantenerla pulsada (capítulo 8). VoiceOver no puede mantener pulsado,
así que las cuatro evaluaciones también se ofrecen como acciones de la
tarjeta: desliza hacia arriba o hacia abajo para elegir De nuevo,
Difícil, Bien o Fácil.

## Texto más grande {#larger-text}

De entrada, JustFlip! usa el tamaño de texto que hayas fijado para todo
el dispositivo en **Ajustes › Accesibilidad › Pantalla y tamaño del
texto › Texto más grande**. Los botones, las listas, las estadísticas y
el texto de tus tarjetas crecen con él.

También puedes darle a JustFlip! un tamaño propio, independiente del
resto del dispositivo. Ve a **Ajustes › Apariencia**:

![La sección Apariencia de Ajustes: el menú de tema, el interruptor Usar el tamaño de texto del sistema y el control Tamaño del texto con su vista previa.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Usar el tamaño de texto del sistema]{.ui} está activado por defecto.
  Así, JustFlip! usa el tamaño del dispositivo.
- El control [Tamaño del texto]{.ui} elige el tamaño solo para
  JustFlip!. Al moverlo, se desactiva [Usar el tamaño de texto del
  sistema]{.ui} por ti. La línea de debajo, «Así se ven las tarjetas y
  las listas.», muestra el tamaño que estás eligiendo.

El control tiene diez pasos, desde el tamaño más pequeño del sistema
hasta el tercer tamaño de accesibilidad. Los dos tamaños más grandes,
que puedes fijar en iOS, siguen funcionando en JustFlip! cuando vienen
del ajuste de tu dispositivo. Simplemente, el control no los ofrece. A
esos tamaños, la mayoría de las tarjetas ya no caben en la tarjeta, y
acabarías abriendo casi todas en una hoja aparte.

El último paso del recorrido de bienvenida ofrece el mismo control, para
que puedas fijar un tamaño cómodo antes de tu primer repaso.

::: gotcha
#### El texto grande no se encoge para caber

Con el tamaño por defecto, JustFlip! encoge un poco una tarjeta larga
para que quepa (capítulo 3). Con un tamaño de texto mayor, no lo hace.
Tu tarjeta se dibuja exactamente al tamaño que pediste. Lo que no cabe
se difumina abajo, y el botón **•••** (o la acción de VoiceOver
[Mostrar contenido completo]{.ui}) abre el resto. Si eso te pasa en la
mayoría de tus tarjetas, divídelas en otras más cortas. De todos modos,
es bueno para tu memoria.
:::

::: note
#### Lo que aún se está trabajando

La compatibilidad con el texto más grande está casi completa, pero
todavía no se ha probado en dispositivos a todos los tamaños. La única
carencia conocida: a los tamaños más grandes, el título y los botones de
evaluación alrededor de la tarjeta en la pantalla de repaso pueden
quedarse sin espacio. La tarjeta en sí está bien. Si necesitas los
tamaños más grandes, poner el tamaño de texto propio de JustFlip! uno o
dos pasos por debajo mantiene ordenada la pantalla de repaso.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Movimiento, grosor y contraste {#visual}

### Reducir movimiento

Con **Reducir movimiento** activado, la tarjeta ya no gira en 3D al
voltearla. Cambia de cara en el sitio, un poco más rápido. El resto del
movimiento de la app también se suaviza: las tarjetas que salen
volando tras una evaluación, el brillo de las listas mientras cargan,
las ilustraciones del recorrido de bienvenida, las barras de progreso
al llenarse y los resultados del repaso.

### Texto en negrita

**Texto en negrita** hace más grueso el texto de la app, igual que en el
resto de tu dispositivo. El texto más grueso ocupa más sitio, así que
JustFlip! lo tiene en cuenta al calcular si una tarjeta cabe.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Aumentar contraste

Con **Aumentar contraste** activado, JustFlip! cambia a versiones de
mayor contraste de sus colores, en claro y en oscuro. En algunos sitios
añade contornos a lo que, si no, solo indicaría el color:

- la **marca** de una tarjeta recibe un contorno alrededor de su color,
- en una tarjeta de **oclusión de imagen**, la zona por la que se
  pregunta recibe un énfasis adicional,
- los **diagramas**, en la tarjeta y a pantalla completa, también usan
  los colores de mayor contraste.

Cada par de colores que la app usa para el texto se mide contra su fondo
en las apariencias clara, oscura y las dos de Aumentar contraste, y
todos superan una relación de contraste de 4,5:1.

### Diferenciar sin color

Cuando **Diferenciar sin color** está activado, los pequeños indicadores
que usan color ganan también una forma:

- los pequeños indicadores que muestran lo urgente que es una tarjeta y
  cómo la evaluaste por última vez pasan a usar símbolos distintos,
- el mapa de actividad de Estadísticas añade uno, dos o tres puntos para
  una actividad baja, media o alta, y contornea el cuadrado de hoy,
- las zonas de oclusión de imagen reciben un énfasis adicional, como con
  Aumentar contraste.

Algunas cosas nunca dependen del color, tengas los ajustes que tengas:
los botones de evaluación siempre llevan una etiqueta y un símbolo, y la
marca seleccionada en el selector de marcas se señala con un anillo y
una marca de verificación.

## Control por voz y teclados {#voice-control}

**Control por voz** usa los nombres que ves en pantalla, así que
«Pulsar De nuevo», «Pulsar Bien» o «Pulsar Ajustes» funcionan como
esperarías. Algunos controles responden a frases adicionales:

| Di | Hace |
|---|---|
| «Pulsar Voltear tarjeta», «Pulsar Girar tarjeta», «Pulsar Mostrar la otra cara» o «Pulsar Voltear» | Voltea la tarjeta |
| «Pulsar Posponer» o «Pulsar Aplazar» | Abre el menú de posponer durante un repaso |

Control por voz aún no se ha probado de principio a fin en todos los
dispositivos. Los controles deslizantes y los menús de mantener pulsado
son las partes menos probadas. Si un nombre no funciona ahí, «Mostrar
números» siempre funciona.

**Con un teclado**, un repaso no necesita puntero en absoluto: la barra
espaciadora voltea la tarjeta y las teclas del 1 al 4 la evalúan, en el
Mac y en un iPad con teclado físico. La referencia completa está en el
capítulo 8. JustFlip! usa botones, menús e interruptores estándar en
todas partes, pero el **Acceso total con el teclado** aún no se ha
probado de principio a fin.

## Temas {#themes}

Un tema es la paleta de colores con la que se dibuja toda la app. Elige
uno en **Ajustes › Apariencia › Tema**. El menú muestra una pequeña
muestra del tema que tienes ahora:

| Tema | Cómo se ve |
|---|---|
| [Sistema]{.ui} | La paleta dorada de JustFlip!, clara u oscura según tu dispositivo. El valor por defecto. |
| [JustFlip claro]{.ui} | La paleta dorada, siempre clara, tenga lo que tenga configurado tu dispositivo |
| [JustFlip oscuro]{.ui} | La paleta dorada, siempre oscura |
| [Niebla]{.ui} | Una paleta clara, serena y mineral, con azul de agua clara, enebro y salvia |
| [Niebla oscuro]{.ui} | Niebla sobre superficies de un intenso color tinta |

![Los cinco temas uno al lado del otro: Sistema, JustFlip claro, JustFlip oscuro, Niebla y Niebla oscuro.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

El cambio es instantáneo: toda la app se vuelve a pintar en cuanto
eliges un tema, sin reiniciar. Cada tema lleva incorporado el modo claro
u oscuro, así que no hay un interruptor aparte de claro/oscuro. Para
seguir el modo oscuro del dispositivo, elige [Sistema]{.ui}.

::: note
#### Hasta dónde no llegan los temas

El tema es para la propia app. El widget de la pantalla de inicio
mantiene el dorado de JustFlip! y sigue el modo claro u oscuro del
dispositivo. La app del Apple Watch es siempre oscura. Las imágenes de
tus tarjetas se muestran exactamente como son, en todos los temas.
:::

::: gotcha
#### Un tema fijo ignora el modo oscuro

[JustFlip claro]{.ui} y [Niebla]{.ui} siguen claros aunque tu
dispositivo pase al modo oscuro al anochecer, y los dos temas oscuros
siguen oscuros a plena luz del día. Si JustFlip! no sigue tu modo
oscuro, revisa **Ajustes › Apariencia › Tema**. Solo [Sistema]{.ui} lo
sigue.
:::

## Escribir tarjetas accesibles {#accessible-cards}

La app solo puede leer lo que hay en tus tarjetas. Estos hábitos hacen
que un mazo funcione para todo el que lo use, incluido tú, cuando lo
escuchas con Leer tarjetas dando un paseo.

1. **Describe cada imagen.** Cuando una cara tiene una imagen, el editor
   muestra un campo [Descripción de la imagen]{.ui} («Describe la imagen
   (opcional)»). VoiceOver lo lee en lugar de la imagen. Describe lo que
   muestra la imagen: «Un pájaro pequeño y marrón con el pecho rojo
   sobre un poste de una valla» dice mucho más que «foto de pájaro». En
   una tarjeta de «¿Qué pájaro es este?», no pongas el nombre, o la
   descripción delatará la respuesta (capítulo 4).
   La descripción también hace que una tarjeta que es solo imagen se
   pueda encontrar en Spotlight (capítulo 8). Y viaja con el mazo cuando
   lo exportas y lo compartes.
2. **Configura el idioma de cada cara.** El selector de [Idioma]{.ui}
   decide qué voz lee la cara en voz alta con el botón del altavoz y con
   Leer tarjetas (capítulo 7). Una cara sin idioma nunca la lee la
   propia voz de JustFlip!.
3. **Añade pistas habladas donde la lectura falla.** Una pista como
   `$c^2${c al cuadrado}` corrige lo que dice la voz de JustFlip! *y* lo
   que lee VoiceOver, de una sola vez.
4. **Ponles una pista a los huecos cuando haya poco contexto.** Con una
   pista, VoiceOver y la voz leen la pista en lugar de solo «espacio en
   blanco».
5. **No dejes que el color cargue con el significado.** Las marcas se
   leen por su nombre, pero lo que *significa* cada color lo decides tú.
   Si «rojo» significa «examen la semana que viene», ponlo también en
   una etiqueta. Las etiquetas son texto, así que se pueden leer y
   buscar.
6. **Etiqueta bien tus diagramas.** Un diagrama se lee por sus
   etiquetas, así que «Iniciar repaso → ¿Tarjeta pendiente?» dice más
   que «A → B».
7. **Haz tarjetas cortas.** Una tarjeta corta cabe con tamaños de texto
   grandes y en el Apple Watch, y además es más fácil de recordar.

::: gotcha
#### El idioma es para la voz, no para VoiceOver

El selector de [Idioma]{.ui} controla la propia voz de JustFlip!: el
botón del altavoz y Leer tarjetas. VoiceOver lee las tarjetas con la voz
que hayas configurado en los ajustes de VoiceOver. Para una tarjeta en
otro idioma, el botón del altavoz de la tarjeta es la forma más fiable
de oírla bien pronunciada.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
