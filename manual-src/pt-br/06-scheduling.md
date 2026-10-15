---
slug: scheduling
number: 6
title: Como funciona a programação
description: "Como o JustFlip! decide quando você vê um cartão de novo: estágios de aprendizado, intervalos e facilidade, o que deixa um cartão pendente, prioridades de revisão, adiamentos, rastreadores de progresso e a Programação inteligente."
---

# Como funciona a programação {#scheduling number="6"}

::: lede
Você nunca precisa planejar uma revisão. Cada avaliação que você dá diz
ao JustFlip! o quanto você conhece um cartão, e o app calcula quando
mostrá-lo de novo: logo, se ele escapou; bem mais tarde, se foi fácil.
Este capítulo abre a tampa. Você vai ver o que significam os estágios,
por que os intervalos crescem do jeito que crescem e quais controles
deixam você conduzir a fila sem enganar a sua memória.
:::

::: inthischapter
- Os cinco estágios por que um cartão passa, e o que o faz avançar
- Intervalos e facilidade em palavras simples, com a matemática exata para os curiosos
- O que "pendente" significa, e como o JustFlip! decide o que vem primeiro
- Dê mais do seu tempo a um assunto com as prioridades de revisão
- Adie um cartão, um baralho ou um interesse inteiro, e traga-o de volta
- Acompanhe habilidades que os flashcards não conseguem avaliar, com rastreadores de progresso
:::

## A ideia em um minuto {#idea}

A memória se apaga numa curva. Logo depois de aprender algo, você o
esquece rápido, e cada vez que se lembra de novo a curva fica mais
suave. A repetição espaçada aproveita isso: ela mostra um cartão pouco
antes de você esquecê-lo. Cada lembrança bem-sucedida empurra a próxima
revisão para mais longe.

No JustFlip!, todo cartão carrega três números:

| Número | O que significa |
|---|---|
| **Intervalo** | Quanto falta para o cartão voltar, de minutos a meses |
| **Facilidade** | Quão rápido o intervalo cresce para este cartão. Começa em 2,5 |
| **Data de revisão** | O momento em que o intervalo acaba e o cartão fica pronto de novo |

A sua avaliação depois de cada virada muda a facilidade e o intervalo, e
a data de revisão acompanha. Os botões de avaliação mostram o intervalo
que cada escolha daria, então nada acontece pelas suas costas. Depois
que você avalia, uma dica curta [Próxima: …]{.ui} confirma quando você
verá o cartão de novo.

## Os cinco estágios {#stages}

Todo cartão está em um de cinco estágios. O estágio é um rótulo que
descreve o intervalo do cartão. Ele não decide o intervalo.

| Estágio | Significado | Intervalo típico |
|---|---|---|
| **Não visto** | Nunca estudado | — |
| **Aprendendo** | Aprendido há pouco, ou esquecido no estágio Revisando | de minutos a alguns dias |
| **Revisando** | O intervalo chegou a 7 dias | de uma a quatro semanas |
| **Graduado** | O intervalo chegou a 30 dias | meses |
| **Reaprendendo** | Um cartão Graduado que você esqueceu | passos curtos de novo |

```text
Não visto ─avaliação─▶ Aprendendo ─7 dias─▶ Revisando ─30 dias─▶ Graduado
                            ▲                   │                    │
                            └───── De novo ─────┘            De novo │
                                                                     ▼
                                                               Reaprendendo
```

O que move um cartão entre os estágios:

- **Qualquer avaliação** leva um cartão Não visto para Aprendendo.
- **Difícil, Bom ou Fácil** fazem um cartão subir quando o novo intervalo
  passa de um limite: 7 dias o torna Revisando, 30 dias o torna
  Graduado. Os estágios acompanham o intervalo, então um Fácil num cartão
  novo não o gradua na hora. Ele ainda precisa conquistar seus 30 dias.
- **De novo** manda um cartão Aprendendo ou Revisando de volta para
  Aprendendo, e um cartão Graduado para Reaprendendo. Nos dois casos, o
  intervalo cai para 5 minutos.
<!-- VERIFY: in SM-2 mode a Relearning card's Good/Easy interval is always the initial step (1 or 4 days), so it never reaches the 7-day threshold and appears to stay in Relearning. Confirm the intended exit path in CardStatistics+SRS.swift calculateNextInterval before describing how a card leaves Relearning. -->

A tela Estatísticas conta seus cartões por estágio, em **Coleção**:
[Novos]{.ui}, [Aprendendo]{.ui} (que inclui Reaprendendo),
[Revisando]{.ui} e [Graduados]{.ui}. O Capítulo 9 trata do resto dessa
tela.

::: note
#### Domínio não é o mesmo que Graduado

A porcentagem de **Domínio** num baralho ou interesse conta os cartões
cuja *última* avaliação foi Bom ou Fácil. Não é a proporção de cartões
Graduados. Um baralho pode mostrar domínio alto depois de uma única boa
sessão, muito antes de qualquer cartão se graduar. O domínio diz como
você foi recentemente. Os estágios dizem quão consolidado está o
conhecimento.
:::

## Intervalos e facilidade {#intervals}

### A primeira avaliação

Um cartão que você nunca avaliou, ou que acabou de esquecer, começa por
passos iniciais fixos:

| Avaliação | Próxima revisão |
|---|---|
| De novo | em 5 minutos |
| Difícil | em 20 minutos |
| Bom | em 1 dia |
| Fácil | em 4 dias |

### Cada avaliação depois disso

A partir daí, cada avaliação parte do intervalo que o cartão já tem:

- **De novo** recomeça: 5 minutos e uma facilidade menor.
- **Difícil** aumenta um pouco o intervalo, em 20 %, e reduz a
  facilidade.
- **Bom** multiplica o intervalo pela facilidade do cartão: cerca de
  2,5× para um cartão típico.
- **Fácil** multiplica pela facilidade *e* por um bônus de 1,3, e aumenta
  a facilidade.

A facilidade é o ritmo de crescimento próprio do cartão. Cada Difícil e
De novo faz o cartão crescer mais devagar dali em diante. Cada Fácil o
faz crescer mais rápido. A facilidade nunca fica abaixo de 1,3 nem acima
de 3,5, então um cartão difícil continua avançando, só que em passos
menores.

Veja um cartão novo que você responde com **Bom** todas as vezes:

| Revisão | Intervalo | Estágio depois dela |
|---|---|---|
| 1ª | 1 dia | Aprendendo |
| 2ª | 2,5 dias | Aprendendo |
| 3ª | cerca de 6 dias | Aprendendo |
| 4ª | cerca de 16 dias | Revisando |
| 5ª | cerca de 39 dias | Graduado |

Cinco revisões bem-sucedidas espalhadas por uns dois meses, e o cartão
passa a voltar só uma vez por mês ou menos.

::: tip
#### Por que os dias oscilam

Intervalos de dois dias ou mais ganham um pequeno ajuste aleatório de até
±10 %. Do contrário, cartões que você aprendeu juntos na mesma noite
voltariam juntos para sempre, como um grande bolo no seu calendário. O
ajuste os espalha por dias vizinhos. Os botões de avaliação sempre
mostram o intervalo antes do ajuste, então a data real pode variar em
mais ou menos um dia.
:::

::: note
#### Por dentro: a variante do SM-2

O JustFlip! usa uma variante do SM-2, o algoritmo por trás do SuperMemo e
do Anki. Com facilidade *E* e intervalo atual *I*, uma avaliação primeiro
atualiza a facilidade, limitada entre 1,3 e 3,5:

$$
E' = \min\bigl(3.5,\ \max(1.3,\ E + \Delta)\bigr), \qquad \Delta \in \{-0.20,\ -0.15,\ 0,\ +0.15\}
$$

para De novo, Difícil, Bom e Fácil. Então o novo intervalo de um cartão
que já está em andamento é:

$$
I_{\text{hard}} = \max(1.2\,I,\ 1\ \text{hour})
$$

$$
I_{\text{good}} = \max(E'\,I,\ 1\ \text{day})
$$

$$
I_{\text{easy}} = \max(1.3\,E'\,I,\ 4\ \text{days})
$$

De novo sempre dá 5 minutos. Intervalos de dois dias ou mais são então
multiplicados por um fator aleatório:

$$
I_{\text{final}} = I \times (1 + u), \qquad u \in [-0.1,\ 0.1]
$$
:::

### Programação inteligente (Pro) {#smart-schedule}

Em **Ajustes › Comportamento**, a chave [Programação inteligente]{.ui}
(marcada como [BETA]{.ui}) troca os intervalos do SM-2 pelo **FSRS-5**,
um agendador moderno. O FSRS marca cada revisão para o momento em que a
sua chance de lembrar o cartão cai para cerca de 90 %. O objetivo é ter
menos revisões com a mesma retenção. Ele só muda os intervalos de
Difícil, Bom e Fácil. De novo continua trazendo o cartão de volta depois
de 5 minutos.

O JustFlip! mantém os valores do SM-2 atualizados de qualquer forma,
então você pode desativar a Programação inteligente quando quiser sem
perder nada. É um recurso Pro. Sem o Pro, tocar na chave abre a tela do
Pro.

## O que "pendente" significa {#due}

Um cartão fica **pendente** quando a data de revisão dele já passou, a
menos que você o tenha aposentado ou adiado. Cartões aposentados
(Capítulo 2) e adiados (veja [Adiar](#postponing)) mantêm a programação.
Eles só não aparecem enquanto estão de lado.

Cartões que você nunca estudou não estão pendentes. Eles são **novos**.
A sessão [Hoje]{.ui} mistura os dois: primeiro os pendentes, depois os
novos da sua cota diária. Os padrões são 20 [Cartões por sessão]{.ui} e
10 [Cartões novos por dia]{.ui}, ambos em **Ajustes › Comportamento**.

### Quais cartões vêm primeiro

Na sessão de Hoje e no menu de revisão da tela Baralhos, o JustFlip!
monta a fila assim:

1. **Os mais antigos primeiro.** Cartões que ficaram pendentes num dia
   anterior vêm antes dos que ficaram pendentes depois.
2. **Um embaralhamento diário dentro de cada dia.** Cartões pendentes no
   mesmo dia são misturados numa ordem que muda todo dia. Assim, uma
   sessão curta não pega sempre a mesma fatia do começo de um grande
   acúmulo.
3. **Os baralhos se revezam.** Os cartões de cada baralho são
   intercalados com os dos outros, com pesos de acordo com a prioridade
   (veja [Prioridades de revisão](#priorities)).
4. **Os cartões novos por último,** até o que sobrar da sua cota diária
   e do tamanho da sessão.
5. **Cartões-irmãos de oclusão de imagem ficam espaçados,** para que dois
   cartões da mesma imagem não apareçam um atrás do outro.

Uma revisão que você começa pela lista de cartões de um único baralho
embaralha os cartões pendentes daquele baralho.

::: gotcha
#### De novo não repete o cartão na mesma sessão

Um cartão que você avalia com **De novo** fica pendente outra vez em 5
minutos, mas não reaparece mais adiante na sessão em que você está. Você
o encontra na próxima sessão. Se quiser uma segunda tentativa logo,
termine a sessão e comece outra depois de alguns minutos.
:::

### Urgência

Interesses e baralhos também recebem uma pontuação de **urgência**, que
controla o indicador colorido nas listas e a ordenação [Por urgência]{.ui}.
Ela combina vários sinais. Os mais fortes são a proporção de cartões
pendentes e o atraso do cartão mais antigo. Os mais fracos são há quanto
tempo você estudou o baralho, o domínio baixo e alguns cartões novos.
Cartões aposentados e adiados não contam. Por algumas horas depois que
você estuda um baralho, a urgência dele fica em zero, para que o
indicador não acenda por causa das voltas de 5 minutos.

**Ajustes › Ritmo de revisão** muda a velocidade com que a urgência sobe:
**Tranquilo** (devagar, com primeiros lotes menores), **Constante** (o
padrão) ou **Intenso** (rápido, com a fila inteira visível). O ritmo de
revisão nunca muda os intervalos em si.

## Prioridades de revisão {#priorities}

Quando você tem mais cartões pendentes do que tempo, a prioridade decide
de quem são os cartões que você vê primeiro. Todo interesse tem uma
[Prioridade de aprendizado]{.ui} de 0 % a 100 %, em passos de 5 %. Ela
começa em **75 %**. Cada baralho, por padrão, usa [Herdar do
interesse]{.ui}, ou define seu próprio valor.

Defina-a em qualquer um de três lugares:

- **Num interesse:** toque e segure o interesse na lista Interesses,
  escolha [Editar interesse]{.ui} e mova o controle
  [Prioridade de aprendizado]{.ui}.
- **Num baralho:** toque e segure o baralho, escolha
  [Editar baralho]{.ui}, desative [Herdar do interesse]{.ui} e mova o
  controle.
- **Em todos os baralhos de um interesse de uma vez:** na tela Baralhos,
  abra o menu [Opções do baralho]{.ui} (o ícone de pasta) e escolha
  [Prioridade de revisão]{.ui}. A folha mostra o controle
  [Prioridade do interesse]{.ui} e, em [Prioridade do baralho]{.ui}, uma
  linha para cada baralho.

![A folha Prioridade de revisão: o controle do interesse no alto e, abaixo, uma linha por baralho com sua própria chave Herdar do interesse.](images/manual/{lang}/06-review-priority.jpg){.phone}

### Como funciona a mistura

A prioridade muda a *ordem* da fila, não o conteúdo. Pense em cada
baralho distribuindo seus cartões pendentes em rodadas. Um baralho com o
dobro da prioridade distribui duas vezes mais:

| Baralho | Prioridade | Ordem dos cartões dele na sessão |
|---|---|---|
| Espanhol | 100 % | 1º, 3º, 4º, 6º, 7º … |
| Química | 50 % | 2º, 5º, 8º … |

Com o padrão de 75 % em tudo, os baralhos simplesmente se alternam, um
cartão de cada. Uma prioridade maior ganha mais espaço numa sessão
limitada, e uma menor é empurrada para o fim.

::: gotcha
#### A prioridade nunca esconde um cartão

Mesmo em 0 %, os cartões pendentes de um baralho continuam pendentes.
Eles só são oferecidos depois de todo o resto. As contagens de
pendentes no widget, em Hoje e na tela Baralhos ficam exatamente iguais
quando você mexe num controle. A prioridade só importa quando uma sessão
é limitada: em Hoje e no menu de revisão da tela Baralhos. A revisão de
um único baralho não tem com quem competir.
:::

## Adiar {#postponing}

Às vezes um cartão não está errado, só não é a hora certa: semana de
prova de outra matéria, férias, um baralho ao qual você vai voltar no mês
que vem. Avaliar com De novo ou Difícil estragaria a programação dele.
**Adiar** o deixa em espera, sem mexer na programação.

### Como adiar

Durante qualquer revisão, toque no botão [Adiar]{.ui} (o ícone de
relógio no alto da tela de revisão). Escolha o escopo:

- [Adiar este cartão]{.ui}
- [Adiar este baralho]{.ui}
- [Adiar este interesse]{.ui}

Depois escolha por quanto tempo: [Amanhã]{.ui}, [Em 3 dias]{.ui},
[Em 1 semana]{.ui} ou [Data personalizada…]{.ui} para escolher um dia em
[Retomar em]{.ui}. Uma espera dura até o início daquele dia, então
"Amanhã" quer dizer o dia de amanhã inteiro, não 24 horas a partir de
agora.

![O menu Adiar durante uma revisão, com as opções de cartão, baralho e interesse.](images/manual/{lang}/06-postpone-menu.jpg){.phone}

Os cartões em espera saem da sessão em andamento na hora. Se você adiar o
baralho ou o interesse durante a revisão de um único baralho, a sessão
termina, porque não sobra nada para revisar.

### O que uma espera faz

Uma espera é um simples filtro. Nada é avaliado, o intervalo e a
facilidade ficam como estão e o histórico do cartão não muda. Enquanto a
espera durar:

| Onde | Cartões adiados |
|---|---|
| Hoje, o widget, as contagens de pendentes e a previsão | ficam de fora |
| [Cartões pendentes]{.ui} e [Cartões difíceis]{.ui} | ficam de fora |
| [Cartões novos]{.ui} (menu da tela Baralhos) | ficam de fora, mesmo que nunca estudados |
| [Todos os cartões]{.ui} | **incluídos** |

Se um cartão, o baralho dele e o interesse dele estiverem todos em
espera, vale a data mais distante.

### Como encerrar uma espera

As esperas terminam sozinhas na data que você escolheu. Para encerrar
uma antes, abra a tela Baralhos daquele interesse e escolha
[Opções do baralho]{.ui} › [Prioridade de revisão]{.ui}. Enquanto houver
algo em espera, a folha tem uma seção [Adiado]{.ui} com o número de
cartões em espera e um botão para cada espera ativa:

- [Retomar este interesse]{.ui}
- [Retomar *nome do baralho*]{.ui}, um para cada baralho em espera

::: gotcha
#### Um único cartão não pode ser retomado antes

A seção Adiado lista só esperas de interesses e de baralhos. A espera de
um único cartão entra no total, mas não tem botão de Retomar. Ela
simplesmente acaba na data marcada. Para encurtá-la, abra a revisão
[Todos os cartões]{.ui} do baralho, que ignora as esperas. Quando o
cartão aparecer, adie-o de novo com [Amanhã]{.ui}.
:::

::: tip
#### Todos os cartões é o modo de estudo intensivo

[Todos os cartões]{.ui} inclui de propósito os cartões aposentados e
adiados. Use-o na véspera de uma prova, ou quando quiser passar por um
baralho adiado mesmo assim. Suas avaliações ali contam como quaisquer
outras.
:::

## Rastreadores de progresso (Pro) {#trackers}

Algumas habilidades não cabem num flashcard: uma peça que você está
estudando no piano, uma técnica de escalada, um livro que você está
lendo. Um **rastreador de progresso** é um cartão especial com um nome,
notas opcionais e uma barra de progresso que você mesmo ajusta.

Para adicionar um, abra um baralho, toque no menu [Mais ações]{.ui} e
escolha [Adicionar rastreador de progresso]{.ui}. Na primeira vez, uma
breve introdução explica a ideia. Dê um nome ao rastreador ([O que você
quer acompanhar?]{.ui}) e, se quiser, notas. Depois, toque no rastreador
e mova o controle [Progresso]{.ui}, de 0 a 100 em passos de cinco, até
refletir o quanto você sente que avançou.

![Um baralho de rastreadores de progresso, cada um com sua barra de progresso e porcentagem.](images/manual/{lang}/06-progress-tracker.jpg){.phone}

O que um rastreador faz e não faz:

- Ele **nunca é revisado.** Os rastreadores ficam fora de todas as
  sessões de revisão, de Hoje, das contagens de pendentes, dos estágios
  das Estatísticas e de Ler cartões.
- Ele **não conta para a sua sequência.** Ninguém pergunta nada a você,
  então não há o que contar.
- Ele **conta, sim, para o domínio do baralho.** Um flashcard soma 1 ao
  domínio do baralho quando a última avaliação dele foi Bom ou Fácil. Um
  rastreador soma o próprio progresso: 60 % somam 0,6. Um baralho que só
  tem rastreadores mostra a média de progresso deles como domínio.
<!-- VERIFY: the in-app intro string trackerIntroPoint3Text says trackers "never affect deck mastery", but DeckStatistics.masteryIncludingTrackers (used by the card list and BackgroundStatsActor) blends them in. The manual follows the code; one of the two should be aligned. -->

::: gotcha
#### Os rastreadores são autoavaliados

Um rastreador diz exatamente o que você disser a ele, nada mais. A ideia
é essa, mas também significa que um rastreador em 100 % puxa o domínio
de um baralho para cima tanto quanto um cartão que você realmente sabe.
Seja honesto com o controle.
:::

Os rastreadores de progresso são um recurso Pro. Sem o Pro, o item do
menu tem um cadeado e abre a tela do Pro. Os rastreadores que você já
tem ficam guardados em segurança. No lugar deles, o baralho mostra uma
única linha dizendo quantos rastreadores contém, e eles voltam assim que
o Pro estiver ativo de novo.

## Cartões aposentados {#retire}

**Aposentar** um cartão ("eu sei isto, pare de me perguntar") o tira de
Pendentes e Difíceis sem apagar o histórico. Isso é explicado no
Capítulo 2. Para a programação, lembre-se de duas coisas:

- Um cartão aposentado mantém o intervalo, a facilidade e a data de
  revisão. Reative-o e ele recomeça exatamente de onde parou.
- Um cartão aposentado continua contando para o domínio, mas não conta
  mais para a urgência nem para as contagens de pendentes.

## Referência rápida {#reference}

| Ajuste ou valor | Onde | Padrão |
|---|---|---|
| Passos iniciais (De novo / Difícil / Bom / Fácil) | embutido | 5 min / 20 min / 1 dia / 4 dias |
| Facilidade inicial | embutido | 2,5 (faixa de 1,3 a 3,5) |
| Revisando / Graduado | embutido | intervalo ≥ 7 / ≥ 30 dias |
| [Cartões por sessão]{.ui} | Ajustes › Comportamento | 20 |
| [Cartões novos por dia]{.ui} | Ajustes › Comportamento | 10 |
| [Programação inteligente]{.ui} (Pro) | Ajustes › Comportamento | desativada |
| Ritmo de revisão | Ajustes › Ritmo de revisão | Constante |
| [Prioridade de aprendizado]{.ui} | Editar interesse / Editar baralho / Prioridade de revisão | 75 %, baralhos herdam |
| Adiar | tela de revisão, ícone de relógio | — |
| Sugestão de aposentar | tela de resultados | intervalo ≥ 90 dias e 4 acertos seguidos |
