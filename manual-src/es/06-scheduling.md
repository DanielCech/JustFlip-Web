---
slug: scheduling
number: 6
title: Cómo funciona la programación
description: "Cómo decide JustFlip! cuándo vuelves a ver una tarjeta: etapas de aprendizaje, intervalos y facilidad, qué hace que una tarjeta esté pendiente, prioridades de repaso, posponer, seguimientos de progreso y Programación inteligente."
---

# Cómo funciona la programación {#scheduling number="6"}

::: lede
Nunca tienes que planificar un repaso. Cada evaluación que das le dice a
JustFlip! lo bien que conoces una tarjeta, y la app calcula cuándo
enseñártela de nuevo: pronto si se te escapó, mucho más tarde si fue
fácil. Este capítulo levanta la tapa. Verás qué significan las etapas,
por qué los intervalos crecen como crecen y qué controles te permiten
dirigir la cola sin engañar a tu memoria.
:::

::: inthischapter
- Las cinco etapas por las que pasa una tarjeta, y qué la hace avanzar
- Intervalos y facilidad en palabras sencillas, con las fórmulas exactas para los curiosos
- Qué significa «pendiente», y cómo decide JustFlip! qué va primero
- Dedica más tiempo a un tema con las prioridades de repaso
- Pospón una tarjeta, un mazo o un interés entero, y recupéralo
- Sigue habilidades que las tarjetas no pueden evaluar, con los seguimientos de progreso
:::

## La idea en un minuto {#idea}

La memoria se desvanece siguiendo una curva. Justo después de aprender
algo lo olvidas rápido, y cada vez que vuelves a recordarlo la curva se
aplana. La repetición espaciada aprovecha eso: te enseña una tarjeta
justo antes de que la hubieras olvidado. Cada recuerdo con éxito aleja
un poco más el siguiente repaso.

En JustFlip!, cada tarjeta lleva tres números:

| Número | Qué significa |
|---|---|
| **Intervalo** | Cuánto falta para que vuelva la tarjeta, de minutos a meses |
| **Facilidad** | Lo rápido que crece el intervalo de esta tarjeta. Empieza en 2,5 |
| **Fecha de repaso** | El momento en que se agota el intervalo y la tarjeta vuelve a estar lista |

Tu evaluación después de cada giro cambia la facilidad y el intervalo,
y la fecha de repaso va detrás. Los botones de evaluación muestran el
intervalo que daría cada opción, así que nada pasa a tus espaldas.
Después de evaluar, una breve pista [Siguiente: …]{.ui} te confirma
cuándo volverás a ver la tarjeta.

## Las cinco etapas {#stages}

Cada tarjeta está en una de cinco etapas. La etapa es una etiqueta que
describe el intervalo de la tarjeta. No decide el intervalo.

| Etapa | Significado | Intervalo habitual |
|---|---|---|
| **Sin ver** | Nunca estudiada | — |
| **Aprendiendo** | Recién aprendida, u olvidada desde Repasando | de minutos a unos días |
| **Repasando** | El intervalo ha llegado a 7 días | de una a cuatro semanas |
| **Graduada** | El intervalo ha llegado a 30 días | meses |
| **Reaprendiendo** | Una tarjeta graduada que olvidaste | otra vez pasos cortos |

```text
Sin ver ──evaluación──▶ Aprendiendo ──7 días──▶ Repasando ──30 días──▶ Graduada
                             ▲                      │                     │
                             └────── De nuevo ──────┘            De nuevo │
                                                                          ▼
                                                                   Reaprendiendo
```

Qué hace que una tarjeta cambie de etapa:

- **Cualquier evaluación** lleva una tarjeta Sin ver a Aprendiendo.
- **Difícil, Bien o Fácil** suben de etapa una tarjeta cuando su nuevo
  intervalo cruza un umbral: con 7 días pasa a Repasando, con 30 días
  pasa a Graduada. Las etapas siguen al intervalo, así que un Fácil en
  una tarjeta nueva no la gradúa en el acto. Aún tiene que ganarse sus
  30 días.
- **De nuevo** devuelve una tarjeta que está en Aprendiendo o Repasando
  a Aprendiendo, y una tarjeta Graduada a Reaprendiendo. En ambos casos
  el intervalo baja a 5 minutos.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

La pantalla Estadísticas cuenta tus tarjetas por etapa, en
**Colección**: [Nuevas]{.ui}, [Aprendiendo]{.ui} (que incluye
Reaprendiendo), [Repasando]{.ui} y [Graduadas]{.ui}. El capítulo 9
cubre el resto de esa pantalla.

::: note
#### El dominio no es lo mismo que Graduada

El porcentaje de **Dominio** de un mazo o un interés cuenta las
tarjetas cuya *última* evaluación fue Bien o Fácil. No es la proporción
de tarjetas graduadas. Un mazo puede mostrar un dominio alto tras una
buena sesión, mucho antes de que nada se gradúe. El dominio te dice qué
tal te ha ido últimamente. Las etapas te dicen lo asentado que está el
conocimiento.
:::

## Intervalos y facilidad {#intervals}

### La primera evaluación

Una tarjeta que nunca has evaluado, o una que acabas de olvidar, empieza
con unos primeros pasos fijos:

| Evaluación | Próximo repaso |
|---|---|
| De nuevo | en 5 minutos |
| Difícil | en 20 minutos |
| Bien | en 1 día |
| Fácil | en 4 días |

### Cada evaluación a partir de ahí

A partir de entonces, cada evaluación parte del intervalo que ya tiene
la tarjeta:

- **De nuevo** vuelve a empezar: 5 minutos y una facilidad más baja.
- **Difícil** hace crecer un poco el intervalo, un 20 %, y baja la
  facilidad.
- **Bien** multiplica el intervalo por la facilidad de la tarjeta: unas
  2,5 veces en una tarjeta típica.
- **Fácil** multiplica por la facilidad *y* por una bonificación de 1,3,
  y sube la facilidad.

La facilidad es el ritmo de crecimiento propio de la tarjeta. Cada
Difícil y cada De nuevo hacen que una tarjeta crezca más despacio a
partir de entonces. Cada Fácil hace que crezca más rápido. La facilidad
nunca baja de 1,3 ni sube de 3,5, así que una tarjeta difícil sigue
avanzando, solo que con pasos más cortos.

Esta es una tarjeta nueva que respondes con **Bien** cada vez:

| Repaso | Intervalo | Etapa después |
|---|---|---|
| 1.º | 1 día | Aprendiendo |
| 2.º | 2,5 días | Aprendiendo |
| 3.º | unos 6 días | Aprendiendo |
| 4.º | unos 16 días | Repasando |
| 5.º | unos 39 días | Graduada |

Cinco repasos con éxito repartidos en unos dos meses, y la tarjeta ya
solo vuelve una vez al mes o menos.

::: tip
#### Por qué bailan los días

Los intervalos de dos días o más reciben un pequeño empujón aleatorio de
hasta ±10 %. Si no, las tarjetas que aprendiste juntas la misma tarde
volverían juntas para siempre, como un gran bloque en tu calendario. El
empujón las reparte entre días cercanos. Los botones de evaluación
siempre muestran el intervalo antes del empujón, así que la fecha real
puede variar en un día o así.
:::

::: note
#### Por dentro: la variante de SM-2

JustFlip! usa una variante de SM-2, el algoritmo detrás de SuperMemo y
Anki. Con una facilidad *E* y un intervalo actual *I*, una evaluación
primero actualiza la facilidad, limitada entre 1,3 y 3,5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

para De nuevo, Difícil, Bien y Fácil. Después, el nuevo intervalo de una
tarjeta que ya está en marcha es:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

De nuevo siempre da 5 minutos. Los intervalos de dos días o más se
multiplican después por un factor aleatorio:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Programación inteligente (Pro) {#smart-schedule}

En **Ajustes › Comportamiento**, el interruptor
[Programación inteligente]{.ui} (marcado como [BETA]{.ui}) sustituye
los intervalos de SM-2 por **FSRS-5**, un programador moderno. FSRS
programa cada repaso para el momento en que tu probabilidad de recordar
la tarjeta baja a alrededor del 90 %. El objetivo es hacer menos repasos
para la misma retención. Solo cambia los intervalos de Difícil, Bien y
Fácil. De nuevo sigue haciendo que una tarjeta vuelva a los 5 minutos.

JustFlip! mantiene al día sus valores de SM-2 en cualquier caso, así que
puedes desactivar la Programación inteligente cuando quieras sin perder
nada. Es una función Pro. Sin Pro, al tocar el interruptor se abre la
pantalla de Pro.

## Qué significa «pendiente» {#due}

Una tarjeta está **pendiente** en cuanto ha pasado su fecha de repaso,
salvo que la hayas retirado o pospuesto. Las tarjetas retiradas
(capítulo 2) y las pospuestas (consulta [Posponer](#postponing))
conservan su programación. Simplemente no aparecen mientras están
apartadas.

Las tarjetas que nunca has estudiado no están pendientes. Son
**nuevas**. La sesión de [Hoy]{.ui} mezcla las dos: primero las
pendientes y luego las nuevas de tu cupo diario. Los valores por defecto
son 20 [Tarjetas por sesión]{.ui} y 10 [Tarjetas nuevas al día]{.ui},
ambos en **Ajustes › Comportamiento**.

### Qué tarjetas van primero

En la sesión de Hoy y en el menú de repaso de la pantalla Mazos,
JustFlip! arma la cola así:

1. **Las más antiguas primero.** Las tarjetas que vencieron un día
   anterior van antes que las que vencieron más tarde.
2. **Una mezcla diaria dentro de cada día.** Las tarjetas que vencen el
   mismo día se mezclan en un orden que cambia cada día. Así, una sesión
   corta no coge siempre la misma porción del principio de un gran
   atraso.
3. **Los mazos se turnan.** Las tarjetas de cada mazo se intercalan con
   las de los demás por turnos, ponderados por la prioridad (consulta
   [Prioridades de repaso](#priorities)).
4. **Las tarjetas nuevas al final,** hasta lo que quede de tu cupo
   diario y del tamaño de la sesión.
5. **Las tarjetas hermanas de oclusión de imagen se separan,** para que
   dos tarjetas de la misma imagen no salgan una detrás de otra.

Un repaso que empiezas desde la lista de tarjetas de un solo mazo mezcla
las tarjetas pendientes de ese mazo.

::: gotcha
#### De nuevo no repite la tarjeta en la misma sesión

Una tarjeta que evalúas con **De nuevo** vuelve a estar pendiente a los
5 minutos, pero no reaparece más adelante en la sesión en la que estás.
Te la encontrarás en tu próxima sesión. Si quieres un segundo intento
enseguida, termina la sesión y empieza otra al cabo de unos minutos.
:::

### Urgencia

Los intereses y los mazos también reciben una puntuación de
**urgencia**, que controla el indicador de color de las listas y la
ordenación [Por urgencia]{.ui}. Combina varias señales. Las de más peso
son la proporción de tarjetas pendientes y cuánto lleva vencida la
tarjeta más antigua. Otras de menos peso son cuánto hace que estudiaste
el mazo, un dominio bajo y unas pocas tarjetas nuevas. Las tarjetas
retiradas y pospuestas no cuentan. Durante unas horas después de
estudiar un mazo, su urgencia se queda en cero, para que el indicador
no se encienda por las tarjetas que vuelven a la cola a los 5 minutos.

**Ajustes › Ritmo de repaso** cambia lo rápido que sube la urgencia:
**Relajado** (despacio, con primeras tandas más pequeñas), **Constante**
(el valor por defecto) o **Intenso** (rápido, con la cola completa a la
vista). El ritmo de repaso nunca cambia los intervalos en sí.

## Prioridades de repaso {#priorities}

Cuando tienes más tarjetas pendientes que tiempo, la prioridad decide
qué tarjetas ves primero. Cada interés tiene una
[Prioridad de aprendizaje]{.ui} del 0 % al 100 %, en pasos del 5 %.
Empieza en el **75 %**. Cada mazo usa por defecto
[Heredar del interés]{.ui}, o fija su propio valor.

Puedes ajustarla en cualquiera de estos tres sitios:

- **Un interés:** mantenlo pulsado en la lista de intereses, elige
  [Editar interés]{.ui} y mueve el control
  [Prioridad de aprendizaje]{.ui}.
- **Un mazo:** mantenlo pulsado, elige [Editar mazo]{.ui}, desactiva
  [Heredar del interés]{.ui} y mueve el control.
- **Todos los mazos de un interés a la vez:** en la pantalla Mazos, abre
  el menú [Opciones del mazo]{.ui} (el icono de la carpeta) y elige
  [Prioridad de repaso]{.ui}. La hoja muestra el control
  [Prioridad del interés]{.ui} y, en [Prioridad del mazo]{.ui}, una fila
  por cada mazo.

![La hoja Prioridad de repaso: el control del interés arriba y, debajo, una fila por mazo con su propio interruptor Heredar del interés.](images/manual/{lang}/06-review-priority.jpg){.phone}

### Cómo funciona la mezcla

La prioridad cambia el *orden* de la cola, no su contenido. Imagina que
cada mazo reparte sus tarjetas pendientes por turnos. Un mazo con el
doble de prioridad reparte el doble de veces:

| Mazo | Prioridad | Posición de sus tarjetas en la sesión |
|---|---|---|
| Inglés | 100 % | 1.ª, 3.ª, 4.ª, 6.ª, 7.ª… |
| Química | 50 % | 2.ª, 5.ª, 8.ª… |

Con el 75 % por defecto en todas partes, los mazos simplemente se
alternan, una tarjeta cada uno. Una prioridad más alta se lleva más
parte de una sesión limitada, y una más baja queda relegada hacia el
final.

::: gotcha
#### La prioridad nunca oculta una tarjeta

Incluso al 0 %, las tarjetas pendientes de un mazo siguen pendientes.
Solo se ofrecen después de todo lo demás. Los recuentos de pendientes
del widget, de Hoy y de la pantalla Mazos siguen exactamente igual
cuando mueves un control. La prioridad solo importa cuando una sesión
está limitada: en Hoy y en el menú de repaso de la pantalla Mazos. El
repaso de un solo mazo no tiene con quién competir.
:::

## Posponer {#postponing}

A veces una tarjeta no está mal, simplemente no es el momento: la
semana de exámenes de otra asignatura, unas vacaciones, un mazo al que
volverás el mes que viene. Evaluarla con De nuevo o Difícil estropearía
su programación. **Posponer** la deja en espera, sin tocar su
programación en absoluto.

### Cómo posponer

Durante cualquier repaso, toca el botón [Posponer]{.ui} (el icono del
reloj, arriba en la pantalla de repaso). Elige el alcance:

- [Posponer esta tarjeta]{.ui}
- [Posponer este mazo]{.ui}
- [Posponer este interés]{.ui}

Luego elige durante cuánto tiempo: [Mañana]{.ui}, [En 3 días]{.ui},
[En 1 semana]{.ui} o [Fecha personalizada…]{.ui} para elegir un día en
[Reanudar el]{.ui}. Una espera dura hasta el comienzo de ese día, así
que «Mañana» significa todo el día de mañana, no 24 horas a partir de
ahora.

![El menú Posponer durante un repaso, con las opciones de tarjeta, mazo e interés.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Las tarjetas en espera salen al momento de la sesión en curso. Si
pospones el mazo o el interés de un repaso de un solo mazo, la sesión
termina, porque ya no queda nada que repasar.

### Qué hace una espera

Una espera es un simple filtro. No se evalúa nada, el intervalo y la
facilidad se quedan como están y el historial de la tarjeta no cambia.
Mientras dura la espera:

| Dónde | Tarjetas pospuestas |
|---|---|
| Hoy, el widget, los recuentos de pendientes y la previsión | quedan fuera |
| [Tarjetas pendientes]{.ui} y [Tarjetas con dificultad]{.ui} | quedan fuera |
| [Tarjetas nuevas]{.ui} (menú de la pantalla Mazos) | quedan fuera, aunque nunca se hayan estudiado |
| [Todas las tarjetas]{.ui} | **se incluyen** |

Si una tarjeta, su mazo y su interés están en espera a la vez, manda la
fecha más tardía.

### Cómo levantar una espera

Las esperas terminan solas en la fecha que elegiste. Para terminar una
antes, abre la pantalla Mazos de ese interés y elige
[Opciones del mazo]{.ui} › [Prioridad de repaso]{.ui}. Mientras haya
algo en espera, la hoja tiene una sección [Pospuesto]{.ui} con el
número de tarjetas en espera y un botón por cada espera activa:

- [Reanudar este interés]{.ui}
- [Reanudar *nombre del mazo*]{.ui}, uno por cada mazo en espera

::: gotcha
#### Una tarjeta suelta no se puede reanudar antes de tiempo

La sección Pospuesto solo muestra las esperas de intereses y mazos. Una
espera de una sola tarjeta cuenta en el total, pero no tiene botón de
reanudar. Simplemente se acaba en su fecha. Para acortarla, abre el
repaso [Todas las tarjetas]{.ui} del mazo, que ignora las esperas.
Cuando salga la tarjeta, vuelve a posponerla con [Mañana]{.ui}.
:::

::: tip
#### Todas las tarjetas es el modo para empollar

[Todas las tarjetas]{.ui} incluye a propósito las tarjetas retiradas y
pospuestas. Úsalo la noche antes de un examen, o cuando quieras repasar
igualmente un mazo pospuesto. Tus evaluaciones ahí cuentan como
cualquier otra.
:::

## Seguimientos de progreso (Pro) {#trackers}

Algunas habilidades no caben en una tarjeta: una pieza que estás
practicando al piano, una técnica de escalada, un libro que estás
trabajando. Un **seguimiento de progreso** es una tarjeta especial con
un nombre, unas notas opcionales y una barra de progreso que ajustas tú.

Para añadir uno, abre un mazo, toca el menú [Más acciones]{.ui} y elige
[Añadir seguimiento de progreso]{.ui}. La primera vez, una breve
introducción explica la idea. Ponle un nombre al seguimiento
([¿Qué quieres seguir?]{.ui}) y, si quieres, notas. Más adelante, toca
el seguimiento y mueve el control [Progreso]{.ui}, de 0 a 100 en pasos
de cinco, según lo avanzado que te sientas.

![Un mazo de seguimientos de progreso, cada uno con su propia barra de progreso y su porcentaje.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

Lo que hace y lo que no hace un seguimiento:

- **Nunca se repasa.** Los seguimientos quedan fuera de todas las
  sesiones de repaso, de Hoy, de los recuentos de pendientes, de las
  etapas de Estadísticas y de Leer tarjetas.
- **No cuenta para tu racha.** Nadie te pregunta nada, así que no hay
  nada que contar.
- **Sí cuenta para el dominio del mazo.** Una tarjeta suma 1 al dominio
  del mazo cuando su última evaluación fue Bien o Fácil. Un seguimiento
  suma su propio progreso: un 60 % suma 0,6. Un mazo que solo tiene
  seguimientos muestra como dominio la media de su progreso.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Los seguimientos los evalúas tú

Un seguimiento dice exactamente lo que tú le digas, nada más. De eso se
trata, pero también significa que un seguimiento al 100 % sube el
dominio de un mazo tanto como una tarjeta que de verdad te sabes. Sé
sincero con el control.
:::

Los seguimientos de progreso son una función Pro. Sin Pro, la opción
del menú lleva un candado y abre la pantalla de Pro. Los seguimientos
que ya tienes se conservan. En su lugar, el mazo muestra una única fila
que dice cuántos seguimientos contiene, y vuelven en cuanto Pro está
activo de nuevo.

## Tarjetas retiradas {#retire}

**Retirar** una tarjeta («esto me lo sé, deja de preguntármelo») la saca
de Pendientes y Con dificultad sin borrar su historial. Se explica en el
capítulo 2. En cuanto a la programación, recuerda dos cosas:

- Una tarjeta retirada conserva su intervalo, su facilidad y su fecha de
  repaso. Reactívala y retoma exactamente donde se quedó.
- Una tarjeta retirada sigue contando para el dominio, pero ya no cuenta
  para la urgencia ni para los recuentos de pendientes.

## Referencia rápida {#reference}

| Ajuste o valor | Dónde | Por defecto |
|---|---|---|
| Primeros pasos (De nuevo / Difícil / Bien / Fácil) | integrado | 5 min / 20 min / 1 día / 4 días |
| Facilidad inicial | integrado | 2,5 (rango 1,3–3,5) |
| Repasando / Graduada | integrado | intervalo ≥ 7 / ≥ 30 días |
| [Tarjetas por sesión]{.ui} | Ajustes › Comportamiento | 20 |
| [Tarjetas nuevas al día]{.ui} | Ajustes › Comportamiento | 10 |
| [Programación inteligente]{.ui} (Pro) | Ajustes › Comportamiento | desactivada |
| Ritmo de repaso | Ajustes › Ritmo de repaso | Constante |
| [Prioridad de aprendizaje]{.ui} | Editar interés / Editar mazo / Prioridad de repaso | 75 %, los mazos heredan |
| Posponer | pantalla de repaso, icono del reloj | — |
| Sugerencia de retirar | pantalla de resultados | intervalo ≥ 90 días y 4 aciertos seguidos |
