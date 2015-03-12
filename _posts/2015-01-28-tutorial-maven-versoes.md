---
layout: post
title:  "Tutorial Maven - Entendendo versões"
date:   2015-01-28 14:46:42
comments: true
tags: development configuration-management tutorials java maven pt-br
---
Olá amigos, tudo bem?

Depois de muito tempo sem escrever nenhum artigo técnico e falhando em continuar essa série de artigos sobre o Maven, estou de volta quase 1 ano depois! Pra quem não leu o primeiro post, recomendo que o leia.


- [Introdução](http://diogodmoreira.com/2014/02/04/tutorial-maven-intro.html)

Depois de conseguir construir o nosso primeiro projeto com o Maven, vamos agora entender algumas coisas sobre ele. Abra o arquivo *pom.xml* que foi criado no projeto.

Observe o seguinte trecho:

      <groupId>com.diogodmoreira</groupId>
      <artifactId>tutorial-maven</artifactId>
      <packaging>jar</packaging>
      <version>1.0-SNAPSHOT</version>

A versão foi criada automaticamente como `1.0-SNAPSHOT`. Mas por que?

Por hora, vamos mudá-la para `1.0.0`, a medida que os conceitos forem sendo explicados iremos incrementar esta versão.

Em um ambiente Maven, é muito importante entender o uso dos números de versão. No Maven, o esquema de versionamento segue os seguintes padrões:

- MAJOR Version
- MINOR Version
- PATCH Version
- QUALIFIER
- BUILDER Number

Vamos tomar como exemplo uma versão "4.1.4-RELEASE-212". Parece um pouco complicado para quem não está acostumado a lidar com versões, mas é bastante simples. Abaixo, uma ligação de cada parte desse número e o que ele representa:

- **4** -> MAJOR VERSION
- **1** -> MINOR VERSION
- **4** -> PATCH VERSION
- **RELEASE** -> QUALIFIER
- **212** -> BUILDER NUMBER

Vamos entender o que cada um representa e quando devem ser alterados.

## MAJOR VERSION ##

É alterado quando existem quebras de compatibilidade com as versões antigas. O time de desenvolvimento deve perceber quando as mudanças são drásticas o suficiente e, principalmente, não oferecem compatibilidade com as anteriores para incrementar este número.

No início do desenvolvimento do projeto, deve-se usar versões com 0 (`0.y.z`, por exemplo) e esta API é considerada instável, pois sua estrutura pode mudar a qualquer momento.

A versão `1.0.0` define como é o formato da sua API, é a primeira versão estável (teoricamente), e a partir dela a numeração vai mudar de acordo com as mudanças que forem feitas nesta API.

Alterações no MAJOR automaticamente devem zerar os números de **MINOR**, **PATCH** e **BUILD**

## MINOR VERSION ##

É incrementado quando novas funcionalidades com  são introduzidas na API.

Vamos supor que uma nova funcionalidade de cadastros foi incluída na nossa aplicação, ela segue todas as padronizações utilizadas na última versão lançada (`1.0.0`), então visualizamos que ela tem retrocompatibilidade, logo iremos incrementar a versão da nossa aplicação para `1.1.0`.

Outras situações onde o número **MINOR** deve/pode ser incrementado:

- DEVE ser incrementado quando existe uma depreciação de algum método na API pública.
- PODE ser incrementada quando houverem melhorias privadas no código (não visíveis para os usuários de sua API)

Além disso, alterar o número de **MINOR** deve zerar os números de **PATCH** e **BUILD**

## PATCH VERSION ##

O Patch Version (em alguns locais, é tratado como INCREMENTAL) deve ser incrementado quando houverem correções de bugs, e desde que esses mantenham compatibilidade com a aplicação. Uma correção de bug pode ser definido como uma mudança interna que corrige um comportamento ou aspecto errado ou diferente do correto.

Vamos corrigir um bug na nossa aplicação e lançar uma nova versão para o cliente com a versão `1.1.1`. Caso essa versão também contenha erros, iremos novamente corrigir o bug e lançar uma versão `1.1.2`

Ao incrementar o número do **PATCH**, também deve zerar o número do **BUILD**

## BUILD NUMBER ##

Como devem ter percebido até aqui, quanto mais a direita o número, maior as chances dele mudar! Pela lógica, o Build Number é o que mais vai mudar, mas ele não necessariamente precisa ser uma sequência de números.

O Build Number geralmente é incrementado quando há um novo build do sistema, mas o que isso significa?

Digamos que a nossa equipe de desenvolvimento lançou a segunda correção da nossa API, com o número `1.1.2`. Essa versão foi para o ambiente de QA (Quality Assurance), passou pelos testes planejados e falhou. Desse modo, temos uma versão com bugs mas que ainda não foi lançada para o cliente (que está com a versão `1.1.1` em seu ambiente), demandando que a equipe corrija os problemas e lance um novo *build* para a equipe de testes.

Esse build vai ser lançado com a versão `1.1.2.1`, e o último número (build number) vai ser incrementado todas as vezes que forem necessários lançar uma nova versão para a equipe de qualidade/testes.

## QUALIFIER ##

O Qualifier existe para marcar builds de release: alpha, beta, etc. O Qualifier é separado de **MAJOR**, **MINOR** e **PATCH** por um hífen. Por exemplo, a versão `1.3-beta-01` tem um qualifier **BETA-01**, é usado apenas para marcar versões.

Voltando a nossa primeira versão (`1.0-SNAPSHOT`), temos um qualifier chamado SNAPSHOT. Esse é um qualifier tratado de uma maneira diferente pelo Maven. Isso notifica o **Maven** de que esse artefato está em desenvolvimento, e que não está estável. Para o caso de usar uma dependência **SNAPSHOT** significa que o Maven tentará que buscar uma nova versão desse artefato toda vez que houver um *build*.

Um artefato que contenha uma versão COM Qualifier são reconhecidos como mais antigos do que artefatos SEM Qualifier. **Exemplo**: Vamos adicionar novamente o qualifier **SNAPSHOT** no nosso artefato. Nossa versão agora fica `1.2.2-SNAPSHOT`, que será considerada mais antiga do que a versão "estável" `1.2.2`.

## Considerações finais ##

É importante ficar atento quais números devem ser incrementados a cada release de seus artefatos pois isso demonstra de uma forma geral o que mudou na sua aplicação. Além disso, é importante para rastrear bugs e gerenciar as versões que devem ser distribuídas para seus clientes/usuários.

Espero que tenham gostado do post e até os próximos artigos!
