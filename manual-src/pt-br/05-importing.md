---
slug: importing
number: 5
title: Trazendo baralhos
description: "Importe pacotes do Anki, planilhas CSV, baralhos feitos por IA e baralhos selecionados para o JustFlip!, entenda o que acontece quando você importa o mesmo arquivo de novo e exporte um interesse para compartilhar ou guardar."
---

# Trazendo baralhos {#importing number="5"}

::: lede
Você não precisa digitar cada cartão. O JustFlip! lê pacotes do Anki,
planilhas e arquivos de baralho escritos por uma IA, e consegue devolver
um interesse num único arquivo. Este capítulo mostra por onde entra cada
tipo de arquivo, o que é trazido — e as poucas regras que decidem se uma
importação adiciona cartões ou atualiza os que você já tem.
:::

::: inthischapter
- Encontre a importação no iPhone, no iPad e no Mac
- Traga um baralho do Anki e leia o relatório de importação
- Transforme uma planilha num baralho
- Importe baralhos feitos por IA ou da biblioteca selecionada
- Saiba o que a reimportação faz antes de fazê-la
- Exporte um interesse para guardar ou compartilhar
:::

A importação faz parte da versão grátis, como tudo neste capítulo.

## Onde fica a importação {#where}

Toda importação começa na tela **Interesses**. O JustFlip! reconhece o
arquivo pelo nome e pelo conteúdo, então os mesmos pontos de entrada
aceitam todos os formatos.

| Em | Como |
|---|---|
| iPhone, iPad | O menu [Adicionar ou importar]{.ui} (o botão de bandeja) → [Importar cartões]{.ui} |
| iPhone, iPad | No Arquivos, no Mail ou no Safari: compartilhe o arquivo ou abra-o com o JustFlip! |
| iPad, Mac | Arraste arquivos para a lista de interesses — ela mostra [Solte para importar]{.ui} |
| Mac | **Arquivo › Import Cards…** (⇧⌘I) ou **Arquivo › Import Interest Archive…** |
| Qualquer um | Toque e segure um interesse → [Importar cartões]{.ui}: um arquivo CSV ou do Anki direto para aquele interesse |
| Qualquer um | [Adicionar ou importar]{.ui} → [Colar cartões]{.ui}: cartões que você copiou (veja [Colar cartões](#paste)) |

A importação principal aceita vários arquivos de uma vez, e pastas
inteiras: todos os arquivos compatíveis dentro delas são importados.

![O menu Adicionar ou importar na tela Interesses, com Importar cartões e Colar cartões.](images/manual/{lang}/05-import-menu.jpg){.phone}

### No que cada arquivo se transforma

| Arquivo | O que é | Onde vai parar |
|---|---|---|
| `.apkg`, `.colpkg` | Um baralho ou coleção do Anki | Um interesse que você escolhe; um baralho por baralho do Anki |
| `.csv` | Uma planilha, um cartão por linha | Um interesse que você escolhe; sempre um baralho novo |
| `.flashcards` | Um arquivo de baralho, só texto — feito por IA ou selecionado | O interesse indicado dentro do arquivo |
| `.flashcards.zip` | Um arquivo de baralho com imagens e som, ou um interesse exportado | O interesse indicado dentro do arquivo |

Para arquivos do Anki e CSV, o JustFlip! primeiro pergunta onde colocar
os cartões. A folha [Importar cartões]{.ui} tem um menu [Interesse]{.ui}
— que inclui [Novo interesse...]{.ui} — e, para uma planilha, um
[Nome do baralho]{.ui}. Toque em [Continuar]{.ui}.

Quando a importação cria um interesse novo, a folha também oferece
[Incluir na busca do dispositivo]{.ui}, que decide se os cartões dele
podem aparecer no Spotlight (Capítulo 8).

## Baralhos do Anki {#anki}

O JustFlip! importa os pacotes de baralho (`.apkg`) e os pacotes de
coleção (`.colpkg`) do Anki, tanto de versões antigas quanto atuais. No
Anki, use **Arquivo › Exportar**, escolha *Pacote de Baralho do Anki* e
inclua a mídia. Depois importe o arquivo como descrito acima.

Para trazer também o seu progresso, marque ainda *Include scheduling information* (incluir as informações de programação) ao exportar.

A promessa é simples: **o conteúdo de estudo vem junto; a apresentação
do Anki não.** Suas palavras, imagens, sons, fórmulas e tags chegam. Seu progresso de revisão também pode vir junto. Os estilos e scripts do Anki ficam para trás.

### O que vem junto

- **Todos os cartões.** Cada cartão do Anki vira um cartão do JustFlip!.
  Os tipos de nota frente/verso, invertido e invertido opcional
  funcionam.
- **Notas cloze, divididas.** Uma nota com `{{c1::…}}`, `{{c2::…}}` e
  `{{c3::…}}` gera três cartões do JustFlip!, um por número, exatamente
  como no Anki. Cada cartão esconde o próprio número e mostra os outros
  preenchidos. Uma dica como `{{c1::Paris::capital}}` é mantida.
- **Imagens**, no meio do texto, na ordem em que aparecem. O texto
  alternativo de uma imagem do Anki vira o que a voz diz para ela.
- **Som.** Cada `[sound:…]` de um lado é mantido, em ordem (Capítulo 4).
- **Oclusão de imagem**, tanto da ferramenta do próprio Anki quanto do
  antigo complemento Image Occlusion Enhanced. As duas viram cartões de
  oclusão nativos.
- **Formatação**: negrito, itálico, listas, links, tabelas pequenas,
  matemática, subscritos e sobrescritos.
- **Tags.**
- **Estrutura de baralhos, achatada.** `Idiomas::Espanhol::Verbos` vira
  um único baralho chamado **Idiomas / Espanhol / Verbos**, porque o
  JustFlip! não tem sub-baralhos.
- **Seu progresso de revisão**, se a exportação incluir as informações de programação. Cada cartão estudado mantém o intervalo, a facilidade, a data de revisão e as recaídas, e o registro de revisões chega como histórico. Assim, um baralho que você estuda há anos continua de onde parou. Cartões suspensos chegam aposentados. Desligue [Manter o progresso do Anki]{.ui} na folha de importação se quiser que todos os cartões comecem como novos.

### O que fica no Anki

- **Os parâmetros do FSRS do Anki.** Se você usa o FSRS no Anki, os parâmetros dele e o estado de memória de cada cartão não são importados. O cartão mantém o intervalo, a data de revisão e o registro de revisões, e recebe a facilidade padrão.
- **O progresso de baralhos compartilhados.** Um baralho baixado que você nunca estudou não tem histórico para trazer, então os cartões começam como novos.
- **Estilos.** CSS personalizado, fontes e cores são simplificados.
- **Código.** JavaScript e complementos nunca rodam e não são mantidos.
- **Qualquer coisa online.** Imagens remotas, páginas incorporadas e
  iframes não são baixados.
- **Vídeo.**
- **Sinalizações.** As sinalizações de cartão do Anki não são trazidas.
- **A pergunta repetida.** O Anki mostra a pergunta de novo no lado da
  resposta; o JustFlip! vira o cartão no lugar, então essa cópia é
  descartada. Os cartões cloze são a exceção, porque ali a frase
  repetida *é* a resposta.

::: gotcha
#### Uma nota cloze do Anki são vários cartões

Um baralho que mostra 300 notas no Anki pode chegar como 700 cartões.
Isso não é duplicação: cada número de cloze é um cartão, no Anki e no
JustFlip!. O número na folha de importação é o número de cartões.
:::

::: gotcha
#### Cartões importados não têm idioma

O Anki não guarda em que idioma está cada campo, então todo cartão
importado começa com o [Idioma]{.ui} definido como **Nenhum** — e um lado
sem idioma nunca é lido em voz alta (Capítulo 3). Se quiser ouvir um
baralho importado, defina o idioma dos cartões.
:::

### A folha de importação {#anki-report}

Importar um único arquivo do Anki pelo menu [Adicionar ou importar]{.ui},
pelo app Arquivos ou arrastando abre [Importar do Anki]{.ui}. Ela lê o
pacote primeiro — [Verificando o pacote…]{.ui},
[Descompactando…]{.ui}, [Lendo os cartões…]{.ui} — e depois mostra
[Pronto para estudar]{.ui}: quantos baralhos do Anki, [Cartões]{.ui},
[Imagens]{.ui} e [Áudio]{.ui} ela encontrou.

Se o pacote tiver cartões que você já estudou, a folha também mostra [Manter o progresso do Anki]{.ui}, ligado por padrão. Ligado, esses cartões mantêm a programação e o histórico de revisão do Anki. Desligado, todos os cartões começam do zero.

![A folha Importar do Anki: o resumo, O que mudou e Opções.](images/manual/{lang}/05-anki-report.jpg){.phone}

Em [O que mudou]{.ui} fica o relatório de importação: uma frase simples
para cada coisa que vale saber antes de confirmar. Por exemplo:

- *240 cartões mantêm a programação e o histórico de revisão do Anki.* (Com um baralho compartilhado ou com [Manter o progresso do Anki]{.ui} desligado: *Os cartões começam do zero aqui. Seu histórico de revisão fica no Anki.*)
- *As respostas não repetem mais a pergunta — o JustFlip a mantém na
  tela enquanto você vira.*
- *12 imagens não puderam ser lidas e foram omitidas.*
- *3 cartões não tinham nada no lado da pergunta e foram ignorados.*
- *2 campos vinham de complementos do Anki e foram omitidos.*

Nada é escrito *dentro* dos seus cartões. Uma imagem que falta
simplesmente falta, e o relatório é o único lugar que avisa.

Em [Opções]{.ui} ficam os [Baralhos]{.ui} que a importação vai criar e
uma escolha — [Se você já tem estes cartões]{.ui}:

| Opção | Cartões que você já importou deste pacote |
|---|---|
| [Adicionar uma cópia nova]{.ui} | Ficam como estão; o pacote inteiro é adicionado de novo, como baralhos novos. É o padrão |
| [Pular os que já tenho]{.ui} | Ficam como estão; só cartões novos são adicionados |
| [Atualizar e manter meu progresso]{.ui} | Texto, imagens e tags são atualizados a partir do arquivo; sua programação não muda |

O JustFlip! lembra de qual nota e cartão do Anki veio cada cartão
importado, então a correspondência funciona mesmo depois que você edita
a pergunta no JustFlip!. Toque em [Importar]{.ui} para adicionar os
cartões.

::: tip
#### Atualizar um baralho que você ainda estuda no Anki

Continue trabalhando no Anki, exporte de novo e importe com
[Atualizar e manter meu progresso]{.ui}. As correções chegam, as notas
novas são adicionadas e a sua programação no JustFlip! continua sua.
:::

::: gotcha
#### A importação rápida pula a escolha

Dois caminhos do Anki importam na hora, sem folha e sempre como cópia
nova: [Importar cartões]{.ui} no menu do próprio interesse e vários
arquivos do Anki escolhidos de uma vez. Para pular ou atualizar cartões
que você já tem, importe um arquivo por vez pelo menu
[Adicionar ou importar]{.ui}.
:::

## Planilhas (CSV) {#csv}

Um arquivo CSV é o jeito mais simples de levar uma lista para o
JustFlip!: uma lista de vocabulário, um glossário, uma exportação de
outro app. Cada linha é um cartão; uma coluna é a pergunta, outra a
resposta.

```csv
Pergunta,Resposta
el perro,o cachorro
el gato,o gato
"la casa, el hogar",a casa
```

Depois de [Continuar]{.ui}, [Importar CSV]{.ui} mostra uma prévia ao
vivo:

- **[Separador]{.ui}** — vírgula, ponto e vírgula, barra vertical ou
  tabulação. O JustFlip! o adivinha pelas primeiras linhas; mude-o se as
  colunas parecerem erradas.
- **[Ignorar a primeira linha como cabeçalho]{.ui}** — desativado de
  início. Ative quando a primeira linha tiver os títulos das colunas.
- **[Mapeamento de colunas]{.ui}** — escolha qual coluna é a
  [Frente (pergunta)]{.ui} e qual é o [Verso (resposta)]{.ui}. As outras
  colunas são ignoradas.
- **[Prévia]{.ui}** — as primeiras linhas, do jeito que serão lidas.

Toque em **Importar (N)** quando estiver tudo certo.

![A prévia de Importar CSV com o separador, a chave de cabeçalho, o mapeamento de colunas e uma prévia das linhas.](images/manual/{lang}/05-csv-preview.jpg){.phone}

Alguns detalhes que poupam uma segunda tentativa:

- Coloque um campo entre aspas duplas quando ele tiver o separador ou
  uma quebra de linha; escreva uma aspa dentro dele como `""`.
- O texto pode usar a marcação de cartões do Capítulo 3 — negrito,
  matemática, cloze. Um `{{c1::…}}` numa célula CSV continua sendo **um**
  cartão com todas as suas lacunas; cartões CSV nunca são divididos como
  as notas cloze do Anki.
- Uma linha com a pergunta vazia é ignorada. Uma linha com a resposta
  vazia é importada como um cartão sem resposta.
- Cartões CSV não têm idioma, imagens nem tags.

::: gotcha
#### A linha de cabeçalho vira um cartão

[Ignorar a primeira linha como cabeçalho]{.ui} começa desativado. Se você
esquecer, os títulos das colunas viram um cartão chamado "Pergunta" cuja
resposta é "Resposta". Confira a primeira linha da prévia antes de
importar.
:::

::: gotcha
#### Um CSV nunca atualiza nada

Toda importação de CSV cria um baralho **novo**, mesmo que já exista um
baralho com o mesmo nome — você acaba com dois. Para alterar cartões que
importou de uma planilha, edite-os no JustFlip!, ou apague o baralho
antigo antes de importar o arquivo corrigido.
:::

## Baralhos feitos com IA {#ai}

O baralho mais fácil de aprender é o feito a partir do *seu* material:
suas anotações, um capítulo, a transcrição de uma aula. O JustFlip! não
conversa com nenhuma IA por conta própria. Em vez disso, o site dá à sua
IA as instruções para escrever um arquivo de baralho do JustFlip!, e você
importa o resultado.

| Página | Para | Você recebe |
|---|---|---|
| [Prompt de IA](https://just-flip.app/ai-prompt.html) | Qualquer IA de chat — ChatGPT, Claude, Gemini | Um arquivo `.flashcards` só com texto |
| [Skill de IA](https://just-flip.app/ai-skill.html) | Um agente de programação que consegue ler arquivos no seu computador | Um `.flashcards.zip`, com imagens e som |

Uma IA de chat só consegue devolver texto, então a página Prompt de IA
pede um baralho só com texto. Um agente de programação consegue abrir
suas imagens e áudios locais e empacotá-los num zip, com descrições,
licenças e até oclusão de imagem.

Importe o arquivo como qualquer outro. O arquivo indica o próprio
interesse e os baralhos, então não há folha de configuração: o JustFlip!
usa um interesse com aquele nome, se você tiver um, e o cria se não
tiver. Um arquivo de baralho também pode definir o idioma de cada
baralho, para que os cartões já estejam prontos para serem lidos em voz
alta.

::: tip
#### Revise antes de aprender

Uma IA pode errar com toda a confiança. Dê uma passada num baralho novo
antes da primeira revisão e corrija ou apague o que for duvidoso. Dez
minutos de edição valem mais que semanas revisando uma resposta errada.
:::

## Colar cartões {#paste}

Às vezes os cartões já estão na sua área de transferência — a resposta
de uma IA de chat, uma coluna de planilha, uma lista no app Notas.
Escolha [Adicionar ou importar]{.ui} → [Colar cartões]{.ui}. Como explica
a nota [Como funciona]{.ui}, você copia os cartões — um por linha,
pergunta e resposta separadas por vírgula — e toca em Colar. O JustFlip!
encontra os cartões no que você copiou, inclusive dentro do bloco de
código de uma IA de chat, e ignora o texto ao redor.

Uma lista colada passa pelas mesmas folhas [Importar cartões]{.ui} e
[Importar CSV]{.ui} que um arquivo CSV, e vai para um baralho chamado
**Cartões colados**, a menos que você mude o nome. Um arquivo de baralho
colado — o JSON que uma IA escreve a partir da página Prompt de IA — é
importado como um arquivo `.flashcards`. Nada sai do seu dispositivo.

## Baralhos selecionados {#curated}

A [página Decks](https://just-flip.app/decks/) do site é uma pequena
biblioteca de baralhos prontos — idiomas, música, matemática,
programação e ciências — em todos os idiomas do app. Toque em **Baixar
deck** e abra o arquivo com o JustFlip!. São arquivos `.flashcards` e
`.flashcards.zip` comuns, então tudo o que está em
[Importar o mesmo arquivo de novo](#reimport) vale para eles também.

## Importar o mesmo arquivo de novo {#reimport}

Os arquivos de baralho — `.flashcards` e `.flashcards.zip` vindos de uma
IA, da biblioteca selecionada ou do seu próprio editor — foram feitos
para ser importados várias e várias vezes. Corrija um erro de digitação
no arquivo, acrescente dez cartões, importe: seu baralho é atualizado em
vez de duplicado.

É assim que o JustFlip! faz a correspondência:

1. **O interesse** é o que tem o nome de interesse do arquivo.
   Maiúsculas e minúsculas e espaços sobrando não importam.
2. **O baralho** é o daquele interesse com *exatamente* o nome de
   baralho do arquivo.
3. **Cada cartão** é identificado pelo **texto da pergunta**, exatamente
   como está escrito. Um cartão correspondente é atualizado no lugar — a
   resposta, as imagens e os sons são substituídos pelos do arquivo, e o
   progresso é mantido. Um cartão sem correspondência é adicionado.

Cartões que estão no seu baralho mas não no arquivo ficam como estão;
uma importação nunca apaga nada.

::: gotcha
#### Dois cartões, uma pergunta

Como os cartões são identificados pela pergunta, dois cartões do mesmo
baralho com o mesmo texto de pergunta — "Que nota é esta?", "Traduza:" —
acabam virando um só, mesmo numa importação novinha. Dê a cada cartão
sua própria pergunta, ou leve o enunciado comum para o nome do baralho.
:::

::: gotcha
#### Cartões só com imagem são adicionados toda vez

Um cartão sem nenhum texto de pergunta — só uma imagem — não tem como
ser identificado, então nunca é mesclado. Isso mantém intacto um baralho
de imagens do tipo "O que é isto?", mas também significa que importar o
arquivo de novo adiciona esses cartões uma segunda vez. Num arquivo de
baralho, omita totalmente o campo `q` nesses cartões: um `"q": ""` vazio
conta como texto de pergunta e se mescla com todos os outros vazios.
:::

::: gotcha
#### Suas edições não sobrevivem a uma reimportação

Atualizar um cartão substitui o conteúdo dele pelo do arquivo. Se você
corrigiu uma resposta no JustFlip!, faça a mesma correção no arquivo — ou
a próxima importação traz a resposta antiga de volta. E se você
renomear o baralho no JustFlip!, o arquivo não o encontra mais: a
próxima importação cria um baralho novo com o nome antigo.
:::

Os pacotes do Anki seguem uma regra própria — a escolha na
[folha de importação](#anki-report). Arquivos CSV nunca passam por
correspondência.

## Exportar e compartilhar {#export}

Para levar um interesse com você, toque e segure nele (clique com o
botão direito no Mac) e escolha [Exportar arquivo]{.ui}. No Mac,
**Arquivo › Export Interest…** (⇧⌘E) faz o mesmo com o interesse
selecionado. O JustFlip! gera um arquivo, *Nome do interesse*.flashcards.zip,
e pergunta onde salvá-lo.

O arquivo contém tudo daquele interesse: cada baralho e cartão, as
imagens e os sons e **todo o seu progresso de revisão**. Salve-o no app
Arquivos ou no iCloud Drive, envie por AirDrop ou mande como qualquer
outro arquivo.

Importar um arquivo restaura exatamente aquele interesse. O interesse,
os baralhos e os cartões são identificados pelos identificadores ocultos
que o arquivo carrega, não pelos nomes, então nada é duplicado — até
baralhos renomeados são encontrados.

::: gotcha
#### Um arquivo traz a programação junto

Importar um arquivo define a programação de cada cartão como a que foi
salva nele. Importe um arquivo antigo por cima de um interesse que você
ainda está estudando, e esses cartões voltam para onde estavam quando
você exportou. Seu histórico de revisão é mesclado, não duplicado. Os
cartões que você adicionou depois da exportação ficam — e os que você
apagou depois dela voltam.
:::

::: note
#### Compartilhar um baralho com alguém

Um arquivo exportado também contém o seu progresso, e quem o importar
recebe a sua programação para aqueles cartões. Para uma cópia limpa,
compartilhe o arquivo de baralho original — o `.flashcards` ou
`.flashcards.zip` que você importou.
:::

O mesmo menu tem [Exportar estatísticas]{.ui}, como
[Planilha (CSV)]{.ui} ou [Dados completos (JSON)]{.ui}. Esses arquivos
são para leitura e análise, não para importar de volta (Capítulo 9).
Para um backup da biblioteca inteira, veja o Capítulo 10.

## Quando uma importação surpreende {#troubleshooting .cheatsheet}

| O que você vê | Por quê, e o que fazer |
|---|---|
| Menos cartões do que linhas ou notas | Cartões com o mesmo texto de pergunta foram mesclados (arquivos de baralho), ou linhas com a pergunta vazia foram ignoradas (CSV) |
| Mais cartões do que notas do Anki | Cada número de cloze é um cartão próprio — isso é esperado |
| O baralho apareceu duas vezes | Um CSV sempre cria um baralho novo; uma importação do Anki com [Adicionar uma cópia nova]{.ui} adiciona baralhos novos |
| Cartões só com imagem duplicaram | Eles não têm como ser identificados na reimportação; apague os extras ou importe num baralho novo |
| Cartões importados ficam em silêncio | Cartões do Anki e CSV não têm idioma — defina um nos cartões (Capítulo 3) |
| O primeiro cartão é "Pergunta / Resposta" | Ative [Ignorar a primeira linha como cabeçalho]{.ui} |
| Todo o texto fica numa coluna só | Mude o [Separador]{.ui} na prévia do CSV |
| Falta uma imagem | Confira o relatório do Anki e lembre que SVG não é suportado (Capítulo 4) |
| Minha correção sumiu depois de uma importação | A versão do arquivo a substituiu — corrija o arquivo também |
| A programação de um cartão voltou atrás | Você importou um arquivo mais antigo daquele interesse |
