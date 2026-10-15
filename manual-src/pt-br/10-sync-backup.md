---
slug: sync-backup
number: 10
title: Sincronização, backups e seus dados
description: "Como o JustFlip! mantém seus cartões e seu progresso de aprendizado em segurança: sincronização com o iCloud, backups automáticos, Apagados Recentemente, restauração, exportação de arquivos e uma lista de verificação para quando a sincronização parece travada."
---

# Sincronização, backups e seus dados {#sync-backup number="10"}

::: lede
Cartões podem ser reescritos ou importados de novo. Seu progresso de
aprendizado não: cada avaliação, cada intervalo, cada dia de sequência
só existe porque você dedicou o seu tempo. Por isso o JustFlip! o
protege em três camadas separadas, cada uma cobrindo uma falha que as
outras não cobrem. Este capítulo explica o que cada camada faz, onde
encontrá-la e o que fazer quando algo parece errado.
:::

::: inthischapter
- Entenda as três camadas: sincronização com o iCloud, backups automáticos e exportação manual
- Leia o status da sincronização e a tela Sincronização do iCloud
- Encontre, restaure e entenda seus backups automáticos
- Saiba o que apagar faz, e o que fica em Apagados Recentemente
- Exporte um arquivo de um interesse, com o progresso incluído
- Siga uma lista de verificação quando a sincronização parecer travada
:::

## Três camadas de segurança {#layers}

| Camada | O que é | Do que protege você |
|---|---|---|
| **1. Sincronização com o iCloud** | Sua biblioteca, mantida igual em todos os dispositivos | Um dispositivo perdido, quebrado ou substituído |
| **2. Backups automáticos** | Retratos regulares que o JustFlip! tira por conta própria | Erros que a sincronização copiaria para todos os lados |
| **3. Exportação manual** | Arquivos que você salva onde quiser | Todo o resto, inclusive deixar o iCloud |

As três ficam em **Ajustes › Segurança dos dados**. Abra os Ajustes pelo
ícone de engrenagem no alto da lista Interesses e role até a seção
[Segurança dos dados]{.ui}.

![Ajustes › Segurança dos dados: Status da sincronização, o último backup completo e o último instantâneo de progresso, Local do backup, Apagados Recentemente e os botões Exportar backup e Restaurar backup.](images/manual/{lang}/10-data-safety.jpg){.phone}

::: gotcha
#### Sincronização não é backup

A sincronização deixa todos os dispositivos iguais. Isso inclui os seus
erros: apague um interesse no iPad e ele some do iPhone e do Mac em
minutos. A sincronização não tem um "desfazer" próprio. É exatamente por
isso que existem as camadas 2 e 3.
:::

## Sincronização com o iCloud {#icloud-sync}

A sincronização está incluída para todos, Grátis e Pro. Não há nada para
ativar dentro do JustFlip!: se o dispositivo tiver uma sessão iniciada
no iCloud, sua biblioteca sincroniza pela sua própria conta do iCloud.

### O que sincroniza

- Interesses, baralhos e cartões, incluindo imagens e sons
- Seu progresso de aprendizado: cada avaliação, intervalo, data de
  revisão e recaída
- Cartões aposentados e adiados, marcadores de cartão, prioridades e
  rastreadores de progresso
- Exclusões, incluindo o que está esperando em Apagados Recentemente

Seus **ajustes ficam em cada dispositivo**: o tema, o tamanho do texto,
as vozes, os lembretes e limites diários como
[Cartões novos por dia]{.ui}. Isso permite ter um telefone tranquilo e
um iPad agitado. O Apple Watch recebe os cartões do iPhone, e não do
iCloud (veja o Capítulo 8).

### Como ela se comporta

- **Offline primeiro.** Tudo funciona sem conexão. Suas alterações são
  salvas no dispositivo na hora e enviadas quando você volta a ficar
  online.
- **Em segundo plano.** Não há botão de sincronizar. As alterações
  viajam sozinhas, geralmente em segundos ou poucos minutos.
- **A última alteração vence.** Se você editar o mesmo cartão em dois
  dispositivos antes que eles sincronizem, a edição mais recente é a que
  fica.

::: tip
#### Um dispositivo novo, do jeito fácil

Instale o JustFlip! no dispositivo novo, inicie sessão com a mesma Conta
Apple e abra o app. Seus interesses aparecem à medida que chegam; a
lista vazia avisa enquanto espera. Uma biblioteca grande, com muitas
imagens, pode demorar um pouco na primeira sincronização, então deixe o
app aberto no Wi-Fi.
:::

## O status da sincronização {#sync-status}

A primeira linha de Segurança dos dados, [Status da sincronização]{.ui},
mostra o estado do iCloud neste dispositivo, com a hora do último envio
bem-sucedido logo abaixo.

| Status | O que significa |
|---|---|
| [Verificando…]{.ui} | O JustFlip! está perguntando ao iCloud se a sua conta está disponível |
| [Disponível]{.ui} | Sua conta do iCloud está pronta e a sincronização pode rodar |
| [Sincronizando…]{.ui} | Alterações estão sendo enviadas ou recebidas neste momento |
| [Indisponível]{.ui} | Não há conta do iCloud disponível neste dispositivo, então nada sincroniza |
| [Falha na sincronização]{.ui} | O iCloud informou um erro na última tentativa |

[Indisponível]{.ui} e [Falha na sincronização]{.ui} aparecem em
vermelho.

::: note
#### "Disponível" não quer dizer "tudo enviado"

[Disponível]{.ui} só diz que a sua conta está pronta. Não garante que
todas as alterações já chegaram ao iCloud. Para isso, olhe as horas de
envio e de recebimento na tela Sincronização do iCloud.
:::

### A tela Sincronização do iCloud

Toque em [Status da sincronização]{.ui} para ver os detalhes:

- [Status atual]{.ui}: o estado da tabela acima.
- **Último envio bem-sucedido** e **Último recebimento bem-sucedido**:
  quando o iCloud *confirmou* pela última vez que alterações foram
  enviadas deste dispositivo ou recebidas nele. Um salvamento local não
  conta; só uma transferência confirmada.
- **Envio em andamento**, enquanto houver um.
- [Verificar novamente]{.ui}: pergunta de novo ao iCloud se a sua conta
  está disponível.
- [Solução de problemas]{.ui}: o último erro informado pelo iCloud, ou
  [Nenhum erro de sincronização]{.ui}.
- [Atividade de sincronização recente]{.ui}: um registro dos eventos de
  sincronização recentes neste dispositivo, útil quando você fala com o
  suporte.

![A tela Sincronização do iCloud com as horas de envio e recebimento, Verificar novamente e o registro de atividade recente.](images/manual/{lang}/10-icloud-sync.jpg){.phone}

::: tip
#### Compare dois dispositivos lado a lado

Quando uma alteração feita num dispositivo nunca aparece no outro, abra
esta tela nos dois. Se o **Último envio bem-sucedido** de um dispositivo
for anterior à alteração, o problema está nele: ainda não a enviou. Se o
envio for recente, mas o **Último recebimento bem-sucedido** do outro
dispositivo for antigo, o dispositivo que recebe ainda não a buscou.
:::

## Backups automáticos {#automatic-backups}

O JustFlip! faz backup da sua biblioteca por conta própria. Você vai
encontrar dois tipos em Segurança dos dados:

| Backup | Linha em Segurança dos dados | Conteúdo | Frequência aproximada | Mantidos |
|---|---|---|---|---|
| **Backup completo** | [Último backup completo]{.ui} | Um arquivo com todos os interesses: cartões, imagens, sons e todo o progresso | Semanal | Os 10 mais recentes |
| **Instantâneo de progresso** | [Último instantâneo de progresso]{.ui} | Todos os interesses com o progresso, sem imagens e sons | Diário | Os 30 mais recentes |

No iPhone e no iPad, o sistema roda os backups em segundo plano, quando
decide que é o momento certo. No Mac, o JustFlip! verifica toda vez que
você traz o app para a frente e põe em dia o que estiver atrasado. Um
backup é pulado quando nada mudou desde o anterior.
<!-- VERIFY: the skip check compares interests' modifiedAt with the last backup date; confirm that reviewing cards (not only editing) counts as a change. -->
Quando o backup mais antigo sai da contagem de "mantidos", ele é apagado
automaticamente.

As datas ficam vermelhas quando um backup está atrasado: um backup
completo com mais de quatro semanas ou um instantâneo de progresso com
mais de quatro dias.

### Exportar backup: um backup completo agora

[Exportar backup]{.ui} cria um backup completo na hora e o acrescenta à
lista, por exemplo antes de você tentar algo arriscado. Ele gera um
arquivo com um nome como `JustFlip-2026-09-30_14-05-12.justflip`.

### Onde os backups ficam

A linha [Local do backup]{.ui} mostra onde seus backups estão
guardados:

- [iCloud Drive]{.ui}: os backups ficam no armazenamento do JustFlip! no
  iCloud Drive, separados da sincronização. Um problema de sincronização
  ou uma exclusão sincronizada não os afeta.
- [Apenas local]{.ui}: o iCloud Drive não está disponível, então os
  backups ficam neste dispositivo. Toque na linha para ver o motivo:
  [Não conectado ao iCloud]{.ui}, [O iCloud Drive está desativado]{.ui}
  ou [Sua cota de armazenamento do iCloud está cheia]{.ui}.
<!-- VERIFY: the app's entitlements list only the CloudKit iCloud service (no CloudDocuments / ubiquity container). If so, url(forUbiquityContainerIdentifier:) returns nil and Backup Location is always "Local only" in shipping builds. Also verify whether the backup folder is visible in the Files app. -->

::: gotcha
#### Backups locais vão embora com o app

"O armazenamento local funciona, mas não acompanha você entre
dispositivos nem sobrevive à remoção do app", como o próprio app avisa.
Se Local do backup disser [Apenas local]{.ui}, apagar o JustFlip! apaga
os backups também. Guarde também um [arquivo exportado](#export) em
algum lugar seguro.
:::

## Restaurar um backup {#restore}

Toque em [Restaurar backup]{.ui} em Segurança dos dados para ver
[Arquivos disponíveis]{.ui}, do mais recente para o mais antigo, cada um
com o nome do arquivo e a data. Toque em um para restaurá-lo. Uma
mensagem confirma quando termina: "Restauração concluída. Os interesses
foram mesclados."

![Restaurar backup: a lista de arquivos disponíveis, do mais recente para o mais antigo.](images/manual/{lang}/10-restore-backup.jpg){.phone}

Uma restauração **mescla**; ela nunca apaga a sua biblioteca antes:

- Interesses, baralhos e cartões do backup são trazidos de volta. O que
  foi criado depois do backup fica como está.
- Para cada cartão do backup, a **programação volta** ao que era quando
  o backup foi feito: estágio de aprendizado, intervalo, data de
  revisão, facilidade e recaídas.
- O **histórico de revisão é combinado**. As revisões que você fez
  depois do backup são mantidas, e restaurar o mesmo backup duas vezes
  não duplica nada.

::: gotcha
#### A restauração começa no momento do toque

Não há etapa de confirmação: tocar num backup o restaura. Escolha a data
certa antes de tocar na lista. E lembre que os cartões dele voltam à
programação *daquela época*, então restaurar um backup antigo para
consertar um baralho também volta o relógio de todos os outros cartões
que ele contém.
:::

::: gotcha
#### Depois de restaurar, dê tempo aos dispositivos

Uma restauração grava muitas alterações de uma vez, e todos os outros
dispositivos precisam recebê-las. Mantenha o JustFlip! aberto no
dispositivo restaurado, no Wi-Fi, até que o **Último envio
bem-sucedido** dele seja recente. Depois abra o JustFlip! nos outros
dispositivos e dê alguns minutos antes de começar a revisar neles.
:::

## Apagar, e Apagados Recentemente {#recently-deleted}

::: gotcha
#### Apagar é definitivo

Quando você apaga um interesse, um baralho ou um cartão, ele some na
hora, em todos os dispositivos. Antes de apagar algo que talvez queira
de volta, escolha [Exportar arquivo]{.ui} no menu de contexto do
interesse. O arquivo guarda os baralhos, cartões e progresso, e você
pode importá-lo de novo mais tarde. Um cartão que você só quer tirar das
revisões fica melhor aposentado do que apagado (Capítulo 2).
:::

**Ajustes › Segurança dos dados › Apagados Recentemente** guarda
interesses e baralhos que o JustFlip! separou para você, como a cópia
vazia que sobra depois que dois interesses ou baralhos são mesclados. A
linha mostra quantos itens estão esperando, ou [Vazio]{.ui}.

![Apagados Recentemente, com um item e seus botões Restaurar e Apagar.](images/manual/{lang}/10-recently-deleted.jpg){.phone}

Cada item mostra o nome, o interesse a que pertencia e quando foi
separado. Dois botões:

- [Restaurar]{.ui} o traz de volta com todos os cartões e o progresso.
- [Apagar]{.ui} o remove para sempre, na hora. Isso não pode ser
  desfeito.

Depois de **30 dias**, o JustFlip! apaga definitivamente o que sobrar.

## Exportar um arquivo {#export}

A terceira camada fica sob o seu controle: um arquivo que você pode
guardar no app Arquivos, num disco ou em qualquer serviço de nuvem.

| Você quer… | Faça isto | Você obtém |
|---|---|---|
| Guardar ou mover um interesse, com o progresso | Toque e segure o interesse › [Exportar arquivo]{.ui} | `Nome.flashcards.zip` |
| Fazer o mesmo num Mac | Selecione o interesse › **Arquivo › Export Interest…** (⇧⌘E) | `Nome.flashcards.zip` |
| Fazer backup da biblioteca inteira agora | **Ajustes › Segurança dos dados › Exportar backup** | um arquivo `.justflip` entre os seus backups |
| Analisar seus números | Toque e segure › [Exportar estatísticas]{.ui} | CSV ou JSON (Capítulo 9) |

Um arquivo de interesse contém cada baralho e cartão do interesse, as
imagens e os sons **e o seu progresso de aprendizado**. Para trazê-lo de
volta, abra o arquivo com o JustFlip! pelo app Arquivos, pela folha de
compartilhamento ou pelo AirDrop, ou, no Mac, solte-o na janela ou use
**Arquivo › Import Interest Archive…**. Importar funciona como uma
restauração: mescla, então o mesmo arquivo pode ser aberto duas vezes
sem criar duplicatas. O Capítulo 5 trata da importação em detalhes.

::: gotcha
#### Um arquivo leva o seu progresso

[Exportar arquivo]{.ui} sempre inclui o seu progresso de aprendizado. É
o que você quer num backup. Mas, quando você manda o arquivo para um
amigo, suas datas de revisão e seu histórico vão junto.
<!-- VERIFY: whether importing someone else's archive applies the sender's progress to the recipient's copy (importProgress writes schedule fields unconditionally when the card ids match). -->
:::

## Interesses duplicados vindos de dois dispositivos {#duplicates}

Os nomes de interesse são únicos na sua biblioteca, sem diferenciar
maiúsculas e minúsculas. Mas, se dois dispositivos estiverem offline e
você criar um interesse com o mesmo nome em cada um, por exemplo
"Espanhol" no iPhone durante um voo e "espanhol" no iPad em casa, as
duas cópias passam a existir quando os dispositivos sincronizam de novo.

O JustFlip! percebe isso e **as mescla automaticamente**: os baralhos das
duas cópias são reunidos num só interesse, e você vê uma mensagem curta
como "Cópias duplicadas de 'Espanhol' criadas em outro dispositivo foram
mescladas". Os nomes são comparados sem levar em conta maiúsculas e
minúsculas, acentos e espaços extras. Todos os dispositivos escolhem a
mesma cópia sobrevivente, então todos terminam com o mesmo interesse
único, e um baralho que chegue depois para a cópia mesclada ainda
encontra o caminho para o lugar certo.

## Solução de problemas de sincronização {#troubleshooting}

Quando uma alteração não aparece em outro dispositivo, siga esta lista
em ordem. A maioria dos problemas se resolve no passo 3 ou 4.

1. **Espere alguns minutos.** A sincronização não é instantânea.
   Mantenha o JustFlip! aberto nos dois dispositivos por um ou dois
   minutos.
2. **Confira o status.** Abra **Ajustes › Segurança dos dados › Status
   da sincronização** nos dois dispositivos. [Indisponível]{.ui} quer
   dizer que não há conta do iCloud disponível; [Falha na
   sincronização]{.ui} mostra o erro em [Solução de problemas]{.ui}.
   Toque em [Verificar novamente]{.ui} depois de corrigir algo.
3. **A mesma Conta Apple.** Os dois dispositivos precisam ter sessão
   iniciada com a **mesma** Conta Apple. Nos Ajustes do sistema, toque
   no seu nome, no alto, para conferir.
4. **iCloud ativado para o JustFlip!** Nos Ajustes do sistema, vá ao seu
   nome › **iCloud** e verifique se o iCloud Drive está ativado e se o
   JustFlip! tem permissão para usar o iCloud.
5. **Espaço suficiente no iCloud.** Uma conta do iCloud cheia interrompe
   a sincronização. Confira em seu nome › **iCloud** › **Gerenciar
   Armazenamento** e libere espaço se precisar.
6. **Uma conexão que funcione.** Verifique se o dispositivo está online.
7. **Compare as horas de envio e de recebimento** na tela Sincronização
   do iCloud, como descrito em [O status da
   sincronização](#sync-status), para descobrir qual dispositivo está
   atrasado.
8. **Reinicie e atualize.** Feche e reabra o JustFlip!, reinicie o
   dispositivo e instale qualquer atualização do JustFlip!. Como último
   passo, encerre a sessão do iCloud e inicie de novo.
9. **Ainda travado?** Use [Enviar feedback]{.ui} nos Ajustes e conte o
   que o registro [Atividade de sincronização recente]{.ui} mostra.

::: tip
#### Antes de tentar algo drástico

Antes de apagar e reinstalar o app, ou de encerrar a sessão do iCloud,
toque em [Exportar backup]{.ui} e exporte um arquivo dos seus interesses
mais importantes. Assim, aconteça o que acontecer, seu progresso está
seguro.
:::
