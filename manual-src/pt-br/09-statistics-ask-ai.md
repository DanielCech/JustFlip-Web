---
slug: statistics-ask-ai
number: 9
title: Estatísticas e Perguntar à IA
description: "Como o JustFlip! mede cartões pendentes, domínio, sequências e retenção, como ler a tela Estatísticas com honestidade e como Perguntar à IA transforma seu histórico de revisão num relatório de estudo para o seu próprio tutor de IA."
---

# Estatísticas e Perguntar à IA {#statistics-ask-ai number="9"}

::: lede
Cada avaliação que você dá é uma pequena evidência sobre a sua memória.
O JustFlip! guarda tudo, e este capítulo mostra como ler essas
evidências: os números que você vê todo dia, a tela Estatísticas, mais
detalhada, e Perguntar à IA, que transforma o que você sabe e o que vive
errando num briefing para a IA de chat que você preferir.
:::

::: inthischapter
- Entenda as contagens de pendentes, o domínio e as sequências, e como cada um é calculado
- Leia a retenção, o mapa de calor de atividade, o ranking de baralhos e a previsão
- Distinga "aprender melhor" de "só revisar mais"
- Passe um relatório de estudo de Perguntar à IA para o ChatGPT, o Claude ou o Gemini
- Exporte suas estatísticas como planilha ou como dados completos em JSON
:::

## Os números que você vê todo dia {#everyday}

Você não precisa da tela Estatísticas para saber como está indo. Três
números aparecem pelo app inteiro, e todos são grátis.

| Número | Onde você o vê | O que significa |
|---|---|---|
| **Pendentes** | Hoje, linhas de baralho, a lista de cartões | Cartões cuja próxima data de revisão chegou |
| **Domínio** | Linhas de interesse e de baralho | A proporção de cartões cuja avaliação *mais recente* foi Bom ou Fácil |
| **Sequência** | Hoje, como "*N* dias seguidos" | Dias seguidos com pelo menos uma revisão |

### Pendentes

Um cartão fica pendente quando a data de revisão programada passou. O
painel Hoje soma os cartões pendentes de todos os seus interesses, junto
com os cartões novos que o dia permite, e dá uma estimativa como "Cerca
de 6 min". Quando nada está pendente, o painel Hoje diz
[Tudo em dia]{.ui} e mostra uma pequena faixa [Próximos 7 dias]{.ui},
para você ver a carga de amanhã chegando. Como as datas de revisão são
escolhidas é o assunto do Capítulo 6.

### Domínio

O domínio de um baralho conta todos os cartões cuja avaliação **mais
recente** foi Bom ou Fácil e divide pelo número de cartões do baralho.
Os cartões que você nunca revisou também contam, como ainda não
dominados, então um baralho recém-importado começa em 0 %. O domínio de
um interesse é a média do domínio dos baralhos dele, com cada baralho
pesando o mesmo, seja qual for o tamanho.

::: note
#### O domínio vai e volta

Como só a última avaliação conta, o domínio é um retrato do momento, não
um troféu. Aperte De novo num cartão que você sabia semana passada, e
esse cartão deixa de contar até você acertá-lo de novo. A ideia é essa:
o número diz o que você sabe *hoje*.
:::

### Sequência

Sua sequência conta os dias em que você revisou pelo menos um cartão. Um
cartão basta. Você também ganha um dia de tolerância: se ainda não revisou
hoje, a sequência de ontem continua valendo até o dia acabar.

O JustFlip! é compreensivo com um ou outro dia perdido. Até **dois dias
perdidos** dentro da sua sequência atual são cobertos automaticamente,
para que um único dia corrido não apague um hábito de um mês. Os dias
cobertos não somam à contagem. Se quiser um empurrãozinho antes que uma
sequência se perca, ative [Resgate de sequência]{.ui} em **Ajustes ›
Lembretes**. Ele manda um lembrete à noite quando você ainda não revisou
naquele dia.

## Abrir as Estatísticas (Pro) {#opening}

A tela Estatísticas completa é um recurso **Pro**. Abra-a pelo menu
[Ajustes]{.ui} (o ícone de engrenagem) no alto da lista Interesses e
escolha [Estatísticas]{.ui}. Sem o Pro, o item do menu mostra um cadeado
e abre a tela do Pro. Um teste grátis do Pro também a desbloqueia.

![A tela Estatísticas: o seletor de interesse, os quatro blocos de resumo e os estágios da coleção.](images/manual/{lang}/09-statistics-overview.jpg){.phone}

As Estatísticas sempre olham para **um interesse de cada vez**. Escolha-o
em [Escopo]{.ui}, no alto. Tudo abaixo, dos blocos de resumo à previsão,
soma todos os baralhos daquele interesse. Isso mantém os números
comparáveis ao longo do tempo. Para comparar dois assuntos, alterne o
seletor entre eles.

A tela se atualiza sozinha depois que você revisa, então você pode
deixá-la aberta num iPad ou Mac ao lado de uma sessão de estudo.

### Os blocos de resumo

| Bloco | O que mostra |
|---|---|
| [Retenção madura]{.ui} | Com que frequência você lembrou cartões *maduros* nos [Últimos 30 dias]{.ui} (veja [Retenção](#retention)) |
| [Revisões]{.ui} | Quantas revisões você fez nos [Últimos 7 dias]{.ui}, incluindo hoje |
| [Sequência atual]{.ui} | Sua sequência neste interesse, mais a maior de todas |
| [Pendentes agora]{.ui} | Cartões pendentes agora, mais quantos ficam pendentes amanhã |

A sequência aqui é calculada do mesmo jeito que no painel Hoje, mas só
com as revisões do interesse selecionado. Ela pode ser menor que a sua
sequência do painel Hoje, que conta todos os interesses.

### Estágios da coleção

Em [Coleção]{.ui}, cada cartão do interesse é classificado em um de
quatro estágios:

| Estágio | Legenda | Significado |
|---|---|---|
| [Novos]{.ui} | A descobrir | Nunca revisados |
| [Aprendendo]{.ui} | Construindo memória | Sendo aprendidos, ou reaprendidos depois de um esquecimento |
| [Revisando]{.ui} | Reforçando | No ciclo regular de revisões |
| [Graduados]{.ui} | Dominados | Intervalos de 30 dias ou mais |

Uma coleção saudável vai se deslocando para a direita com as semanas. O
Capítulo 6 explica como um cartão passa de um estágio a outro.

::: gotcha
#### Pendentes agora não é o mesmo que Hoje

[Pendentes agora]{.ui} conta **todos** os cartões do interesse cuja data
de revisão passou, inclusive os que você adiou. O painel Hoje só oferece
o que cabe numa sessão: os cartões adiados ficam de fora, e
[Cartões por sessão]{.ui} e [Cartões novos por dia]{.ui} limitam o
resto. Um Pendentes agora grande ao lado de uma sessão curta de Hoje é
normal, não um bug.
:::

## Retenção: geral e madura {#retention}

A retenção responde a uma pergunta: *quando um cartão apareceu, você se
lembrou dele?* Uma revisão conta como lembrada quando você a avaliou com
**Bom ou Fácil**. De novo e Difícil contam como não lembrada.
<!-- VERIFY: whether a "Seen" response is stored as a review and so also counts as not remembered in retention, reviews and streaks. -->

O gráfico [Retenção madura]{.ui} mostra essa taxa por dia. Escolha o
período com o controle segmentado: [7D]{.ui}, [30D]{.ui}, [90D]{.ui} ou
[All]{.ui}.

![O gráfico de retenção em 90 dias. Cada ponto é a proporção de revisões maduras lembradas num dia.](images/manual/{lang}/09-retention-chart.jpg){.shot width=80%}

**Madura** é a palavra importante. Uma revisão conta como madura quando
o cartão já tinha alcançado um intervalo de **pelo menos 30 dias** antes
de você respondê-lo. Cartões novos são fáceis de "lembrar": você os viu
um minuto atrás. Um cartão que você viu pela última vez um mês atrás é o
verdadeiro teste da memória de longo prazo, e é isso que a linha madura
mostra.

Nas primeiras semanas você ainda não terá revisões maduras. O gráfico
então recorre à **retenção geral**, todas as revisões de todos os
cartões, e a legenda abaixo dele avisa: "Mostrando todas as revisões — o
sinal maduro aparece quando os cartões alcançam intervalos de 30 dias."
Assim que seus primeiros cartões passam da marca dos 30 dias, o gráfico
muda sozinho para o sinal maduro. Se não houver nenhuma revisão no
período, você verá [Ainda não há revisões maduras suficientes]{.ui}.

::: tip
#### Leia a tendência, não o ponto

Um único dia pode oscilar de 60 % a 100 % com três revisões. Escolha
[30D]{.ui} ou [90D]{.ui} e olhe o formato da linha. Uma linha estável na
faixa dos 80 e 90 quer dizer que a sua programação está fazendo o
trabalho dela.
:::

## Consistência: sequências e o mapa de calor {#consistency}

A seção [Consistência]{.ui} mostra sua sequência [Atual]{.ui} e a
[Maior]{.ui} no interesse, acima de um mapa de calor das **últimas 12
semanas**. Cada quadrado é um dia, e um quadrado mais escuro quer dizer
mais revisões naquele dia, em comparação com o seu dia mais movimentado
no período. O quadrado de hoje tem um pontinho.

![O mapa de calor de Consistência: 12 semanas de dias de revisão, com quadrados mais escuros para os dias mais movimentados.](images/manual/{lang}/09-heatmap.jpg){.shot width=80%}

Procure lacunas e aglomerados, não cores. Dez minutos todo dia valem mais
que uma hora todo domingo, porque a repetição espaçada depende de ver os
cartões perto da data de revisão.

::: note
#### A Maior pode parecer menor que a Atual

[Maior]{.ui} é a melhor série de dias *consecutivos* que você já teve,
sem os dois dias cobertos que protegem a [Atual]{.ui}. Então uma
sequência atual que sobreviveu a um dia perdido pode ser mais longa que
a sua "maior". Os dois números estão certos; eles só medem coisas um
pouco diferentes.
:::

## Comparação de baralhos {#deck-comparison}

[Comparação de baralhos]{.ui} classifica os baralhos do interesse pela
retenção, com o **mais baixo no topo**. Essa barra conta todas as
revisões que você já fez no baralho, não só as dos últimos 30 dias,
então ela muda devagar. Abaixo do gráfico, os quatro primeiros baralhos
mostram quantos cartões estão pendentes agora e o total de recaídas, as
vezes em que um cartão que você sabia foi esquecido de novo.

O baralho do topo é onde o seu esforço rende mais. Em geral, isso quer
dizer uma de três coisas:

1. **Os cartões não estão claros.** Duas respostas possíveis, ou coisa
   demais num cartão. O Capítulo 3 traz as soluções.
2. **O conteúdo depende de algo que você ainda não aprendeu.** É
   exatamente para isso que serve [Perguntar à IA](#ask-ai).
3. **Você está indo rápido demais.** Adicionou mais cartões novos do que
   consegue absorver. Reduza [Cartões novos por dia]{.ui} por um tempo.

## Previsão de revisões futuras {#forecast}

A previsão é um gráfico de barras de quantos cartões ficam pendentes em
cada um dos próximos [7D]{.ui} ou [30D]{.ui}, com base na programação
atual. Os cartões já atrasados entram na barra de hoje, então um
acúmulo nunca some de vista. Os cartões aposentados ficam de fora.

Um pico daqui a duas semanas é normal depois de uma grande importação
ou de uma semana cheia de cartões novos. Se vir um chegando, distribua:
revise um pouco a mais nos dias anteriores.

::: gotcha
#### A previsão só conhece a programação de hoje

Cada avaliação que você dá muda a data de revisão de um cartão, então a
previsão é uma projeção, não uma promessa. Os cartões que você erra
voltam mais cedo e deixam o dia seguinte mais cheio do que o gráfico
dizia.
:::

## Ler os números com honestidade {#reading}

É fácil se sentir produtivo e aprender pouco. A tela Estatísticas foi
feita para responder a uma pergunta mais difícil: *estou aprendendo
melhor, ou só revisando mais?* Algumas regras práticas:

- **Revisões em alta, retenção madura em baixa.** Você está adicionando
  mais rápido do que consegue consolidar. Vá com calma nos cartões
  novos; o acúmulo vai agradecer.
- **Retenção madura estável, revisões estáveis.** Esse é o objetivo. A
  programação está fazendo o trabalho dela; continue assim.
- **Retenção geral alta, mas ainda sem sinal maduro.** Não há nada de
  errado. Seus cartões só ainda não chegaram a intervalos de 30 dias.
  Dê um mês.
- **Um baralho muito abaixo dos outros.** Esse baralho tem um problema
  de cartões ou de pré-requisitos, não de força de vontade. Veja
  [Comparação de baralhos](#deck-comparison).
- **Uma sequência longa com quadrados claros.** Um cartão por dia mantém
  a sequência viva, mas não a programação. Fique de olho também em
  [Pendentes agora]{.ui}.

::: gotcha
#### Avalie com honestidade, ou os números mentem

Todos os números deste capítulo são construídos a partir das suas
avaliações. Aperte Bom num cartão de que você se lembrou pela metade, e
você infla o domínio, a retenção e os intervalos de uma vez, e o cartão
volta mais tarde do que deveria. Difícil não é um fracasso; é
informação.
:::

## Perguntar à IA: prepare o seu próprio tutor {#ask-ai}

Depois de algumas semanas, o JustFlip! sabe algo que nenhuma IA de chat
sabe: quais dos seus cartões você já domina e quais você vive errando.
**Perguntar à IA** transforma isso numa solicitação pronta, um relatório
de estudo com instruções, que você cola no ChatGPT, no Claude, no Gemini
ou em qualquer outro assistente.

### Onde encontrar

| A partir de | Escolha | Escopo |
|---|---|---|
| Um cartão na lista de cartões (toque e segure ou clique com o botão direito) | [Perguntar à IA]{.ui} | Aquele cartão |
| O botão de brilhos no alto de uma revisão | [Perguntar à IA sobre o cartão]{.ui} | O cartão na tela |
| O botão de brilhos no alto de uma revisão | [Perguntar à IA sobre o baralho]{.ui} **(Pro)** | O baralho inteiro daquele cartão |
| Um baralho na lista de baralhos (toque e segure ou clique com o botão direito) | [Perguntar à IA]{.ui} **(Pro)** | O baralho inteiro |
| A tela de resultados depois de uma revisão | [Perguntar à IA]{.ui} | Os cartões daquela sessão |

Cartões individuais e relatórios de sessão são grátis. Relatórios de
baralho são **Pro**: sem o Pro, esses itens de menu mostram um cadeado e
abrem a tela do Pro.

![A folha Perguntar à IA: Copiar solicitação e Salvar solicitação, os links Abrir em uma IA de chat e a prévia da solicitação.](images/manual/{lang}/09-ask-ai-sheet.jpg){.phone}

### O que entra no relatório

Um **relatório de baralho** organiza seus cartões pelo histórico:

- **Cartões com que você tem dificuldade**: cartões com pelo menos uma
  recaída, facilidade baixa, ou ainda em aprendizado. Eles são listados
  do pior para o melhor, cada um com a resposta e uma linha de
  estatísticas, por exemplo "failed 4 of 6 review(s) · 2 lapse(s) · ease
  1.8 · avg 21s to answer". O relatório inclui até 25 deles.
- **Cartões que você já domina**: listados só pela pergunta, como
  contexto, para que a IA não perca seu tempo ensinando-os de novo (até
  60).
- **Um baralho novo**, ainda sem histórico, é listado cartão por cartão,
  e a IA é solicitada a deduzir o assunto e ensinar os fundamentos.

Um **relatório de cartão** trata de um único cartão: a pergunta, a
resposta e o seu histórico com ele. Um **relatório de sessão** lista os
cartões da revisão que você acabou de terminar, com a avaliação que você
deu a cada um.

### O que ele pede à IA

As instruções seguem a mesma ideia em qualquer escopo:

1. **Ensinar os pré-requisitos.** Seus erros muitas vezes apontam para
   conhecimentos de base que o baralho não cobre, então a IA é solicitada
   a ensiná-los desde o começo.
2. **Explicar os equívocos** que as suas respostas erradas sugerem.
3. **Recomendar fontes**, cada uma com um link direto, dando preferência
   a documentação oficial e referências confiáveis.
4. **Opcionalmente, escrever flashcards novos** para as lacunas, em CSV
   (`question,answer`) num bloco de código, prontos para importar.

A solicitação em si é em inglês, que os modelos de chat seguem com mais
confiabilidade, mas ela pede à IA que **responda no idioma do seu
dispositivo** e que escreva os flashcards novos no idioma do baralho.

### Enviar

A folha oferece [Copiar solicitação]{.ui} e [Salvar solicitação]{.ui},
que salva um arquivo `.txt`. Em [Abrir em uma IA de chat]{.ui}, as
linhas do ChatGPT, do Claude e do Gemini abrem o assistente numa conversa
nova, no app dele, se estiver instalado, ou no navegador. Elas não levam
a sua solicitação: copie primeiro, depois abra, depois cole. A
[Prévia da solicitação]{.ui}, embaixo, mostra exatamente o que você está
prestes a compartilhar.

::: tip
#### Feche o ciclo

Quando a IA escrever cartões novos para você, copie a resposta dela,
volte para a lista Interesses e escolha [Adicionar ou importar]{.ui} ›
[Colar cartões]{.ui}. O JustFlip! encontra o CSV dentro da resposta,
mesmo dentro de um bloco de código, e mostra uma prévia. Você escolhe o
baralho antes de qualquer coisa ser salva.
:::

::: note
#### O JustFlip! nunca conversa com uma IA

Perguntar à IA não tem nenhuma IA dentro. O JustFlip! só monta texto no
seu dispositivo e nunca entra em contato com um serviço de IA. O
relatório só sai do app quando **você** o copia ou salva. O que acontece
depois disso fica entre você e o serviço em que você o colar, então leia
a prévia antes se os seus cartões tiverem algo privado.
:::

::: gotcha
#### Cartões só com imagem chegam como um marcador de posição

O relatório é texto simples. Um cartão sem texto em um dos lados, só com
imagem ou áudio, chega à IA como "(no text — this card uses an image,
audio, or PDF)". Os rastreadores de progresso ficam totalmente fora dos
relatórios de baralho. Se um baralho for quase todo de imagens,
acrescente uma linha de texto aos cartões que importam.
:::

## Exportar suas estatísticas {#export}

Para suas próprias planilhas e gráficos, você pode exportar as
estatísticas completas de um interesse. A exportação é grátis.

- **iPhone e iPad:** toque e segure um interesse na lista Interesses e
  escolha [Exportar estatísticas]{.ui}, depois [Planilha (CSV)]{.ui} ou
  [Dados completos (JSON)]{.ui}. Escolha onde salvar o arquivo.
- **Mac:** clique com o botão direito num interesse para ver o mesmo
  menu, ou selecione um interesse e escolha **Arquivo › Export
  Statistics…**, que salva o CSV.

Os arquivos levam o nome do interesse, por exemplo
`Espanhol.flashcards-stats.csv`.

### O CSV: uma linha por cartão

| Coluna | Conteúdo |
|---|---|
| `interest`, `deck` | Onde o cartão fica |
| `question`, `answer` | O texto do cartão |
| `state` | `unseen`, `learning`, `reviewing`, `relearning` ou `graduated` |
| `ease_factor` | A facilidade do cartão (2,5 para um cartão novo) |
| `interval_days` | O intervalo atual, em dias |
| `due_date` | A próxima revisão, como data e hora ISO 8601 |
| `lapses` | Vezes que o cartão foi esquecido depois de aprendido |
| `streak` | Respostas certas seguidas |
| `total_reviews` | Todas as revisões registradas |
| `success_rate` | Proporção de respostas Bom ou Fácil, de 0 a 1 |
| `avg_review_time_sec` | Tempo médio para responder |
| `last_reviewed` | Hora da última revisão, vazio se nunca houve |

### O JSON: tudo

A exportação em JSON tem os mesmos campos por cartão, mais um resumo de
estágios para cada baralho, cada sessão de estudo com início, fim,
número de cartões e taxa de acerto, e o **histórico** completo de cada
cartão: cada revisão com a hora, a avaliação, o tempo de resposta e o
intervalo e a facilidade antes e depois. Use-o quando quiser traçar a
sua própria curva do esquecimento.

::: gotcha
#### Exportações de estatísticas são só de ida

Um arquivo de estatísticas é para leitura, não para restauração. O
JustFlip! não consegue importá-lo de volta, e ele não contém imagens nem
sons. Para mover ou fazer backup de um interesse *com* o progresso, use
[Exportar arquivo]{.ui}; veja o Capítulo 10.
:::
