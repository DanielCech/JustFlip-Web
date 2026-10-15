---
slug: first-review
number: 2
title: Tu primer repaso
description: "Cómo funciona un repaso en JustFlip!: voltear y evaluar tarjetas, qué hacen De nuevo, Difícil, Bien y Fácil, los modos de repaso, el panel Hoy, la pantalla de resultados, retirar tarjetas y los recordatorios diarios."
---

# Tu primer repaso {#first-review number="2"}

::: lede
Voltear, evaluar, repetir. Un repaso dura unos minutos, y cada
evaluación que das decide cuándo vuelve esa tarjeta. Este capítulo
explica los cuatro botones de evaluación, dónde empezar un repaso, qué
te muestra Hoy y qué hacer con las tarjetas que ya te sabes de memoria.
:::

::: inthischapter
- Recorre el ciclo de repaso con toques, deslizamientos o el teclado
- Qué hace a una tarjeta cada una de las opciones De nuevo, Difícil, Bien y Fácil
- Elige entre Hoy y los modos Pendientes, Con dificultad, Nuevas y Todas
- Lee la pantalla de resultados y retira las tarjetas que ya dominas
- Activa un recordatorio diario
:::

## El ciclo de repaso {#loop}

Todos los repasos funcionan igual:

1. **Lee la pregunta** e intenta recordar la respuesta. Inténtalo de
   verdad: el esfuerzo de recordar es lo que hace que se te quede.
2. **Voltea la tarjeta.** Tócala, o pulsa la barra espaciadora en un
   teclado.
3. **Evalúate.** Toca lo bien que te la sabías, o desliza la tarjeta.
4. **Entra la siguiente tarjeta.** Una breve nota abajo, como
   [Siguiente: 3d]{.ui}, te dice cuándo vuelve la tarjeta que acabas de
   evaluar.

La barra de arriba muestra cuánto llevas de la sesión. Para parar
antes, cierra la sesión y confirma con [Salir]{.ui}. Todo lo que hayas
evaluado hasta ese momento se guarda; simplemente, la sesión no cuenta
como completada.

![Una sesión de repaso por la cara de la respuesta, con los cuatro botones de evaluación y el próximo intervalo de cada uno encima de su nombre.](images/manual/{lang}/02-grade-buttons.jpg){.phone}

::: tip
#### Evalúa antes de voltear

No hace falta que voltees la tarjeta. Si sabías la respuesta al
instante, evalúa directamente la cara de la pregunta con un botón o un
deslizamiento. La pista bajo la tarjeta lo dice: [Toca la tarjeta para
ver la respuesta • o desliza para responder directamente]{.ui}.
:::

## Las cuatro evaluaciones {#grades}

Los botones de evaluación están debajo de la tarjeta. Cada uno muestra
el intervalo que le daría a esta tarjeta, así que siempre sabes qué
estás eligiendo.

| Evaluación | Color | Tecla | Deslizar | Significa | Una tarjeta nueva vuelve en |
|---|---|---|---|---|---|
| [De nuevo]{.ui} | Rojo | 1 | Abajo | No te la sabías | 5 minutos |
| [Difícil]{.ui} | Naranja | 2 | Izquierda | Llegaste, con esfuerzo | 20 minutos |
| [Bien]{.ui} | Verde | 3 | Derecha | Te la sabías | 1 día |
| [Fácil]{.ui} | Azul | 4 | Arriba | Te la sabías al instante | 4 días |

Después de la primera vez, los intervalos crecen con cada respuesta
correcta. Bien multiplica el último intervalo, Fácil lo alarga todavía
más, Difícil lo hace crecer solo un poco y De nuevo vuelve a empezar la
tarjeta con un paso corto. Los números de los botones cambian con cada
tarjeta. El capítulo 6 explica las cuentas.

::: tip
#### Evaluaciones sinceras, repasos más cortos

Es tentador pulsar Bien en una tarjeta que *casi* te sabías. No lo
hagas: la tarjeta volverá cuando ya se te haya borrado. Un Difícil o un
De nuevo sincero te cuesta un vistazo más ahora y te ahorra muchos
después. Las teclas 1–4 y la barra espaciadora funcionan en el Mac y en
un iPad con teclado, salvo que estés escribiendo en un campo de texto.
:::

### Visto, la quinta respuesta

Hay una respuesta más, que nunca pulsas: **Visto**. La primera vez que
volteas una tarjeta mientras *hojeas* la lista de tarjetas de un mazo,
fuera de un repaso, JustFlip! anota que la has visto. Visto no es una
evaluación. No cuenta como sabida ni como fallada; solo deja constancia
de que la tarjeta ya no está sin tocar. En la lista de tarjetas, un ojo
gris marca esas tarjetas, mientras que los demás colores muestran la
última evaluación que diste.
<!-- VERIFY: a first Seen sets dueDate = now (initialInterval .seen = 0),
so a browsed card then shows up in a deck's Due Cards — confirm and
decide whether to mention it. -->

## Mirar la respuesta y la evaluación más estricta {#peeking}

Por defecto, las cuatro evaluaciones siguen disponibles después de
voltear, porque voltear para comprobarte forma parte del ciclo. Si
prefieres ser estricto, activa **Ajustes › Comportamiento › Evaluación
más estricta** ([Limitar opciones al voltear la tarjeta]{.ui}). Viene
desactivada por defecto.

Con la evaluación más estricta activada, voltear una tarjeta cuenta como
mirar la respuesta. Solo quedan [De nuevo]{.ui} y [Difícil]{.ui}, los
deslizamientos a la derecha y hacia arriba dejan de funcionar, y la
pista cambia a [Toca la tarjeta para voltear • desliza a la izquierda
(Difícil) o hacia abajo (De nuevo)]{.ui}. Para dar Bien o Fácil, evalúa
la cara de la pregunta *antes* de voltear.

::: note
#### Las tarjetas de oclusión son la excepción

Una tarjeta de oclusión de imagen no se puede responder sin descubrir
sus máscaras, así que descubrir una nunca cuenta como mirar. Las cuatro
evaluaciones siguen disponibles (capítulo 4).
:::

## Dónde empezar un repaso {#modes}

Hay tres sitios desde los que empezar un repaso, y cada uno elige las
tarjetas de una forma distinta.

| Dónde | Elige | Qué tarjetas |
|---|---|---|
| **Hoy** (pantalla Intereses) | [Iniciar repaso]{.ui} | Las tarjetas pendientes de todos los intereses y, después, tarjetas nuevas hasta tu cupo diario |
| Pantalla **Mazos**, menú ▶ | [Tarjetas pendientes]{.ui} | Las tarjetas de este interés a las que les ha llegado la hora de repaso |
| | [Tarjetas con dificultad]{.ui} | Las tarjetas que evaluaste por última vez con De nuevo o Difícil |
| | [Tarjetas nuevas]{.ui} | Las tarjetas que nunca has estudiado |
| **Tarjetas** (un mazo), menú ▶ | [Tarjetas pendientes]{.ui} | Las tarjetas de este mazo a las que les ha llegado la hora de repaso |
| | [Todas las tarjetas]{.ui} | Todas las tarjetas del mazo |
| | [Tarjetas con dificultad]{.ui} | Las tarjetas que evaluaste por última vez con De nuevo o Difícil |

En la pantalla Mazos, el menú muestra un recuento junto a cada opción,
como [Tarjetas con dificultad (6)]{.ui}. Una opción vacía aparece
atenuada. Las tarjetas retiradas y pospuestas quedan fuera de todos los
modos salvo Todas las tarjetas.

Las sesiones de pendientes, con dificultad y nuevas llegan en tandas de
**Tarjetas por sesión** (Ajustes › Comportamiento, 20 por defecto).
Cuando quedan más tarjetas esperando, la pantalla de resultados te
ofrece seguir.

::: gotcha
#### Todas las tarjetas son todas las tarjetas

[Todas las tarjetas]{.ui} es un modo de empollar. Muestra todas las
tarjetas del mazo en orden aleatorio, incluidas las que retiraste y las
que pospusiste, y no se detiene tras una tanda. Tus evaluaciones siguen
contando, así que darte un atracón con un mazo la noche antes de un
examen también mueve su programación.
:::

::: gotcha
#### Con dificultad no mira el calendario

Una tarjeta está «con dificultad» cuando tu última evaluación fue De
nuevo o Difícil, *aunque no esté pendiente*. Una tarjeta que evaluaste
con Difícil y que está programada para el mes que viene sigue
apareciendo en Con dificultad. De eso se trata: es el modo para machacar
los puntos débiles, no para ir al día.
:::

::: gotcha
#### Tarjetas nuevas se salta el cupo diario

[Tarjetas nuevas]{.ui}, en la pantalla Mazos, ofrece todas las tarjetas
de ese interés que nunca has estudiado, da igual cuántas tarjetas nuevas
hayas visto ya hoy. Hoy, en cambio, solo introduce al día tantas
tarjetas nuevas como permitas en Ajustes. Y en un único mazo,
[Tarjetas pendientes]{.ui} contiene solo tarjetas que ya has estudiado
antes: una tarjeta que nunca has visto aún no tiene fecha de repaso.
Para empezar un mazo recién estrenado, usa Hoy, [Tarjetas nuevas]{.ui}
en la pantalla Mazos o [Todas las tarjetas]{.ui}.
:::

## Hoy {#today}

El panel **Hoy**, arriba en la pantalla Intereses, responde a una sola
pregunta: ¿qué debería repasar ahora mismo? Reúne en una sola sesión las
tarjetas pendientes de todos tus intereses.

![El panel Hoy con las tarjetas pendientes, el tiempo estimado, la racha y un chip por cada interés.](images/manual/{lang}/02-today.jpg){.phone}

- **El titular** dice, por ejemplo, [12 pendientes · 5 nuevas]{.ui}.
  Debajo hay una estimación de tiempo, como [Unos 5 min]{.ui}.
- **[Iniciar repaso]{.ui}** empieza la sesión. Antes de tu primer
  repaso, el botón dice [Empezar prueba]{.ui}.
- **Los chips** de debajo, uno por interés, empiezan una sesión solo con
  las tarjetas de ese interés. Aparecen cuando dos o más intereses
  tienen tarjetas esperando.
- **La racha**, como [4 días seguidos]{.ui}, cuenta los días en los que
  repasaste al menos una tarjeta. Saltarte uno o dos días en una racha
  larga no la rompe.

Una sesión de Hoy toma primero las tarjetas pendientes. Cuando varios
intereses o mazos tienen tarjetas esperando, su prioridad de aprendizaje
decide cuáles ocupan más sitio en la sesión (capítulo 6). Después
vienen las tarjetas nuevas, hasta tu cupo diario.

### Tarjetas nuevas al día

**Ajustes › Comportamiento › Tarjetas nuevas al día** fija cuántas
tarjetas nunca estudiadas introduce Hoy cada día: 5, 10, 15 o 20, o
[Ninguna]{.ui}. El valor por defecto es 10. Las tarjetas que has
empezado hoy cuentan para ese número, así que el cupo no crece por hacer
más sesiones. Junto a él, [Tarjetas por sesión]{.ui} limita cuántas
tarjetas tiene una sesión de Hoy: 10, 15, 20 o 30, o
[Ilimitado]{.ui}.

**Ajustes › Ritmo de repaso** ([Relajado]{.ui}, [Constante]{.ui} o
[Intenso]{.ui}; Constante por defecto) ajusta cuánto te pide Hoy cada
día y lo rápido que los mazos empiezan a parecer atrasados. El
capítulo 6 lo explica.

### Todo al día

Cuando has terminado los repasos de hoy y no quedan tarjetas nuevas
esperando, Hoy dice [Todo al día]{.ui}. Te indica cuándo vencen las
siguientes tarjetas, por ejemplo [Próximo repaso mañana · 8
tarjetas]{.ui}, y muestra un pequeño gráfico de los
[Próximos 7 días]{.ui} con lo que se avecina. Siempre puedes estudiar
cuando quieras desde la pantalla Mazos o Tarjetas.

## Durante una sesión {#session}

La fila de encima de la tarjeta tiene algunos controles extra:

- **Posponer.** Aparta la tarjeta actual, su mazo o todo su interés
  hasta [Mañana]{.ui}, [En 3 días]{.ui}, [En 1 semana]{.ui} o una
  [Fecha personalizada…]{.ui}. Las tarjetas pospuestas quedan fuera de
  los repasos hasta entonces. El capítulo 6 tiene los detalles.
- **Preguntar a la IA.** Prepara un mensaje de estudio sobre la tarjeta
  actual, o sobre todo su mazo (Pro), para pegarlo en una IA de chat
  (capítulo 9).
- **Escribir respuestas.** Escribe tu respuesta antes de voltear, y
  JustFlip! la compara con la tarjeta: [¡Correcto!]{.ui}, [Casi —
  compara con atención]{.ui} o [No exactamente]{.ui}. La evaluación la
  sigues eligiendo tú.
- **Abrir mazo.** Sale de la sesión y abre el mazo del que viene la
  tarjeta actual. Lo que hayas evaluado hasta entonces se conserva.

## La pantalla de resultados {#results}

Al terminar la sesión, ves [Práctica completada]{.ui} con tu porcentaje
de aciertos, el número de [Tarjetas repasadas]{.ui} y tu
[Tiempo de estudio]{.ui}. El porcentaje de aciertos cuenta Bien y Fácil
como correctas.

![La pantalla de resultados: el porcentaje de aciertos, las tarjetas repasadas, el tiempo de estudio y un recuento de cada evaluación.](images/manual/{lang}/02-results.jpg){.phone}

Si quedan más tarjetas esperando después de esta tanda, el encabezado
dice, por ejemplo, [¡Bien! — 20 hechas]{.ui}, y un botón
[Repasar 15 más]{.ui} sigue con la siguiente tanda. Al final de verdad
de una sesión, JustFlip! puede añadir [Vuelve mañana para 8
tarjetas]{.ui}. Después del repaso de un solo mazo, [Reiniciar]{.ui}
vuelve a lanzar el mismo modo. [Listo]{.ui} te lleva de vuelta.

Debajo pueden aparecer dos tipos de sugerencia:

- **[Estas ya las dominas]{.ui}.** Tarjetas que evaluaste con Bien o
  Fácil en esta sesión y que ya están muy lejos en la programación: un
  intervalo de al menos **90 días** y al menos **4 respuestas correctas
  seguidas**. Cada una tiene un botón [Retirar]{.ui}, y [Deshacer]{.ui}
  por si cambias de idea.
- **[Estas se te escapan una y otra vez]{.ui}.** Tarjetas que evaluaste
  con De nuevo y que has olvidado muchas veces: 8 o más, sin una racha
  de recuperación de 3 respuestas correctas. Una tarjeta así suele estar
  mal redactada. Prueba a dividirla en tarjetas más pequeñas, o
  retírala si ya no importa.

## Retirar una tarjeta {#retire}

Retirar una tarjeta significa «esto me lo sé, deja de preguntármelo».
JustFlip! solo *sugiere* retirar; nunca retira una tarjeta por su cuenta.

Una tarjeta retirada:

- ya no aparece en Hoy, Tarjetas pendientes, Tarjetas con dificultad ni
  Tarjetas nuevas, y ya no cuenta como pendiente;
- sigue apareciendo en [Todas las tarjetas]{.ui} y sigue contando para
  el dominio del mazo;
- conserva todo su historial, y una insignia [Retirada]{.ui} en la lista
  de tarjetas.

Puedes retirar tú mismo cualquier tarjeta: mantenla pulsada en la lista
de tarjetas y elige [Retirar tarjeta]{.ui}. Para recuperarla, elige
[Reactivar tarjeta]{.ui}. Una tarjeta reactivada retoma su programación
exactamente donde la dejó.

## Recordatorios diarios {#reminders}

La repetición espaciada solo da fruto cuando es constante, y un pequeño
aviso ayuda. Los recordatorios están **desactivados** hasta que los
actives. Actívalos en la última página del recorrido de bienvenida, o
más tarde en **Ajustes › Recordatorios › Recordatorio diario de
repaso**: [Un aviso al día, solo cuando hay tarjetas pendientes.]{.ui}

La primera vez que lo activas, iOS te pregunta si JustFlip! puede enviar
notificaciones; permíteselo. Elige la hora con
[Hora del recordatorio]{.ui}; de entrada son las 19:00. La notificación
dice, por ejemplo, [Hora de repasar]{.ui} con [12 tarjetas listas · unos
3 min]{.ui}.

En la misma sección, [Rescate de racha]{.ui} añade un recordatorio suave
por la tarde los días en que aún no has repasado y tu racha está en
peligro.

::: gotcha
#### ¿No llega la notificación? Revisa los Ajustes de iOS

Si alguna vez rechazaste las notificaciones, JustFlip! no puede volver a
preguntar. Actívalas en la app Ajustes de iOS, en **Notificaciones ›
JustFlip**, y el recordatorio empezará a funcionar.
:::
