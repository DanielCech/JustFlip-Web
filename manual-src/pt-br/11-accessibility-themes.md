---
slug: accessibility-themes
number: 11
title: Acessibilidade e temas
description: "Como o JustFlip! funciona com o VoiceOver, texto maior, Reduzir Movimento, Aumentar Contraste e Controle por Voz, como escolher um tema e um tamanho de texto, e como escrever cartões com que todos possam aprender."
---

# Acessibilidade e temas {#accessibility-themes number="11"}

::: lede
O JustFlip! se apoia nos ajustes de acessibilidade que você já usa no
iPhone, no iPad e no Mac. Você não precisa ativar nada no app. VoiceOver,
texto maior, Reduzir Movimento e Aumentar Contraste simplesmente
funcionam. Além disso, o JustFlip! tem seu próprio tamanho de texto e
cinco temas, para que o app seja confortável de ler e tenha a aparência
que você gosta.
:::

::: inthischapter
- Veja quais ajustes do sistema o JustFlip! segue, e o que cada um muda
- Revise com o VoiceOver: virar, avaliar e ouvir lacunas de cloze
- Defina o tamanho do texto, para o dispositivo inteiro ou só para o JustFlip!
- Escolha um tema: JustFlip claro, JustFlip escuro, Névoa, Névoa escura ou Sistema
- Escreva cartões que funcionem para qualquer pessoa, sejam quais forem seus olhos e ouvidos
:::

## Ele segue os seus ajustes {#system-settings}

O JustFlip! não tem um modo de acessibilidade para ativar. Ele lê os
ajustes em **Ajustes › Acessibilidade** do seu dispositivo e se adapta a
eles. Veja o que cada um muda:

| Ajuste do sistema | O que o JustFlip! faz |
|---|---|
| VoiceOver | Lê cada cartão, botão e gráfico, com ações nomeadas para virar e avaliar |
| Texto Maior | Aumenta o texto do app, inclusive o texto dos seus cartões |
| Texto em Negrito | Desenha o texto do app com um peso maior |
| Reduzir Movimento | Impede que o cartão gire ao virar e acalma as outras animações |
| Aumentar Contraste | Muda para cores de contraste mais alto e acrescenta contornos onde só a cor não basta |
| Diferenciar Sem Cor | Acrescenta símbolos, pontos e contornos aos indicadores que, de outro modo, usam cor |
| Controle por Voz | Cada botão responde ao nome visível, e o cartão a algumas frases extras |

O único ajuste de acessibilidade dentro do app é o **tamanho do texto**,
em **Ajustes › Aparência**. Você pode ler mais sobre ele em
[Texto maior](#larger-text).

::: note
#### Nosso relatório público de acessibilidade

Mantemos um relatório honesto e detalhado do que já está implementado e
do que ainda está sendo testado, dispositivo por dispositivo, em
https://just-flip.app/accessibility/. Os Rótulos de Acessibilidade da
Apple na App Store são publicados uma categoria por vez, só depois que
aquela categoria passa nos testes em dispositivos reais.
:::

## VoiceOver {#voiceover}

O VoiceOver lê o JustFlip! do mesmo jeito que lê os apps da própria
Apple. Listas, formulários e Ajustes usam controles padrão, e itens
agrupados, como uma linha de baralho ou uma estatística, são lidos como
um único item em vez de uma série de fragmentos.

### Cartões e revisões

Um cartão é **um único item** para o VoiceOver. Ele lê o lado que você
está vendo, e uma dica diz para tocar duas vezes para virá-lo. Depois de
virar, o VoiceOver anuncia "Pergunta" ou "Resposta", para você sempre
saber em que lado está.

Num cartão, deslize para cima ou para baixo para chegar às ações dele:

- [Virar cartão]{.ui} vira o cartão.
- [Mostrar conteúdo completo]{.ui} abre um cartão comprido demais para
  caber numa folha onde você pode lê-lo inteiro.
- [Ver imagem em tela cheia]{.ui} ou [Ver diagrama em tela cheia]{.ui}
  abre uma imagem ou um diagrama em tamanho real, onde você pode ampliar.

Os botões de avaliação são lidos com a avaliação primeiro e os detalhes
depois: a avaliação, depois quando o cartão voltaria, depois quantas
vezes você escolheu aquela avaliação nesta sessão.
Depois de cada avaliação, o VoiceOver diz onde você está, por exemplo
"Cartão 4 de 20", e anuncia [Prática concluída]{.ui} no fim da sessão.

:::: pair
```markdown
A capital da França
é {{c1::Paris}}.
```

::: {.card side="question" spoken="A capital da França é lacuna."}
A capital da França é [[…]]{.blank}.
:::
::::

**As lacunas de cloze nunca são entregues.** No lado da pergunta, o
VoiceOver diz "lacuna" onde estão as palavras escondidas, ou lê a dica,
se a lacuna tiver uma. A resposta só vem depois de virar.

O VoiceOver lê o resto do cartão do mesmo jeito que a própria voz do
JustFlip!:

- **Dicas faladas** são usadas. `[iOS]{ai ó és}` é lido como "ai ó és"
  (Capítulo 3).
- **Fórmulas** são lidas a partir da dica falada, ou do código TeX quando
  não há dica.
- **Diagramas** são lidos pelas legendas, não pelas setas.
- **Tabelas** são lidas linha por linha, célula por célula.
- **Imagens** são lidas a partir da descrição (veja
  [Escrever cartões acessíveis](#accessible-cards)). Uma imagem sem
  descrição é lida simplesmente como "Imagem".
- **Marcadores** são lidos pelo nome, por exemplo "Marcador vermelho".

### Listas e ações

Os menus de tocar e segurar também têm ações do VoiceOver, então você não
precisa do gesto. Numa linha de interesse, deslize para cima ou para
baixo para [Editar interesse]{.ui}, [Importar cartões]{.ui},
[Exportar arquivo]{.ui}, [Exportar estatísticas]{.ui} e [Apagar]{.ui}.
Uma linha de baralho oferece [Editar baralho]{.ui} e
[Apagar baralho]{.ui}. No campo de tags, o VoiceOver confirma cada tag
quando você a adiciona ou remove.

Em Estatísticas, os gráficos podem ser explorados ponto a ponto: cada
ponto é lido com a data e o valor.

Num cartão de oclusão de imagem, a imagem oferece [Ampliar]{.ui},
[Reduzir]{.ui} e [Redefinir zoom]{.ui} como ações, no lugar do gesto de
pinça.

### No Apple Watch

O relógio lê cada cartão como "Pergunta" ou "Resposta", seguido do
texto. Avaliar um cartão no relógio normalmente significa tocar e
segurar o cartão (Capítulo 8). O VoiceOver não consegue tocar e segurar,
então as quatro avaliações também são oferecidas como ações no cartão:
deslize para cima ou para baixo para escolher De novo, Difícil, Bom ou
Fácil.

## Texto maior {#larger-text}

De fábrica, o JustFlip! usa o tamanho de texto definido para o
dispositivo inteiro em **Ajustes › Acessibilidade › Tela e Tamanho do
Texto › Texto Maior**. Botões, listas, estatísticas e o texto dos seus
cartões crescem junto.

Você também pode dar ao JustFlip! um tamanho só dele, separado do resto
do dispositivo. Vá a **Ajustes › Aparência**:

![A seção Aparência nos Ajustes: o menu de tema, a chave Usar o tamanho de texto do sistema e o controle Tamanho do texto com a prévia.](images/manual/{lang}/11-appearance-settings.jpg){.phone}

- [Usar o tamanho de texto do sistema]{.ui} vem ativado. O JustFlip!
  usa então o tamanho do dispositivo.
- O controle [Tamanho do texto]{.ui} escolhe o tamanho só para o
  JustFlip!. Movê-lo desativa [Usar o tamanho de texto do sistema]{.ui}
  para você. A linha abaixo dele, "É assim que listas e botões
  aparecem.", mostra o tamanho que você está escolhendo.

O controle tem dez passos, do menor tamanho do sistema até o terceiro
tamanho de acessibilidade. Os dois maiores tamanhos, que você pode
definir no iOS, continuam funcionando no JustFlip! quando vêm do ajuste
do dispositivo. O controle só não os oferece. Nesses tamanhos, a maioria
dos cartões não cabe mais no cartão, e você abriria quase todos numa
folha separada.

O último passo do tour de boas-vindas oferece o mesmo controle, para você
definir um tamanho confortável antes da primeira revisão.

::: gotcha
#### Texto grande não encolhe para caber

No tamanho padrão, o JustFlip! encolhe um pouco um cartão comprido para
ele caber (Capítulo 3). Com um tamanho de texto maior, isso não
acontece. O cartão é desenhado exatamente no tamanho que você pediu. O
que não couber vai sumindo embaixo, e o botão **•••** (ou a ação
[Mostrar conteúdo completo]{.ui} do VoiceOver) abre o resto. Se isso
acontecer na maioria dos seus cartões, divida-os em cartões mais curtos.
É bom para a sua memória de qualquer jeito.
:::

::: note
#### No que ainda estamos trabalhando

O suporte a texto maior está quase completo, mas ainda não foi testado
em dispositivos em todos os tamanhos. A única falha conhecida: nos
maiores tamanhos de todos, o título e os botões de avaliação em volta do
cartão, na tela de revisão, podem ficar sem espaço. O cartão em si fica
bem. Se você precisa dos maiores tamanhos, definir o tamanho de texto do
próprio JustFlip! um ou dois passos abaixo mantém a tela de revisão
organizada.
:::
<!-- VERIFY: Readiness doc (2026-07-19) says "at AX3 and above the Review/Testing chrome (screen title, response buttons) overflows the screen with nothing to scroll". Confirm this is still open before publishing. -->

## Movimento, peso e contraste {#visual}

### Reduzir Movimento

Com **Reduzir Movimento** ativado, o cartão não gira mais em 3D quando
você o vira. Ele troca de lado no lugar, um pouco mais rápido. Os outros
movimentos do app também ficam mais calmos: cartões saindo voando depois
de uma avaliação, o brilho das listas carregando, as ilustrações do tour
de boas-vindas, barras de progresso se enchendo e os resultados da
revisão.

### Texto em Negrito

**Texto em Negrito** deixa o texto do app mais grosso, como faz em todo o
resto do dispositivo. Texto mais grosso ocupa mais espaço, então o
JustFlip! leva isso em conta quando calcula se um cartão cabe.
<!-- VERIFY: card body text is drawn by CardMarkupView from an explicit UIFont; confirm Bold Text actually thickens card question/answer text, not only system-styled UI text. -->

### Aumentar Contraste

Com **Aumentar Contraste** ativado, o JustFlip! muda para versões de
contraste mais alto das suas cores, no claro e no escuro. Alguns lugares
ganham contornos que, de outro modo, dependeriam só da cor:

- o **marcador** de um cartão ganha um contorno em volta da cor,
- num cartão de **oclusão de imagem**, a área sobre a qual você está
  sendo perguntado ganha mais destaque,
- os **diagramas**, no cartão e em tela cheia, também usam as cores de
  contraste mais alto.

Cada par de cores que o app usa para texto é medido contra o fundo nas
aparências clara, escura e nas duas versões com Aumentar Contraste, e
cada um passa de uma relação de contraste de 4,5:1.

### Diferenciar Sem Cor

Quando **Diferenciar Sem Cor** está ativado, os pequenos indicadores que
usam cor ganham também uma forma:

- os pequenos indicadores que mostram quão urgente é um cartão e como
  você o avaliou por último passam a usar símbolos distintos,
- o mapa de calor de atividade nas Estatísticas acrescenta um, dois ou
  três pontos para atividade baixa, média e alta, e contorna o quadrado
  de hoje,
- as áreas de oclusão de imagem ganham mais destaque, como com Aumentar
  Contraste.

Algumas coisas nunca dependem de cor, sejam quais forem os seus ajustes:
os botões de avaliação sempre têm um rótulo e um símbolo, e o marcador
selecionado no seletor de marcadores é indicado com um anel e uma marca
de seleção.

## Controle por Voz e teclados {#voice-control}

O **Controle por Voz** usa os nomes que você vê na tela, então "Tocar em
De novo", "Tocar em Bom" ou "Tocar em Ajustes" funcionam como você
espera. Alguns controles respondem a frases extras:

| Diga | Faz |
|---|---|
| "Tocar em Virar cartão", "Tocar em Mostrar o outro lado" ou "Tocar em Virar" | Vira o cartão |
| "Tocar em Adiar" ou "Tocar em Soneca" | Abre o menu de adiar durante uma revisão |

O Controle por Voz ainda não foi testado de ponta a ponta em todos os
dispositivos. Os controles deslizantes e os menus de tocar e segurar são
as partes menos testadas. Se um nome não funcionar ali, "Mostrar
números" sempre funciona.

**Num teclado**, uma revisão não precisa de cursor nenhum: Espaço vira o
cartão e as teclas de 1 a 4 o avaliam, no Mac e num iPad com teclado
físico. A referência completa está no Capítulo 8. O JustFlip! usa
botões, menus e chaves padrão em todo lugar, mas o **Acesso Total pelo
Teclado** ainda não foi testado de ponta a ponta.

## Temas {#themes}

Um tema é a paleta de cores com que o app inteiro é desenhado. Escolha um
em **Ajustes › Aparência › Tema**. O menu mostra uma pequena amostra do
tema atual:

| Tema | Como ele é |
|---|---|
| [Sistema]{.ui} | A paleta dourada do JustFlip!, clara ou escura de acordo com o dispositivo. É o padrão. |
| [JustFlip claro]{.ui} | A paleta dourada, sempre clara, seja qual for o ajuste do dispositivo |
| [JustFlip escuro]{.ui} | A paleta dourada, sempre escura |
| [Névoa]{.ui} | Uma paleta clara, calma e mineral, com azul de água limpa, zimbro e sálvia |
| [Névoa escura]{.ui} | Névoa sobre superfícies profundas cor de tinta |

![Os cinco temas lado a lado: Sistema, JustFlip claro, JustFlip escuro, Névoa e Névoa escura.](images/manual/{lang}/11-theme-swatches.jpg){.shot width=80%}

A mudança é instantânea: o app inteiro se repinta assim que você escolhe
um tema, sem reiniciar. Cada tema já traz o claro ou o escuro embutido,
então não há uma chave separada de claro/escuro. Para seguir o modo
escuro do dispositivo, escolha [Sistema]{.ui}.

::: note
#### Aonde os temas não chegam

O tema é para o app em si. O widget da Tela de Início mantém o dourado
do JustFlip! e segue o ajuste claro ou escuro do dispositivo. O app do
Apple Watch é sempre escuro. As imagens dos seus cartões aparecem
exatamente como são, em qualquer tema.
:::

::: gotcha
#### Um tema fixo ignora o modo escuro

[JustFlip claro]{.ui} e [Névoa]{.ui} continuam claros mesmo quando o
dispositivo muda para o modo escuro ao pôr do sol, e os dois temas
escuros continuam escuros durante o dia. Se o JustFlip! não seguir o seu
modo escuro, confira **Ajustes › Aparência › Tema**. Só [Sistema]{.ui}
o segue.
:::

## Escrever cartões acessíveis {#accessible-cards}

O app só consegue ler em voz alta o que está nos seus cartões. Estes
hábitos fazem um baralho funcionar para todo mundo que o usa, inclusive
você, quando ouve com Ler cartões numa caminhada.

1. **Descreva cada imagem.** Quando um lado tem imagem, o editor mostra
   um campo [Descrição da imagem]{.ui} ("Descreva a imagem (opcional)").
   O VoiceOver o lê no lugar da imagem. Descreva o que a imagem mostra:
   "Um pequeno pássaro marrom de peito vermelho num mourão de cerca" diz
   muito mais que "foto de pássaro". Num cartão "Que pássaro é este?",
   deixe o nome de fora, ou a descrição entrega a resposta (Capítulo 4).
   A descrição também faz um cartão só com imagem ser encontrado no
   Spotlight (Capítulo 8). E ela viaja com o baralho quando você o
   exporta e compartilha.
2. **Defina o idioma de cada lado.** O seletor de [Idioma]{.ui} decide
   qual voz lê o lado em voz alta com o botão de alto-falante e com Ler
   cartões (Capítulo 7). Um lado sem idioma nunca é falado pela voz do
   próprio JustFlip!.
3. **Adicione dicas faladas onde a leitura dá errado.** Uma dica como
   `$c^2${c ao quadrado}` corrige o que a voz do JustFlip! diz *e* o que
   o VoiceOver lê, de uma vez.
4. **Dê uma dica às lacunas de cloze quando o contexto for pouco.** Com
   uma dica, o VoiceOver e a voz leem a dica em vez de só "lacuna".
5. **Não deixe a cor carregar o significado.** Os marcadores são
   anunciados pelo nome, mas o que cada cor *significa* fica por sua
   conta. Se "vermelho" quer dizer "prova semana que vem", coloque isso
   numa tag também. Tags são texto, então podem ser lidas e buscadas.
6. **Dê bons rótulos aos seus diagramas.** Um diagrama é lido pelas
   legendas, então "Iniciar revisão → Cartão pendente?" diz mais que
   "A → B".
7. **Mantenha os cartões curtos.** Um cartão curto cabe em tamanhos de
   texto grandes e no Apple Watch, e também é mais fácil de lembrar.

::: gotcha
#### O idioma é para a voz, não para o VoiceOver

O seletor de [Idioma]{.ui} controla a voz do próprio JustFlip!: o botão
de alto-falante e Ler cartões. O VoiceOver lê os cartões com a voz
definida nos ajustes do próprio VoiceOver. Para um cartão em outro
idioma, o botão de alto-falante do cartão é o jeito mais confiável de
ouvi-lo pronunciado corretamente.
:::
<!-- VERIFY: CardMarkupView sets accessibilityLabel from speech text with no accessibilityLanguage / speech-language attribute (grep found none). Confirm on device that VoiceOver does not switch to the card's language. -->
