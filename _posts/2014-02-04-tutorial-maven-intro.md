---
layout: post
title:  "Tutorial Maven - Introdução"
date:   2014-02-04 01:46:42
comments: true
tags: desenvolvimento gerencia java maven
---

Olá amigos, tudo bem?
Hoje começo uma série de posts sobre o Maven! Neles eu vou mostrar um pouco do que eu sei sobre a ferramenta, como usar, quando usar, boas práticas e mostrar alguns plugins que podem ser úteis para a nossa vida de desenvolvedor. As aulas serão gradativas, então é bom começar por esse post. Vamos construir uma aplicação web simples, as tecnologias envolvidas no código dela não serão relevantes no decorrer dos posts.
O código fonte das aulas se encontra em <a title="Tutorial Maven Github Repository" href="https://github.com/diogomoreira/tutorial-maven" target="_blank">github.com/diogomoreira/tutorial-maven</a>. Vou tentar explicar ao máximo cada trecho de código. Caso apareça alguma dúvida, não hesitem em comentar neste post ou no próprio Github. Então, vamos lá!

<h2>O que é Maven?</h2>
O Maven (que <a href="http://en.wikipedia.org/wiki/Maven" target="_blank">significa</a> <em>acumulador de conhecimentos</em>) é uma **ferramenta de automação de build e gerenciamento de projetos em Java**. Imagine um projeto com milhões de mini-projetos/módulos. Como gerenciar todos para que compilem, sejam testados e gerem seus artefatos várias vezes durante o desenvolvimento? O Maven é a ferramenta para realizar tudo isso! Ele cria um padrão para compilação dos projetos, permite o compartilhamento dos artefatos (.jar, .war
e outros) entre os projetos, executa os testes necessários além de muitas outras funcionalidades.
Em um primeiro momento você pode dizer:

> Qual a vantagem de uma ferramenta que faz o que a minha IDE **já faz**?

Acho que esse é o ponto onde muita gente para e não se interessam pelo Maven. Vamos citar só alguns pontos do porque usar Maven.

<ul>
	<li style="text-align: justify;"><strong>Independência de IDE</strong>. Projetos criados diretamente com o modelo de build da IDE são "amarrados" a essa mesma IDE. Um projeto no Netbeans não consegue ser lido no Eclipse, embora o contrário seja possível. Projetos criados pelo Maven são <strong>independentes de IDE</strong>, de forma que o mesmo projeto pode ser importado no Eclipse, no Netbens, no Intellij IDEA ou qualquer outra IDE que entenda o modo como o Maven trabalha. Isso já seria motivo suficiente para usarmos essa ferramenta nos nossos projetos, afinal, <strong>nunca estamos trabalhando sozinhos no mesmo código</strong>.</li>
	<li style="text-align: justify;"><strong>Uso de plugins</strong>. O uso de plugins no Maven pode lhe ajudar com várias tarefas como rodar toda a suite de testes unitários, gerar documentação, verificar estilo de código dentre outras atividades.</li>
	<li style="text-align: justify;"><strong>Gerência de dependências.</strong> Imagina toda vez que alguém tiver que modificar alguma coisa no seu código você ter que passar 100+ jars? Com o maven o seu projeto fica leve, o que define as dependências é apenas um arquivo xml. Desse modo seu projeto fica muito mais "portável".</li>
</ul>
Mas ainda tem muito mais. O assunto pode parecer ser meio chato ou desnecessário no começo, mas garanto que após usar o Maven pela primeira vez você nunca mais vai construir um projeto sem usá-lo.

<h2 style="text-align: justify;">Instalação do Maven</h2>
Antes de começar a instalação do Maven, certifique-se que tem o Java instalado na sua máquina. Não tem? <a title="Instalação do Java" href="http://www.youtube.com/watch?v=ddhH97IPrFY" target="_blank">Veja aqui</a>.
<h3>Windows</h3>
Baixe o executável do Maven <a title="Apache Maven" href="http://maven.apache.org/" target="_blank">aqui</a>. Não é necessário instalar nada, apenas extraia o arquivo em uma pasta conhecida. Após extrair, precisamos configurar o caminho do Maven dentro das variáveis de ambiente do Windows.

<ul>
	<li style="text-align: justify;">Entre na tela de Propriedades do Sistema (Winkey + Pause ou no Painel de Controle &gt; Sistema), vá para a aba "<strong>Avançado</strong>" e clique em "<strong>Variáveis de ambiente</strong>";</li>
	<li style="text-align: justify;">Nas variáveis de usuário adicione uma variável chamada <strong>M2_HOME</strong> contendo o caminho da pasta que você descompactou o Maven. (Ex: D:\apache-maven-3.1.1);</li>
	<li style="text-align: justify;">Em seguida adicione uma variável nomeada <strong>M2</strong> com o mesmo valor anterior e a adição de "\bin" ao final. (Ex: D:\apache-maven-3.1.1\bin);</li>
	<li style="text-align: justify;">Agora nas variáveis de sistema, edite a variável "Path" e adicione "<strong>%M2%"</strong> ao final dela.</li>
</ul>
E pronto! O Maven já está instalado na sua máquina.
<h3>Ubuntu</h3>
No terminal, rode o comando abaixo para obter os pacotes do Maven disponíveis

    apt-cache search maven

Após a execução do comando anterior, execute

    sudo apt-get install maven

E pronto! O Maven já está instalado na sua máquina.

Para testar a instalação do Maven tanto no Windows quanto no Ubuntu, rode o seguindo comando no seu terminal:

    mvn --version

Agora que já temos o Maven devidamente instalado na máquina podemos partir para os próximo passo desse tutorial: criar um projeto simples.
<h2>Criando o projeto</h2>
Antes de criar o primeiro projeto, vamos aprender um conceito simples mas que é muito importante para nossos projetos com Maven: o <strong>archetype.</strong> Os archetypes no Maven são, em resumo, "templates" para os nosso projetos. Quando criamos um <strong>projeto web</strong> no Netbeans ou Eclipse por exemplo, ele cria uma <strong>estrutura padrão</strong> para esse tipo de projeto com algumas pastas padrões: "web" no caso do Netbeans, "WebContent" no caso do Eclipse. É isso que o Maven faz, cria um projeto <strong>de acordo com o "template"</strong>, ou seja, nosso <strong>archetype</strong>. Por hora é o que precisamos entender.
Os seguintes conceitos serão de extrema importância daqui pra frente:
<ul>
	<li><strong>groupId:</strong> É o que vai identificar o seu projeto entre os demais projetos que você estará trabalhando. Deve seguir a nomenclatura de pacotes que você vai usar, geralmente usamos nomes de domínio que temos posse. (veja <a href="http://stackoverflow.com/questions/2475168/what-is-the-significance-of-the-reverse-domain-name-for-java-package-structure" target="_blank">What is the significance of the reverse domain name for java package structure</a>)</li>
	<li><strong>artifactId:</strong> É o nome do seu artefato. O seu jar, por exemplo. Tome como referência o Primefaces ou outro framework qualquer. Ao fazer o download do jar, temos um arquivo <em>primefaces-4.0.jar</em>. O artifactId seria o nome "primefaces".</li>
	<li><strong>version:</strong> É a versão do seu artefato. Por exemplo: 1.0, 1.1, 1.1.1 e etc.</li>
</ul>
Agora vamos criar nosso projeto. No terminal, rode o seguinte comando:

    mvn archetype:generate -DgroupId=com.diogodmoreira 
				-DartifactId=tutorial-maven 
				-DarchetypeArtifactId=maven-archetype-quickstart
				-DinteractiveMode=false

(**Nota**: o -D denomina um parâmetro, todo o comando deve ser rodado em apenas uma linha, a apresentação dele aqui é apenas para facilitar a leitura)

Após a execução desse comando, você pode perceber que foi criado um diretório com o nome de <i>tutorial-maven. </i>Explicando o que esse comando fez: pedimos ao maven para gerar um projeto seguindo um archetype (<span style="text-decoration: underline;">mvn archetype:generate</span>), passamos alguns dados relativos ao nosso projeto como <em>groupId e artifactId</em> (entenderemos isso mais a frente), definimos qual o <em>archetype</em> a ser usado (<span style="text-decoration: underline;">-DarchetypeArtifactId=maven-archetype-quickstart</span>) e informamos para não entrar em modo interativo (não pedir dados ao usuário durante a execução do comando).

Neste ponto, a estrutura do nosso projeto está construída, e agora já poderíamos começar a codificar nossa aplicação. Perceba que temos uma pasta chamada "src", e é nela que vamos guardar o código-fonte da nossa aplicação. O Maven por padrão separa dois espaços na nossa aplicação: <em>main</em> e <em>test</em>, a primeira para o código de produção e o segundo para os nossos testes. Note que já temos pacotes criados (<em>com.diogodmoreira</em>) com uma classe (App.java) apenas para demonstrar onde devemos começar a inserir nosso código. Esses pacotes são criados de acordo com o <em>groupId</em> que passamos como parâmetro na criação do nosso projeto.
Vamos empacotar nosso projeto e testá-lo em seguida apenas para demonstrar como construir um pacote com o Maven.
Execute o seguinte comando no seu terminal:

    mvn package

Após uma sequência de logs, veja se apareceu a mensagem "BUILD SUCCESS" que indica que nosso projeto foi construido com sucesso. Vá até a pasta "<em>target</em>" dentro do projeto e você vai encontrar um arquivo chamado <strong><em>tutorial-maven-1.0-SNAPSHOT.jar</em></strong><em>. </em>Volte ao terminal e execute o comando:<em></em>

    java -cp tutorial-maven-1.0-SNAPSHOT.jar com.diogodmoreira.App

A saída deve ser o "Hello World" que está contido dentro do App.java que o Maven criou automaticamente. Pronto! Você criou um projeto no Maven pela primeira vez. Tente importar o seu projeto em outras IDEs e veja como o Maven continua construindo sua aplicação da mesma maneira, possibilitando que você use a IDE que desejar mesmo estando numa equipe que não utilize a IDE de sua preferência.

Nos próximos artigos vou explicar como adicionar dependências no seu projeto, como se utilizar de archetypes para tornar a estrutura inicial mais rápido entre outras vantagens do Maven. No começo pode ser difícil de enxergar o ganho que o Maven trás para o desenvolver, principalmente para quem ainda não o usa, mas ao passo dos próximos tutoriais você irá perceber como é essencial uma ferramenta desse tipo.
Até os próximos artigos!