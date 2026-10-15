---
slug: statistics-ask-ai
number: 9
title: Estadísticas y Preguntar a la IA
description: "Cómo mide JustFlip! las tarjetas pendientes, el dominio, las rachas y la retención, cómo leer la pantalla Estadísticas con honestidad y cómo Preguntar a la IA convierte tu historial de repasos en un informe de estudio para tu propio tutor de IA."
---

# Estadísticas y Preguntar a la IA {#statistics-ask-ai number="9"}

::: lede
Cada evaluación que das es una pequeña prueba sobre tu memoria.
JustFlip! las guarda todas, y este capítulo te enseña a leerlas: los
números que ves cada día, la pantalla Estadísticas, más a fondo, y
Preguntar a la IA, que convierte lo que sabes y lo que se te sigue
escapando en unas instrucciones para la IA de chat que elijas.
:::

::: inthischapter
- Entiende los recuentos de pendientes, el dominio y las rachas, y cómo se calcula cada uno
- Lee la retención, el mapa de actividad, la clasificación de mazos y la previsión
- Distingue «aprender mejor» de «simplemente repasar más»
- Dale instrucciones a ChatGPT, Claude o Gemini con un informe de estudio de Preguntar a la IA
- Exporta tus estadísticas como hoja de cálculo o como datos JSON completos
:::

## Los números que ves cada día {#everyday}

No necesitas la pantalla Estadísticas para saber qué tal vas. Hay tres
números que aparecen por toda la app, y todos son gratis.

| Número | Dónde lo ves | Qué significa |
|---|---|---|
| **Pendientes** | Hoy, las filas de mazos, la lista de tarjetas | Las tarjetas a las que les ha llegado la fecha del próximo repaso |
| **Dominio** | Las filas de intereses y mazos | La proporción de tarjetas cuya evaluación *más reciente* fue Bien o Fácil |
| **Racha** | Hoy, como «*N* días seguidos» | Días seguidos con al menos un repaso |

### Pendientes

Una tarjeta está pendiente cuando ha pasado su fecha de repaso
programada. Hoy suma las tarjetas pendientes de todos tus intereses,
junto con las tarjetas nuevas que permita el día, y te da una
estimación como «Unos 6 min». Cuando no hay nada pendiente, Hoy dice
[Todo al día]{.ui} y muestra una pequeña franja de los
[Próximos 7 días]{.ui}, para que veas venir el trabajo de mañana. Cómo
se eligen las fechas de repaso es el tema del capítulo 6.

### Dominio

El dominio de un mazo cuenta todas las tarjetas cuya evaluación **más
reciente** fue Bien o Fácil y lo divide por el número de tarjetas del
mazo. Las tarjetas que nunca has repasado también cuentan, como aún no
dominadas, así que un mazo recién importado empieza en el 0 %. El
dominio de un interés es la media del dominio de sus mazos, y todos los
mazos pesan lo mismo sea cual sea su tamaño.

::: note
#### El dominio se mueve en los dos sentidos

Como solo cuenta la última evaluación, el dominio es una foto fija, no
un trofeo. Pulsa De nuevo en una tarjeta que te sabías la semana pasada
y esa tarjeta deja de contar hasta que la vuelvas a acertar. De eso se
trata: el número te dice lo que sabes *hoy*.
:::

### Racha

Tu racha cuenta los días en los que repasaste al menos una tarjeta. Con
una basta. Además tienes un día de gracia: si todavía no has repasado
hoy, la racha de ayer se mantiene hasta que acabe el día.

JustFlip! es comprensivo con algún día suelto sin repasar. Hasta **dos
días sin repasar** dentro de tu racha actual se salvan automáticamente,
así que un solo día ajetreado no echa por tierra un hábito de un mes.
Los días salvados en sí no suman al recuento. Si quieres un aviso antes
de que se rompa una racha, activa [Rescate de racha]{.ui} en
**Ajustes › Recordatorios**. Envía un recordatorio por la tarde cuando
aún no has repasado ese día.

## Abrir Estadísticas (Pro) {#opening}

La pantalla Estadísticas completa es una función **Pro**. Ábrela desde
el menú [Ajustes]{.ui} (el icono del engranaje) de arriba de la lista de
intereses y elige [Estadísticas]{.ui}. Sin Pro, la opción del menú lleva
un candado y abre la pantalla de Pro. Una prueba gratuita de Pro también
la desbloquea.

![La pantalla Estadísticas: el selector de interés, las cuatro fichas de resumen y las etapas de la colección.](images/manual/{lang}/09-statistics-overview.jpg){.phone}

Estadísticas siempre muestra **un interés cada vez**. Elígelo en
[Alcance]{.ui}, arriba. Todo lo que hay debajo, desde las fichas de
resumen hasta la previsión, suma todos los mazos de ese interés. Así los
números son comparables a lo largo del tiempo. Para comparar dos temas,
cambia el selector de uno a otro.

La pantalla se actualiza sola después de repasar, así que puedes
dejarla abierta en un iPad o un Mac junto a una sesión de estudio.

### Las fichas de resumen

| Ficha | Qué muestra |
|---|---|
| [Retención consolidada]{.ui} | Con qué frecuencia recordaste tarjetas *consolidadas* en los [Últimos 30 días]{.ui} (consulta [Retención](#retention)) |
| [Repasos]{.ui} | Cuántos repasos hiciste en los [Últimos 7 días]{.ui}, hoy incluido |
| [Racha actual]{.ui} | Tu racha en este interés, más la más larga que has tenido |
| [Pendiente ahora]{.ui} | Las tarjetas pendientes ahora mismo, más cuántas vencen mañana |

La racha se calcula aquí igual que en Hoy, pero solo con los repasos
del interés seleccionado. Puede ser más corta que tu racha de Hoy, que
cuenta todos los intereses.

### Etapas de la colección

En [Colección]{.ui}, cada tarjeta del interés se clasifica en una de
cuatro etapas:

| Etapa | Leyenda | Significado |
|---|---|---|
| [Nuevas]{.ui} | Por descubrir | Nunca repasadas |
| [Aprendiendo]{.ui} | Construyendo memoria | Se están aprendiendo, o reaprendiendo tras un olvido |
| [Repasando]{.ui} | Reforzando | En el ciclo de repaso habitual |
| [Graduadas]{.ui} | Dominadas | Intervalos de 30 días o más |

Una colección sana se va desplazando hacia la derecha con las semanas.
El capítulo 6 explica cómo pasa una tarjeta de una etapa a otra.

::: gotcha
#### Pendiente ahora no es lo mismo que Hoy

[Pendiente ahora]{.ui} cuenta **todas** las tarjetas del interés cuya
fecha de repaso ha pasado, incluidas las que has pospuesto. Hoy solo
ofrece lo que cabe en una sesión: las tarjetas pospuestas se quedan
fuera, y [Tarjetas por sesión]{.ui} y [Tarjetas nuevas al día]{.ui}
limitan el resto. Un Pendiente ahora grande junto a una sesión de Hoy
corta es normal, no un error.
:::

## Retención: general y consolidada {#retention}

La retención responde a una pregunta: *cuando salió una tarjeta, ¿la
recordaste?* Un repaso cuenta como recordado cuando lo evaluaste con
**Bien o Fácil**. De nuevo y Difícil cuentan ambos como no recordado.
<!-- VERIFY: whether a "Seen" response is stored as a review and so also counts as not remembered in retention, reviews and streaks. -->

El gráfico [Retención consolidada]{.ui} representa esa tasa por día.
Elige el periodo con el control segmentado: [7D]{.ui}, [30D]{.ui},
[90D]{.ui} o [All]{.ui}.

![El gráfico de retención en 90 días. Cada punto es la proporción de repasos consolidados recordados en un día.](images/manual/{lang}/09-retention-chart.jpg){.shot width=80%}

**Consolidado** es la palabra clave. Un repaso cuenta como consolidado
cuando la tarjeta ya había alcanzado un intervalo de **al menos 30
días** antes de que la respondieras. Las tarjetas nuevas son fáciles de
«recordar»: las viste hace un minuto. Una tarjeta que viste por última
vez hace un mes es la verdadera prueba de la memoria a largo plazo, y
eso es lo que muestra la línea consolidada.

En las primeras semanas aún no tendrás repasos consolidados. Entonces
el gráfico recurre a la **retención general**, todos los repasos de
todas las tarjetas, y la leyenda de debajo lo dice: «Mostrando todos
los repasos — la señal madura aparece cuando las tarjetas alcanzan
intervalos de 30 días.» En cuanto tus primeras tarjetas cruzan la línea
de los 30 días, el gráfico pasa solo a la señal consolidada. Si no hay
ningún repaso en el periodo, verás [Aún no hay suficientes repasos
consolidados]{.ui}.

::: tip
#### Lee la tendencia, no el punto

Un solo día puede oscilar del 60 % al 100 % con tres repasos. Elige
[30D]{.ui} o [90D]{.ui} y fíjate en la forma de la línea. Una línea
plana entre el 80 y el 100 % significa que tu programación está
haciendo su trabajo.
:::

## Constancia: rachas y mapa de actividad {#consistency}

La sección [Consistencia]{.ui} muestra tu racha [Actual]{.ui} y la
[Más larga]{.ui} del interés, sobre un mapa de actividad de las
**últimas 12 semanas**. Cada cuadrado es un día, y un cuadrado más
oscuro significa más repasos ese día, en comparación con tu día de más
actividad del periodo. El cuadrado de hoy tiene un puntito.

![El mapa de actividad de Consistencia: 12 semanas de días de repaso, con cuadrados más oscuros para los días con más actividad.](images/manual/{lang}/09-heatmap.jpg){.shot width=80%}

Busca huecos y amontonamientos, no colores. Diez minutos cada día son
mejores que una hora cada domingo, porque la repetición espaciada
depende de ver las tarjetas cerca de su fecha de repaso.

::: note
#### La más larga puede parecer más corta que la actual

[Más larga]{.ui} es la mejor serie de días *consecutivos* que has
tenido nunca, sin los dos días salvados que protegen la racha
[Actual]{.ui}. Así que una racha actual que ha sobrevivido a un día sin
repasar puede ser más larga que tu «más larga». Los dos números son
correctos; simplemente miden cosas un poco distintas.
:::

## Comparación de mazos {#deck-comparison}

[Comparación de mazos]{.ui} ordena los mazos del interés por
retención, con el **más bajo arriba**. Esta barra cuenta todos los
repasos que has hecho nunca en el mazo, no solo los de los últimos 30
días, así que cambia despacio. Bajo el gráfico, los cuatro primeros
mazos indican cuántas tarjetas tienen pendientes ahora y el número total
de olvidos, es decir, las veces que una tarjeta que te sabías se te
volvió a olvidar.

El mazo de arriba es donde tu esfuerzo rinde más. Normalmente significa
una de estas tres cosas:

1. **Las tarjetas no están claras.** Dos respuestas posibles, o
   demasiado en una tarjeta. El capítulo 3 tiene las soluciones.
2. **El material se apoya en algo que no has aprendido.** Justo para
   esto está [Preguntar a la IA](#ask-ai).
3. **Vas demasiado deprisa.** Has añadido más tarjetas nuevas de las
   que puedes asimilar. Baja [Tarjetas nuevas al día]{.ui} durante un
   tiempo.

## Previsión de repasos {#forecast}

La previsión es un gráfico de barras con cuántas tarjetas vencen en
cada uno de los próximos [7D]{.ui} o [30D]{.ui}, según la programación
tal como está ahora. Las tarjetas que ya están atrasadas se suman a la
barra de hoy, así que un atraso nunca desaparece de la vista. Las
tarjetas retiradas se dejan fuera.

Un pico dentro de dos semanas es normal después de una gran importación
o de una semana con muchas tarjetas nuevas. Si ves que se acerca uno,
repártelo: repasa un poco más los días anteriores.

::: gotcha
#### La previsión solo conoce la programación de hoy

Cada evaluación que das mueve la fecha de repaso de una tarjeta, así
que la previsión es una proyección, no una promesa. Las tarjetas que
fallas vuelven antes y hacen que mañana tengas más trabajo del que
decía el gráfico.
:::

## Leer los números con honestidad {#reading}

Es fácil sentirse productivo y aprender poco. La pantalla Estadísticas
está pensada para responder a una pregunta más difícil: *¿estoy
aprendiendo mejor o simplemente repasando más?* Algunas reglas
prácticas:

- **Más repasos, menos retención consolidada.** Estás añadiendo más
  rápido de lo que puedes consolidar. Frena con las tarjetas nuevas; tu
  atraso te lo agradecerá.
- **Retención consolidada estable, repasos estables.** Este es el
  objetivo. La programación está haciendo su trabajo; sigue así.
- **Retención general alta, pero aún sin señal consolidada.** No pasa
  nada. Tus tarjetas simplemente no han llegado a intervalos de 30
  días. Dale un mes.
- **Un mazo muy por debajo de los demás.** Ese mazo tiene un problema
  de tarjetas o de conocimientos previos, no de fuerza de voluntad.
  Consulta [Comparación de mazos](#deck-comparison).
- **Una racha larga con cuadrados flojos.** Una tarjeta al día mantiene
  viva la racha, pero no la programación. Vigila también
  [Pendiente ahora]{.ui}.

::: gotcha
#### Evalúa con sinceridad, o los números mienten

Cada cifra de este capítulo se construye a partir de tus evaluaciones.
Pulsa Bien en una tarjeta que recordabas a medias e inflarás a la vez el
dominio, la retención y los intervalos, y la tarjeta volverá más tarde
de lo que debería. Difícil no es un fracaso; es información.
:::

## Preguntar a la IA: dale instrucciones a tu propio tutor {#ask-ai}

Al cabo de unas semanas, JustFlip! sabe algo que ninguna IA de chat
sabe: qué tarjetas dominas y cuáles se te siguen escapando.
**Preguntar a la IA** convierte eso en un mensaje ya preparado, un
informe de estudio con instrucciones, que pegas en ChatGPT, Claude,
Gemini o cualquier otro asistente.

### Dónde encontrarlo

| Desde | Elige | Alcance |
|---|---|---|
| Una tarjeta de la lista de tarjetas (mantener pulsado o clic secundario) | [Preguntar a la IA]{.ui} | Esa tarjeta |
| El botón de destellos de arriba de un repaso | [Preguntar a la IA sobre la tarjeta]{.ui} | La tarjeta en pantalla |
| El botón de destellos de arriba de un repaso | [Preguntar a la IA sobre el mazo]{.ui} **(Pro)** | Todo el mazo de esa tarjeta |
| Un mazo de la lista de mazos (mantener pulsado o clic secundario) | [Preguntar a la IA]{.ui} **(Pro)** | Todo el mazo |
| La pantalla de resultados tras un repaso | [Preguntar a la IA]{.ui} | Las tarjetas de esa sesión |

Los informes de una tarjeta y de una sesión son gratis. Los informes de
mazo son **Pro**: sin Pro, esas opciones del menú muestran un candado y
abren la pantalla de Pro.

![La hoja Preguntar a la IA: Copiar mensaje y Guardar mensaje, los enlaces de Abrir en una IA de chat y la vista previa del mensaje.](images/manual/{lang}/09-ask-ai-sheet.jpg){.phone}

### Qué incluye el informe

Un **informe de mazo** ordena tus tarjetas según su historial:

- **Tarjetas que se te resisten**: tarjetas con al menos un olvido, una
  facilidad baja o que aún se están aprendiendo. Se enumeran de peor a
  mejor, cada una con su respuesta y una línea de estadísticas, por
  ejemplo «failed 4 of 6 review(s) · 2 lapse(s) · ease 1.8 · avg 21s
  to answer». El informe incluye hasta 25.
- **Tarjetas que dominas**: se enumeran solo por la pregunta, como
  contexto, para que la IA no te haga perder el tiempo volviéndotelas a
  enseñar (hasta 60).
- **Un mazo nuevo**, aún sin historial, se enumera tarjeta a tarjeta, y
  se le pide a la IA que deduzca el tema y enseñe sus fundamentos.

Un **informe de tarjeta** trata una sola tarjeta: su pregunta y su
respuesta, y tu historial con ella. Un **informe de sesión** enumera las
tarjetas del repaso que acabas de terminar, con la evaluación que diste
a cada una.

### Qué le pide a la IA

Las instrucciones siguen la misma idea en todos los alcances:

1. **Enseñar los conocimientos previos.** Tus errores suelen señalar
   conocimientos de base que el mazo no cubre, así que se le pide a la
   IA que los enseñe desde cero.
2. **Explicar los malentendidos** que sugieren tus respuestas erróneas.
3. **Recomendar fuentes**, cada una con un enlace directo, dando
   preferencia a la documentación oficial y a referencias fiables.
4. **Opcionalmente, escribir tarjetas nuevas** para las lagunas, en CSV
   (`question,answer`) dentro de un bloque de código, listas para
   importar.

El mensaje en sí está en inglés, que es lo que los modelos de chat
siguen con más fiabilidad, pero le pide a la IA que **responda en el
idioma de tu dispositivo** y que escriba las tarjetas nuevas en el
idioma del mazo.

### Enviarlo

La hoja te ofrece [Copiar mensaje]{.ui} y [Guardar mensaje]{.ui}, que
guarda un archivo `.txt`. En [Abrir en una IA de chat]{.ui}, las filas
de ChatGPT, Claude y Gemini abren el asistente en una conversación
nueva, en su app si la tienes instalada o en el navegador. No llevan tu
mensaje: copia primero, luego abre y después pega. La
[Vista previa del mensaje]{.ui} de abajo muestra exactamente lo que vas
a compartir.

::: tip
#### Cierra el círculo

Cuando la IA te escriba tarjetas nuevas, copia su respuesta, vuelve a la
lista de intereses y elige [Añadir o importar]{.ui} ›
[Pegar tarjetas]{.ui}. JustFlip! encuentra el CSV dentro de la
respuesta, incluso dentro de un bloque de código, y te muestra una vista
previa. Eliges el mazo antes de que se guarde nada.
:::

::: note
#### JustFlip! nunca habla con una IA

Preguntar a la IA no lleva ninguna IA dentro. JustFlip! solo compone
texto en tu dispositivo, y nunca contacta con un servicio de IA. El
informe solo sale de la app cuando **tú** lo copias o lo guardas. Lo
que pase después queda entre tú y el servicio en el que lo pegues, así
que revisa antes la vista previa si tus tarjetas contienen algo
privado.
:::

::: gotcha
#### Las tarjetas que son solo imagen llegan como un marcador

El informe es texto sin formato. Una tarjeta sin texto en una de sus
caras, solo una imagen o un audio, le llega a la IA como «(no text —
this card uses an image, audio, or PDF)». Los seguimientos de progreso
se dejan fuera de los informes de mazo. Si un mazo es casi todo
imágenes, añade una línea de texto a las tarjetas que importan.
:::

## Exportar tus estadísticas {#export}

Para tus propias hojas de cálculo y gráficos, puedes exportar las
estadísticas completas de un interés. La exportación es gratis.

- **iPhone e iPad:** mantén pulsado un interés en la lista de intereses
  y elige [Exportar estadísticas]{.ui} y luego
  [Hoja de cálculo (CSV)]{.ui} o [Datos completos (JSON)]{.ui}. Elige
  dónde guardar el archivo.
- **Mac:** haz clic con el botón secundario en un interés para ver el
  mismo menú, o selecciona un interés y elige
  **Archivo › Export Statistics…**, que guarda el CSV.

Los archivos llevan el nombre del interés, por ejemplo
`Spanish.flashcards-stats.csv`.

### El CSV: una fila por tarjeta

| Columna | Contenido |
|---|---|
| `interest`, `deck` | Dónde está la tarjeta |
| `question`, `answer` | El texto de la tarjeta |
| `state` | `unseen`, `learning`, `reviewing`, `relearning` o `graduated` |
| `ease_factor` | La facilidad de la tarjeta (2,5 para una tarjeta nueva) |
| `interval_days` | El intervalo actual, en días |
| `due_date` | El próximo repaso, como fecha y hora ISO 8601 |
| `lapses` | Las veces que se olvidó la tarjeta después de aprenderla |
| `streak` | Respuestas correctas seguidas |
| `total_reviews` | Todos los repasos registrados |
| `success_rate` | Proporción de respuestas Bien o Fácil, de 0 a 1 |
| `avg_review_time_sec` | Tiempo medio de respuesta |
| `last_reviewed` | Hora del último repaso, vacía si nunca |

### El JSON: todo

La exportación JSON tiene los mismos campos por tarjeta, más un resumen
de etapas de cada mazo, cada sesión de estudio con su inicio, su fin,
su número de tarjetas y su porcentaje de aciertos, y el **historial**
completo de cada tarjeta: cada repaso con su hora, su evaluación, el
tiempo de respuesta y el intervalo y la facilidad de antes y de
después. Úsala cuando quieras dibujar tu propia curva del olvido.

::: gotcha
#### Las exportaciones de estadísticas son de ida

Un archivo de estadísticas es para leer, no para restaurar. JustFlip!
no puede volver a importarlo, y no contiene imágenes ni sonidos. Para
mover o hacer una copia de seguridad de un interés *con* su progreso,
usa [Exportar archivo]{.ui}; consulta el capítulo 10.
:::
