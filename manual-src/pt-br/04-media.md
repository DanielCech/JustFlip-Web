---
slug: media
number: 4
title: Imagens, som e oclusão
description: "Adicione imagens e som aos cartões do JustFlip!, descreva-os para o VoiceOver, dê crédito às fontes e transforme um diagrama com legendas em cartões de oclusão de imagem — além das regras que mantêm a mídia com a aparência certa em todos os dispositivos."
---

# Imagens, som e oclusão {#media number="4"}

::: lede
Algumas coisas são mais fáceis de lembrar do que de descrever: um
pássaro, um acorde, um osso da mão, o jeito como uma palavra é
pronunciada. O JustFlip! deixa um cartão mostrar uma imagem, tocar um som
e — com a oclusão de imagem — cobrir partes de um diagrama para você se
testar em cada legenda dele.
:::

::: inthischapter
- Adicione imagens do app Fotos ou da área de transferência e escolha onde elas ficam
- Saiba qual aba o editor salva, para nada se perder
- Descreva imagens para o VoiceOver e dê crédito aos autores
- Coloque som num cartão e reproduza várias faixas vindas do Anki
- Transforme um diagrama com legendas num conjunto de cartões de oclusão de imagem
- Prepare imagens que fiquem nítidas, leves e visíveis no modo escuro
:::

Nada neste capítulo exige o JustFlip! Pro. Imagens, som e oclusão de
imagem funcionam do mesmo jeito na versão grátis.

## Adicionar uma imagem {#pictures}

Cada lado de um cartão tem sua própria imagem. Há três jeitos de
adicionar uma, e eles diferem no lugar onde a imagem vai parar.

**No texto.** Na aba [Texto]{.ui}, toque no botão de imagem, na ponta
esquerda da barra de formatação ([Inserir imagem]{.ui}), e escolha uma
foto. O JustFlip! coloca o marcador `![attachment:0]` na posição do
cursor, e a imagem aparece exatamente ali no cartão, entre as palavras ao
redor.

**Como o lado inteiro.** Vá para a aba [Imagem]{.ui} e toque em
[Escolher imagem]{.ui}. Sem texto, a imagem preenche o lado, centralizada
e ajustada para caber. É a escolha certa para cartões do tipo "O que é
isto?": uma bandeira, uma folha, um raio-X.

**Da área de transferência.** Copie uma imagem de qualquer lugar e cole-a
no campo de texto. O JustFlip! guarda a própria imagem, não um link para
a origem, e insere o marcador para você.

![A aba Imagem do editor de cartões, com uma foto escolhida e os campos de descrição e licença abaixo.](images/manual/{lang}/04-image-tab.jpg){.phone}

Um lado tem uma imagem. Escolher outra a substitui; para tirar a imagem,
abra a aba [Imagem]{.ui} e toque em [Remover]{.ui}.

::: tip
#### No Mac

O botão de imagem abre a sua fototeca do Fotos. Para uma imagem que está
em outro lugar — um download, uma captura de tela, um documento
digitalizado —, adicione-a primeiro ao Fotos e depois escolha-a no editor
de cartões.
:::

::: tip
#### Tirar uma foto para um cartão

Tire a foto primeiro com o app Câmera e depois escolha-a no Fotos, no
editor de cartões.
:::

### Onde a imagem fica {#placement}

Uma imagem pode ir parar em um de três lugares. O JustFlip! decide pelo
que há no lado, não por um ajuste:

| No lado | Para onde vai a imagem |
|---|---|
| Uma imagem e nenhum texto | Preenche o lado, centralizada |
| Texto com um marcador `![attachment:0]` | Dentro do texto, onde está o marcador |
| Texto sem marcador | Abaixo do texto, como um bloco |

O terceiro caso é o que acontece com baralhos importados (Capítulo 5) e
com muitos baralhos selecionados: o arquivo indica uma imagem, mas o
texto não tem marcador. Essa imagem fica no lugar quando você edita o
texto, e é na aba [Imagem]{.ui} que você a remove.

Quando o marcador está no seu texto e você o apaga, a imagem vai embora
junto ao salvar.

::: note
#### Várias imagens num lado

Um lado criado por você tem uma imagem. Cartões importados do Anki podem
ter várias, cada uma com seu marcador numerado — `![attachment:0]`,
`![attachment:1]` e assim por diante. Apague um marcador e só aquela
imagem desaparece; as outras ficam.
:::

Uma imagem grande num cartão mostra um botão [Ampliar]{.ui}. Ele abre a
imagem em tela cheia, onde você pode fazer o gesto de pinça ou tocar duas
vezes para ver mais de perto.

## A aba visível é o que se salva {#tabs}

As abas [Texto]{.ui}, [Imagem]{.ui} e [Áudio]{.ui} parecem três gavetas
de um mesmo lado. Na verdade, estão mais para três *tipos* de lado, e
[Salvar]{.ui} guarda aquele cuja aba está visível:

| Salvo na aba | O que aquele lado mantém |
|---|---|
| [Texto]{.ui} | O texto; uma imagem, se estiver no texto ou abaixo dele; um som que o cartão já tinha |
| [Imagem]{.ui} | A imagem; um som que o cartão já tinha. O texto é descartado |
| [Áudio]{.ui} | O som e o idioma do lado. O texto e a imagem são descartados |

::: gotcha
#### Volte para Texto antes de salvar

Vai trocar o som ou a imagem de um cartão que também tem texto? Faça a
mudança na aba [Áudio]{.ui} ou [Imagem]{.ui}, depois volte para
[Texto]{.ui} e toque em [Salvar]{.ui} ali. Salvo na outra aba, aquele
lado perde o texto.
:::

Essa regra dá receitas simples para cartões mistos:

- **Texto e imagem:** fique na aba [Texto]{.ui} e adicione a imagem com o
  botão de imagem da barra.
- **Imagem e som:** escolha o som na aba [Áudio]{.ui} e salve. Depois
  edite o cartão, escolha a imagem na aba [Imagem]{.ui} e salve de novo.
- **Texto e som:** escolha o som na aba [Áudio]{.ui} e salve. Depois
  edite o cartão, escreva o texto na aba [Texto]{.ui} e salve.

As receitas em duas etapas são necessárias porque um som escolhido num
cartão *novo* só é salvo a partir da aba [Áudio]{.ui}. Depois que o
cartão tem um som, as outras abas o mantêm.

## Descrever e dar crédito às imagens {#descriptions}

Quando um lado tem uma imagem, dois campos aparecem abaixo dela:
[Descrição da imagem]{.ui} e [Licença da imagem]{.ui}. Os dois são
opcionais, e os dois valem alguns segundos.

### A descrição

O VoiceOver lê a descrição no lugar da imagem. Sem ela, ele só diz
"Imagem", o que não diz nada sobre o cartão a quem não consegue vê-lo.

Descreva o que a imagem *mostra*, não o que ela *significa*. Num cartão
que pergunta "Que pássaro é este?", escreva "Um pequeno pássaro marrom de
peito vermelho num mourão de cerca" — não "Um pisco-de-peito-ruivo", que
entrega a resposta.

::: note
#### Descrições e dicas faladas são coisas diferentes

A descrição é para o VoiceOver. A dica falada do Capítulo 3,
`![attachment:0]{uma maçã vermelha}`, é o que o botão de alto-falante e
Ler cartões dizem. Uma imagem sem dica fica em silêncio quando o cartão é
lido em voz alta, não importa o que diga a descrição.
:::

### A licença

Vai usar a foto ou o desenho de outra pessoa? Coloque o autor e a
licença em [Licença da imagem]{.ui} — por exemplo "Foto: Maria Silva,
CC BY 4.0". Links escritos como `[rótulo](https://…)` funcionam neste
campo.

No cartão, um pequeno botão ⓘ aparece no rodapé. Tocar nele abre uma
folha com o texto completo, de modo que o crédito está ali para quem
quiser, sem poluir o cartão.

![Um cartão com uma foto e o botão de licença ⓘ no rodapé; a folha Licença da imagem aberta por cima.](images/manual/{lang}/04-licence-sheet.jpg){.phone}

Baralhos selecionados e feitos por IA também podem trazer licenças, nos
campos `q_image_license` e `a_image_license` (Capítulo 5).

## Tamanho, formatos e sincronização {#size}

A imagem de um cartão viaja com o cartão. Ela é guardada dentro da sua
biblioteca e sincronizada pelo iCloud com todos os dispositivos, então
uma imagem que você adiciona no Mac aparece no iPhone um instante depois.

Essa comodidade tem um preço: cada megabyte é sincronizado com cada
dispositivo. O JustFlip! mantém as imagens sob controle por conta própria.
Ao salvar, uma imagem com mais de 3.000 pixels no lado maior é reduzida
para 3.000; uma foto opaca é guardada como JPEG, e uma imagem com
transparência a mantém. Imagens menores são guardadas exatamente como
estão.

Arquivos de som são guardados exatamente como você os escolhe. Uma
gravação de três minutos pode facilmente pesar mais que cem cartões de
texto, então corte os trechos até ficar só a parte de que você precisa.

| | Funciona | Não funciona |
|---|---|---|
| Imagens | Tudo o que a sua fototeca do Fotos mostra; PNG, JPEG, GIF e WebP vindos de importações | SVG e outros formatos vetoriais |
| Som | Arquivos que o sistema reconhece como áudio, como `.mp3`, `.m4a` e `.wav` | Vídeo |

::: gotcha
#### Nada de SVG

Desenhos vetoriais (`.svg`) não podem ser exibidos num cartão. Exporte o
desenho como PNG antes — com cerca de 2.000 pixels de largura e fundo
branco (veja [Imagens que funcionam](#good-images)).
:::

## Som num cartão {#audio}

Abra a aba [Áudio]{.ui} e toque em [Escolher arquivo de áudio]{.ui} para
escolher um arquivo no app Arquivos. A aba passa a mostrar o nome e o
tamanho do arquivo, um botão de lixeira para removê-lo e
[Substituir áudio]{.ui}. Abaixo deles fica o [Idioma]{.ui} do lado.

O JustFlip! não grava pelo microfone. Grave com o app Gravador, compartilhe
a gravação com o app Arquivos e escolha-a de lá.

![A aba Áudio com um arquivo de áudio escolhido: nome, tamanho, botão de lixeira e Substituir áudio.](images/manual/{lang}/04-audio-tab.jpg){.phone}

### Como ele toca

Nada toca sozinho. O que você vê depende do lado:

- **Um lado que é só som** mostra um grande botão de reprodução no meio
  do cartão.
- **Um lado que também tem texto ou imagem** tem um pequeno botão
  [Áudio]{.ui} no rodapé, ao lado do botão de alto-falante. Enquanto o som
  toca, ele mostra [Reproduzindo]{.ui}.

Iniciar o som interrompe a voz, se ela estiver lendo o cartão, e
vice-versa.

### Várias faixas

Notas do Anki às vezes trazem mais de um som num lado — uma palavra e
depois uma frase de exemplo. O JustFlip! guarda todos, na ordem
original. O botão do rodapé passa a mostrar **Áudio (2)**, **Áudio (3)**
e assim por diante, e abre um menu com um item por faixa.

::: gotcha
#### Substituir uma faixa substitui todas

O editor mostra só a primeira faixa. [Substituir áudio]{.ui} ou o botão
de lixeira agem sobre *todas* as faixas daquele lado. Se quiser manter as
faixas extras, não mexa na aba [Áudio]{.ui}.
:::

## Oclusão de imagem {#occlusion}

A **oclusão de imagem** transforma uma imagem em muitos cartões. Você
cobre partes de um diagrama com formas; cada parte coberta vira um cartão
próprio que pergunta "O que está aqui embaixo?". É o jeito mais rápido de
aprender um mapa, uma prancha de anatomia, um circuito, uma tabela de
dedilhado — qualquer imagem cheia de legendas.

![O editor de oclusão: um diagrama anatômico com retângulos desenhados sobre as legendas e a fileira de ferramentas acima.](images/manual/{lang}/04-occlusion-editor.jpg){.shot width=80%}

### Criar cartões de oclusão

1. Abra um baralho, toque no botão [Mais ações]{.ui} (•••) e escolha
   [Adicionar cartões de oclusão de imagem]{.ui}.
2. Toque em [Selecionar imagem]{.ui} e escolha a imagem.
3. Arraste sobre a imagem para cobrir uma área. Repita para cada legenda
   que quiser aprender.
4. Escolha um modo, adicione o texto opcional e toque em **Salvar N
   cartões**.

As ferramentas acima da imagem:

| Ferramenta | O que faz |
|---|---|
| [Retângulo]{.ui} / [Elipse]{.ui} | Desenha uma nova área ao arrastar |
| [Selecionar]{.ui} | Move uma área ao arrastá-la; redimensiona pela alça do canto |
| [Desfazer]{.ui} / [Refazer]{.ui} | Volta e avança pelas suas edições |
| [Duplicar área]{.ui} | Copia a área selecionada |
| [Excluir área]{.ui} | Remove a área selecionada |
| [Trocar imagem]{.ui} | Troca a imagem de fundo |

### Dois modos {#occlusion-modes}

Em [Modo]{.ui} você escolhe quanto da imagem fica escondido enquanto um
cartão faz a pergunta. Em qualquer caso, cada área vira um cartão
próprio.

| Modo | Durante a pergunta | Melhor para |
|---|---|---|
| [Ocultar uma, adivinhar uma]{.ui} | Só a área testada fica coberta; você vê todas as outras legendas | Aprender onde as coisas ficam, com as vizinhas como pistas |
| [Ocultar todas, adivinhar uma]{.ui} | Todas as áreas ficam cobertas; a testada tem uma borda mais forte e um ponto de interrogação | Testar-se de verdade, sem as outras legendas dando dicas |

Comece com [Ocultar uma, adivinhar uma]{.ui}. Quando a imagem parecer
fácil, um segundo conjunto de cartões em [Ocultar todas, adivinhar
uma]{.ui} é uma boa prova.

### O texto em volta

Três campos opcionais ficam abaixo do modo:

- **[Cabeçalho (opcional)]{.ui}** — aparece acima da imagem em todos os
  cartões. Coloque a pergunta aqui: "Qual é o nome deste osso?"
- **[Notas da resposta (opcional)]{.ui}** — aparecem abaixo da imagem
  depois que a resposta é revelada. Boas para um mnemônico ou um
  detalhe.
- **[Comentários (opcional)]{.ui}** — um lembrete para você mesmo. Fica
  guardado com os cartões, mas não aparece durante a revisão.

Depois vem a [Descrição da imagem]{.ui}. Como o editor avisa, o VoiceOver
a lê no lugar da imagem, então descreva o diagrama sem entregar nenhuma
resposta: "Vista frontal do esqueleto humano" em vez de uma lista dos
ossos.

::: gotcha
#### As coberturas escondem a imagem, não o texto nela

Uma área cobre exatamente o espaço que você desenhou. Se uma legenda
escapar do retângulo, a resposta fica visível. Desenhe com folga — uma
margem em volta de cada legenda não custa nada.
:::

### Revisar um cartão de oclusão {#occlusion-review}

Um cartão de oclusão não vira. A imagem fica no lugar; toque em
[Mostrar resposta]{.ui} no alto — ou pressione a barra de espaço num
teclado — e a área coberta se abre, contornada, enquanto o resto fica
como estava. Depois avalie como qualquer outro cartão. Faça o gesto de
pinça para ampliar um diagrama cheio de detalhes.

![Um cartão de oclusão durante a revisão, antes e depois de Mostrar resposta.](images/manual/{lang}/04-occlusion-review.jpg){.phone}

Cartões de oclusão fazem parte das suas revisões normais no iPhone, no
iPad e no Mac. O Apple Watch os deixa de fora e informa quantos cartões
estão esperando por você no iPhone.

### Editar um cartão de oclusão {#occlusion-edit}

Edite qualquer cartão do conjunto — toque e segure nele (ou clique com o
botão direito no Mac) e escolha [Editar cartão]{.ui} — e o JustFlip! abre
o editor de áreas, não o editor de texto. Ali você pode mover, adicionar
ou apagar áreas, mudar o modo, o texto e até a imagem.

As áreas que você mantém conservam o histórico de revisão. Uma área que
você adiciona vira um cartão novo; uma área que você apaga leva o cartão
junto.

::: note
#### Oclusão vinda do Anki e de arquivos

As notas de oclusão de imagem do próprio Anki, e as do antigo
complemento Image Occlusion Enhanced, chegam como cartões de oclusão
nativos do JustFlip! quando você importa o baralho (Capítulo 5). Arquivos
de baralho criados pela skill para agentes de programação também podem
conter cartões de oclusão.
:::

## Imagens que funcionam {#good-images}

Um cartão desenha a sua imagem exatamente como ela é. Não há fundo por
trás, nem moldura, nem correção automática de contraste. Isso mantém as
fotos com aparência natural e faz valer a pena aprender alguns hábitos.

::: gotcha
#### Desenhos de linha transparentes somem no modo escuro

Um PNG com linhas pretas sobre fundo transparente fica perfeito no modo
claro. No modo escuro, o cartão por trás é quase preto e o desenho
desaparece — linhas, legendas, notas na pauta, tudo. Antes de adicionar
um diagrama, uma imagem de fórmula ou um esboço digitalizado, dê a ele um
fundo sólido branco ou claro. A maioria dos editores de imagem chama isso
de *achatar*; exportar como JPEG também resolve. Confira o cartão uma vez
no modo escuro antes de fazer mais cinquenta iguais.
:::

Mais algumas regras práticas:

1. **Use imagens rasterizadas.** PNG para diagramas, texto e desenhos de
   linha; JPEG para fotos. Nada de SVG.
2. **Uns 2.000 pixels no lado maior bastam.** O JustFlip! nunca desenha
   uma imagem num cartão com mais de uns 2.200 pixels e reduz tudo o que
   passa de 3.000 ao salvar. Mais resolução só custa tempo de
   sincronização.
3. **Corte sem dó.** Um cartão é pequeno. Elimine tudo o que não for a
   coisa sobre a qual você está perguntando — a imagem fica maior de
   graça.
4. **Mantenha grande o texto da imagem.** Legendas legíveis na tela de
   um notebook muitas vezes viram um borrão num cartão do iPhone. Ampliar
   ajuda, mas um cartão que precisa ser ampliado é mais lento de revisar.
5. **Uma ideia por imagem.** Um diagrama com vinte legendas dá um cartão
   ruim e vinte bons cartões de oclusão.

## Referência rápida {#reference .cheatsheet}

| Tarefa | Onde |
|---|---|
| Imagem dentro do texto | Aba [Texto]{.ui} → botão de imagem da barra |
| Imagem como o lado inteiro | Aba [Imagem]{.ui} → [Escolher imagem]{.ui} |
| Imagem da área de transferência | Cole no campo de texto (⌘V no Mac) |
| Remover uma imagem | Aba [Imagem]{.ui} → [Remover]{.ui} |
| Descrever para o VoiceOver | [Descrição da imagem]{.ui}, abaixo da imagem |
| Dar crédito ao autor | [Licença da imagem]{.ui} → o botão ⓘ no cartão |
| Adicionar um som | Aba [Áudio]{.ui} → [Escolher arquivo de áudio]{.ui} |
| Substituir ou remover um som | Aba [Áudio]{.ui} → [Substituir áudio]{.ui} ou o botão de lixeira |
| Novos cartões de oclusão | Baralho → [Mais ações]{.ui} → [Adicionar cartões de oclusão de imagem]{.ui} |
| Editar as áreas de oclusão | Edite qualquer cartão do conjunto |
| Revelar um cartão de oclusão | [Mostrar resposta]{.ui} ou a barra de espaço |
