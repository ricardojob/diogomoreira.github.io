---
layout: post
title:  "Dicas de produtividade com Eclipse"
date:   2013-03-16 01:46:42
comments: false
tags: off-topic thoughts pt-br
---
Como um dos primeiros posts aqui no blog, eu gostaria de apresentar algumas dicas para aumentar sua produtividade utilizando a IDE Eclipse, a mais utilizada por quem trabalha com Java, e utilizada também em outras linguagens como HTML, CSS, Python, etc. O Eclipse vem com muitas funções ativadas por padrão que nem sempre são necessárias para o nosso ambiente e outras que seriam interessantes e não são habilitadas por padrão. Aqui vão algumas dicas que podem ser úteis.

###Desabilitando o limite do console###
Acesse o menu *Window* > *Preferences*, na árvore de oções escolha *Run/Debug* > **Console**, desabilite a opção ***Limit console output***.


###Auto-importação de pacotes/classes###
Você pode habilitar o Eclipse para gerenciar a importação dos pacotes necessários a medida que você salva o seu projeto. Acesse o menu *Window* &gt; *Preferences*, em seguida *Java* &gt; *Editor* &gt; *Save Action*. Habilite a opção "*Perform the selected actions on save*". Em seguida, habilite a opção "*Organize imports*". Lembrando que no caso de houver conflito (duas classes com mesmo nome), o Eclipse irá lhe questionar sobre qual o import correto a ser feito.


###Auto-identação de código###
Na mesma tela da dica anterior, habilite a opção "*Format source code"*. É importante verificar se a auto-identação de código vai de acordo com o padrão de código do projeto em que você está trabalhando, assim você evita que a maioria de suas linhas em um *commit* sejam espaços em branco gerados por esta opção.


###Problemas###
Habilite a visão "*Problems*" no Eclipse para que você possa visualizar facilmente os problemas do seu projeto. Uma boa dica nessa visão é filtrar para que o Eclipse mostre nessa tela apenas os problemas do projeto selecionado. Para isso, na visão *Problems*, clique em *View Menu* (um botão com a seta para baixo),  em seguida *Configure Contents*. Na seção *Scope*, selecione "On Selected element only". Desse modo fica mais fácil achar os erros dentro de seus projetos no workspace.

###Lista de tarefas###
Já passou pela situação de estar no meio da construção de um método e ter que parar por qualquer motivo e se ausentar do computador? O Eclipse tem um recurso que pode lhe ajudar a lembrar das tarefas que estão pendentes. Basta acrescentar um comentário comum com um TODO no texto.

{% highlight java %}
// TODO Implementar metodo()
{% endhighlight %}


Simples, não? Para ver a sua lista de tarefas basta habilitar a visão "Tasks" do Eclipse. Clique em *Window* &gt; *Show View* &gt; *Other* &gt; *General* &gt; *Tasks.*


###Teclas de atalho###
**CTRL + 1**: Quick Fix. Toda vez que o Eclipse alertar algum problema, o Quick Fix oferece opções para resolver o seu problema.

**CTRL + Espaço**: Auto-completar. Com certeza quem é desenvolvedor ja utilizou esse comando. É o comando mais utilizado pois através dele você pode conhecer todos os métodos, classes ou comandos presentes na linguagem ou nos frameworks que está utilizando, além disso, esse comando mostra a documentação dos métodos (se existirem).

**CTRL + Shift + F**: Esse comando "auto-identa" seu código, ou seja, formata seu código respeitando espaços e tabulações, deixando o código "organizado". Novamente: tenha cuidado com as auto-identações para não ter vários espaços em branco em seus commits.

**F3:** Com o cursor posicionado em cima de um método qualquer, ao apertar F3 você será direcionado para a implementação deste método.

**CTRL + Shift + G**: Esse comando realiza uma por uma referência selecionada dentro do Workspace. Selecione um método ou uma classe e a busca retornará onde esta classe/método está sendo referenciada dentro do workspace.

**CTRL + Shift + O**: Inclui os imports necessários ao seu código.

**CTRL + Shift + R**: Open Resource. Serve para localizar classes e arquivos em geral dentro do seu workspace. Você pode utilizar caracteres curinga como ‘*’ e ‘?’.

**CTRL + Shift + S**: Salva todos os arquivos, é mais produtivo do que realizar o comandoCTRL + S que salva somente um único arquivo por vez.

**CTRL + O**: Quick Overview. Está trabalhando em uma classe com muitos métodos? Esse é o método mais fácil de navegar por ela, efetue o comando e digite o nome do método e o Eclipse irá lhe dar um atalho para levá-lo até o trecho de código.

**CTRL + T**: Quick Type Hierarchy. Permite que você navegue pela hierarquia de uma classe.

**CTRL + Shift + L**: Mostra a lista completa de atalhos.

**Alt + Seta para cima/Seta para baixo: **Move a linha onde o cursor está posicionado para cima ou para baixo. Isso é particularmente útil quando se está refatorando/reorganizando um método e você quer evitar Ctrl+X + Ctrl+V.

**Alt + Seta para esquerda/Seta para direita: **Move o cursor pelos últimos locais que você editou. Por exemplo: você alterou uma classe X e fechou ela no seu workspace, quando abriu a classe Y lembrou que tinha um comentário a fazer no método em que estava trabalhando. Ao realizar o comando Alt + Seta para esquerda, o Eclipse vai abrir a classe anterior e voltar no mesmo trecho de código que você estava trabalhando.

**Alt + Shift + A**: Toggle Block Selection. Já precisou editar um bloco de códigos e não quer ficar editando linha por linha? Efetue esse comando e o Eclipse vai lhe prover uma edição em bloco. Desse modo, você pode editar várias linhas ao mesmo tempo.

**Alt + Shift + R**: Rename Refactoring. Renomeia uma variável, comando ou classe e todas as ocorrências dela dentro do workspace. Selecione o nome de qualquer variável, método ou classe e depois efetue o comando.

**Alt + Shift + S**: Source Quick Menu. Mostra opções para implementar métodos da interface ou gerar *getters* and *setters*.

**Alt + Shift + M**: Extrai uma determinada porção de código selecionado para um novo método. Selecione um conjunto de linhas, realize este comando que irá surgir uma janela para configurar o nome do método e as regras desse método (private, public, protected). O Eclipse irá "transportar" essas linhas para um novo método e adicionar uma chamada ao método que tinha originalmente essas linhas.

###Considerações

Isso é tudo por enquanto, espero que estas dicas tenham sido úteis. Este post será atualizando periodicamente, portanto, se tiverem qualquer sugestão ou dica que possa incrementá-lo, será bem-vindo!

Abraços!