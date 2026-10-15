---
slug: reference
number: 12
title: Referência
description: "A referência do JustFlip!: uma tabela de solução de problemas para cada capítulo, um glossário dos termos que o app usa, o que as versões Grátis e Pro incluem, os formatos de arquivo e os atalhos de teclado."
---

# Referência {#reference number="12"}

::: lede
Tudo o que você pode querer consultar com pressa: o que fazer quando
algo parece errado, o que uma palavra significa, o que o Pro acrescenta
e qual arquivo faz o quê. Cada item aponta de volta para o capítulo que
o explica por completo.
:::

::: inthischapter
- Resolva as surpresas mais comuns com a tabela de solução de problemas
- Consulte qualquer termo no glossário
- Veja num relance o que é grátis e o que o Pro acrescenta
- Distinga os formatos de arquivo
- Encontre os atalhos de teclado e o guia rápido de marcação
:::

## Solução de problemas {#troubleshooting}

### Cartões e revisões

| O que você vê | O que fazer | Capítulo |
|---|---|---|
| Um cartão nunca é lido em voz alta | Defina o [Idioma]{.ui} do lado; um lado definido como Nenhum nunca é falado | 3, 7 |
| Há um idioma definido, mas nenhum botão Reproduzir | Baixe uma voz em **Ajustes › Acessibilidade › Leitura e Fala › Vozes** do iOS | 7 |
| O cartão mostra chaves `{…}` | Uma dica falada só funciona depois de colchetes, matemática ou uma imagem; envolva o texto em `[…]` | 3 |
| Bom e Fácil somem depois de virar | **Ajustes › Comportamento › Avaliação mais rigorosa** está ativada; desative-a, ou avalie antes de virar | 2 |
| [Cartões pendentes]{.ui} de um baralho novo não encontra nada | Cartões nunca estudados ainda não estão pendentes; use Hoje, [Cartões novos]{.ui} ou [Todos os cartões]{.ui} | 2 |
| Um cartão avaliado com De novo não voltou na mesma sessão | É de propósito: ele fica pendente em 5 minutos e aparece na próxima sessão | 6 |
| Mexer num controle de prioridade não mudou as contagens de pendentes | É de propósito: a prioridade só muda a ordem de uma sessão limitada | 6 |
| Um baralho adiado continua sumido | Tela Baralhos › [Opções do baralho]{.ui} › [Prioridade de revisão]{.ui} › Retomar | 6 |
| Um único cartão adiado não pode ser retomado | A espera acaba na data marcada; ou adie-o de novo para Amanhã a partir de [Todos os cartões]{.ui} | 6 |
| As teclas 1–4 ou Espaço não fazem nada | Você está digitando uma resposta, a Avaliação mais rigorosa está ativada, ou uma resposta de oclusão ainda não foi revelada | 8 |
| Cartões longos sempre abrem numa folha | Em tamanhos de texto maiores, os cartões não encolhem para caber; divida-os ou diminua o tamanho de texto do JustFlip! | 11 |
| Nenhum lembrete chega | Ative **Ajustes › Lembretes › Lembrete diário de revisão** e permita as notificações nos Ajustes do iOS | 2 |
| Os guias não aparecem mais | **Ajustes › Ajuda › Guias** os mostra de novo | 1 |

### Imagens, som e edição

| O que você vê | O que fazer | Capítulo |
|---|---|---|
| Uma imagem some no modo escuro | Dê a ela um fundo sólido branco ou claro | 4 |
| Falta uma imagem depois da importação | Confira o relatório de importação do Anki; SVG não é suportado | 4, 5 |
| O texto de um lado sumiu depois de trocar a imagem ou o som | Ele foi salvo na aba Imagem ou Áudio; volte para Texto antes de salvar | 4 |
| Ler cartões pula um cartão | Os dois lados precisam de texto e de um idioma com voz instalada | 7 |
| A escuta parou sozinha | Uma ligação ou outro app assumiu o áudio; recomece com [Ler a partir daqui]{.ui} | 7 |

### Importação

| O que você vê | O que fazer | Capítulo |
|---|---|---|
| Menos cartões do que linhas ou notas | Cartões com a mesma pergunta foram mesclados (arquivos de baralho), ou linhas sem pergunta foram ignoradas (CSV) | 5 |
| Mais cartões do que notas do Anki | Cada número de cloze é um cartão próprio; isso é esperado | 5 |
| Um baralho apareceu duas vezes | Um CSV sempre cria um baralho novo, assim como uma importação do Anki com [Adicionar uma cópia nova]{.ui} | 5 |
| Cartões só com imagem duplicaram depois de uma reimportação | Eles não têm pergunta para fazer a correspondência; apague os extras | 5 |
| O primeiro cartão diz "Pergunta / Resposta" | Ative [Ignorar a primeira linha como cabeçalho]{.ui} | 5 |
| Todo o texto fica numa coluna só | Mude o [Separador]{.ui} na prévia do CSV | 5 |
| Uma edição sumiu depois de importar | A versão do arquivo a substituiu; faça a mesma correção no arquivo | 5 |
| A programação voltou atrás, ou cartões apagados voltaram | Um arquivo de interesse mais antigo foi importado | 5, 10 |
| Os cartões importados foram para o baralho errado | Dois baralhos têm o mesmo nome; renomeie um deles | 1 |
| Um interesse novo não apareceu | Já existia um com o mesmo nome, e ele foi usado no lugar | 1 |

### Sincronização, dispositivos e dados

| O que você vê | O que fazer | Capítulo |
|---|---|---|
| O status da sincronização diz [Indisponível]{.ui} | Inicie sessão no iCloud e permita que o JustFlip! o use | 10 |
| Uma alteração não chega ao outro dispositivo | Compare as horas de envio e de recebimento nas telas Sincronização do iCloud dos dois dispositivos | 10 |
| Local do backup diz [Apenas local]{.ui} | Guarde também um arquivo exportado em algum lugar seguro | 10 |
| Apareceram dois interesses com o mesmo nome | O JustFlip! os mescla automaticamente depois da próxima sincronização | 10 |
| O widget mostra contagens antigas | Abra o JustFlip! naquele dispositivo; o widget sabe o que o app salvou ali por último | 8 |
| O relógio diz [Abra o JustFlip no seu iPhone para sincronizar seus cartões.]{.ui} | Abra o app do iPhone uma vez | 8 |
| O relógio mostra "N sincronizando com o iPhone" | Aproxime o iPhone; as avaliações são entregues e aplicadas uma única vez | 8 |
| Um cartão não aparece no Spotlight | Confira [Incluir na busca do dispositivo]{.ui} no interesse *e* no baralho dele; busque pelo começo de uma palavra | 8 |
| O JustFlip! ignora o modo escuro | O tema está fixo em claro ou escuro; escolha [Sistema]{.ui} | 11 |
| A folha Novidades está vazia | Você está offline; use [Tentar novamente]{.ui} ou [Abrir no navegador]{.ui} | 8 |
| O item de menu Estatísticas mostra um cadeado | As Estatísticas fazem parte do Pro, teste grátis incluído | 9 |
| Restaurar não encontra nenhuma compra | Use a Conta Apple com que você comprou o Pro | 1 |

## Glossário {#glossary}

| Termo | Significado |
|---|---|
| **Interesse** | O nível mais alto da sua biblioteca: um assunto que contém baralhos |
| **Baralho** | Um grupo focado de cartões dentro de um interesse |
| **Cartão** | Uma pergunta e uma resposta, cada lado com seu próprio texto, imagem, som e idioma |
| **Hoje** | O painel da tela Interesses que reúne os cartões pendentes de todos os interesses, mais cartões novos até a sua cota diária |
| **Pendente** | Um cartão cuja hora de revisão chegou e que não está aposentado nem adiado |
| **Cartão novo** | Um cartão que você nunca estudou |
| **Difícil (cartão)** | Um cartão cuja última avaliação foi De novo ou Difícil, seja qual for a data de revisão |
| **Visto** | A anotação que o JustFlip! faz na primeira vez que você vira um cartão enquanto navega; não é uma avaliação |
| **Intervalo** | Quanto falta para um cartão voltar, de minutos a meses |
| **Facilidade** | O ritmo de crescimento do intervalo de cada cartão; começa em 2,5 e fica entre 1,3 e 3,5 |
| **Estágio** | Não visto, Aprendendo, Revisando (intervalo de 7 dias ou mais), Graduado (30 dias ou mais) ou Reaprendendo |
| **Domínio** | A proporção de cartões de um baralho cuja última avaliação foi Bom ou Fácil; os rastreadores de progresso somam o próprio progresso |
| **Retenção** | A proporção de revisões avaliadas com Bom ou Fácil |
| **Revisão madura** | A revisão de um cartão cujo intervalo já tinha chegado a 30 dias |
| **Recaída** | Um cartão que você tinha aprendido e depois esqueceu |
| **Sanguessuga** | Um cartão esquecido oito vezes ou mais; listado em [Estas continuam escapando]{.ui} |
| **Sequência** | Dias seguidos com pelo menos uma revisão; até dois dias perdidos são cobertos |
| **Previsão** | Quantos cartões ficam pendentes em cada um dos próximos dias; os atrasados entram no dia de hoje |
| **Urgência** | Uma pontuação que combina cartões pendentes, o atraso deles, o tempo desde o último estudo e o domínio |
| **Aposentar** | Tirar um cartão das revisões mantendo o histórico; desfaça com Reativar |
| **Adiar** | Deixar um cartão, baralho ou interesse de lado até um dia escolhido, sem avaliá-lo |
| **Prioridade de revisão** | Um peso de 0 a 100 % (75 % por padrão) que decide de quem são os cartões que vêm primeiro numa sessão limitada |
| **Avaliação mais rigorosa** | Um ajuste que deixa só De novo e Difícil depois que você vira um cartão |
| **Programação inteligente** | O agendador FSRS-5 (Pro, beta), que mira em cerca de 90 % de lembrança |
| **Rastreador de progresso** | Um cartão que você mesmo avalia de 0 a 100, para habilidades que um flashcard não consegue testar (Pro) |
| **Cloze** | Um cartão de preencher lacunas escrito com `{{c1::…}}` |
| **Dica falada** | `{…}` depois de um trecho do cartão, dizendo à voz o que falar no lugar |
| **Marcador de anexo** | `![attachment:0]`, que posiciona uma imagem dentro do texto |
| **Descrição da imagem** | O texto que o VoiceOver lê no lugar de uma imagem |
| **Oclusão de imagem** | Uma imagem com áreas cobertas, cada uma das quais vira um cartão próprio |
| **Ler cartões** | Ouvir um baralho inteiro sem usar as mãos: pergunta, uma pausa de quatro segundos, resposta, sinal (Pro) |
| **Voz automática** | A melhor voz instalada para um idioma: Premium, depois Aprimorada, depois Padrão |
| **Perguntar à IA** | Uma solicitação com relatório de estudo que o JustFlip! monta para você colar na sua própria IA de chat |
| **Guia** | Uma dica exibida uma única vez que explica um controle; reveja-as em **Ajustes › Ajuda › Guias** |
| **Biblioteca inicial** | Os baralhos prontos oferecidos na primeira abertura, e em **Ajustes › Ajuda › Biblioteca** |
| **Arquivo de interesse** | Uma exportação `.flashcards.zip` de um interesse, com o progresso incluído |
| **Backup completo** | Um arquivo `.justflip` semanal da biblioteca inteira; os 10 mais recentes são mantidos |
| **Instantâneo de progresso** | Um backup diário do progresso, sem mídia; os 30 mais recentes são mantidos |
| **Incluir na busca do dispositivo** | A chave do interesse e do baralho que decide se os cartões aparecem no Spotlight |

## Grátis e Pro {#free-pro}

O JustFlip! é grátis, sem limite de cartões. O Pro remove os dois limites
da biblioteca e acrescenta alguns recursos avançados. Um teste grátis,
quando oferecido, desbloqueia os recursos Pro enquanto durar.

| Recurso | Grátis | Pro | Capítulo |
|---|---|---|---|
| Interesses | 3 | Ilimitado | 1 |
| Baralhos por interesse | 5 | Ilimitado | 1 |
| Cartões, formatação, imagens, som, oclusão de imagem | ✓ | ✓ | 3, 4 |
| Importação e exportação (Anki, CSV, arquivos de baralho, arquivos de interesse) | ✓ | ✓ | 5 |
| Revisões, prioridades, adiamentos, aposentadoria de cartões | ✓ | ✓ | 2, 6 |
| O botão Reproduzir e a escolha de vozes | ✓ | ✓ | 7 |
| Apple Watch, widget, Siri, Spotlight | ✓ | ✓ | 8 |
| Sincronização com o iCloud, backups, restauração | ✓ | ✓ | 10 |
| Temas e tamanho do texto | ✓ | ✓ | 11 |
| Perguntar à IA sobre um cartão ou uma sessão | ✓ | ✓ | 9 |
| Perguntar à IA sobre um baralho inteiro | — | ✓ | 9 |
| Ler cartões e escuta em segundo plano | — | ✓ | 7 |
| Estatísticas | — | ✓ | 9 |
| Rastreadores de progresso | — | ✓ | 6 |
| Programação inteligente (beta) | — | ✓ | 6 |

Planos, compras e restauração estão no Capítulo 1.

## Formatos de arquivo {#formats}

| Arquivo | O que contém | Criado por | Ao importar |
|---|---|---|---|
| `.flashcards` | Um baralho, só texto | Uma IA, a página Decks, você | Atualiza o baralho correspondente (pelo texto da pergunta) |
| `.flashcards.zip` | Um baralho com imagens e som — ou um arquivo de interesse | A skill para agentes de programação, a página Decks, [Exportar arquivo]{.ui} | Um arquivo de baralho atualiza pela pergunta; um arquivo de interesse restaura o interesse, com o progresso incluído |
| `.apkg`, `.colpkg` | Um baralho ou coleção do Anki | Anki | Baralhos novos, ou pula / atualiza o que você já tem |
| `.csv` | Um cartão por linha | Qualquer planilha | Sempre um baralho novo |
| `.flashcards-stats.csv` / `.json` | Estatísticas, para leitura | [Exportar estatísticas]{.ui} | Não pode ser importado |
| `.justflip` | Um backup completo da biblioteca | Backups automáticos, [Exportar backup]{.ui} | **Ajustes › Segurança dos dados › Restaurar backup** |

O formato de conteúdo dos arquivos de baralho, escrito para ferramentas
de IA e autores de baralhos, é publicado junto com o
[prompt de IA](https://just-flip.app/ai-prompt.html).

## Atalhos de teclado {#shortcuts}

No Mac, e num iPad com teclado físico:

| Tecla | Ação |
|---|---|
| Espaço | Virar o cartão, ou revelar uma área de oclusão |
| 1 · 2 · 3 · 4 | De novo · Difícil · Bom · Fácil |
| Return | Conferir uma resposta digitada |
| ⇧⌘I | Import Cards… (Mac) |
| ⇧⌘E | Export Interest… (Mac) |

Os detalhes, incluindo por que uma tecla às vezes não faz nada, estão no
Capítulo 8.

## Marcação num relance {#markup}

| Você escreve | Você obtém |
|---|---|
| `**negrito**` · `*itálico*` · `` `código` `` | **negrito** · *itálico* · `código` |
| `{{c1::resposta::dica}}` | Uma lacuna com dica opcional |
| `::: hero` … `:::` | Conteúdo bem grande, centralizado |
| `$x^2$` · `$$` … `$$` | Matemática inline · um bloco de matemática |
| ```` ```swift ```` · ```` ```mermaid ```` | Código com destaque de sintaxe · um diagrama |
| `| A | B |` + `|---|---|` | Uma tabela, no máximo 2 × 5 |
| `![attachment:0]` | A imagem do lado, aqui |
| `[exibido]{falado}` | Dizer outra coisa em voz alta |

O guia rápido completo, com todas as regras, fecha o Capítulo 3.
