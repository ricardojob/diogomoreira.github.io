---
layout: page
title: Análise e Projeto de Sistemas 2015.1
navigation: false
permalink: /ensino/aps/
---

## Objetivo geral ##
Fornecer subsídios teórico-práticos necessários ao levantamento, análise e projeto de um sistema computacional. Realizar a modelagem de um sistema orientado a objetos.

## Objetivos específicos ##

Tornar o aluno capacitado a:

- Conhecer as etapas de um processo de desenvolvimento de software.
- Conhecer as técnicas de análise e projeto de sistemas segundo uma metodologia orientada a objetos.
- Conhecer e utilizar a UML e os seus diagramas básicos para modelagem e especificação nas fases de análise e projeto do software.

## Aulas

  <ul class="post-list">
    {% for post in site.categories.aps20151 %}
      <li>
        <span class="post-meta">
          {{ post.date | date: "%d/%m/%Y" }} - <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </span>
      </li>
    {% endfor %}
  </ul>

## Bibliografia básica ##

- LARMAN, Craig. **Utilizando UML e Padrões – Uma Introdução à Análise e ao Projeto Orientados a Objetos e ao Processo Unificado**. 3ª Edição. Porto Alegre: Artmed, 2007.
- FOWLER, Martin. **UML Essencial – Um Breve Guia Para a Linguagem Padrão**. 3ª Edição. Porto Alegre: Artmed, 2005.
- FURLAN, José Davi. **Modelagem de Objetos Através da UML – The Unified Modeling Language**. Makron Books, 1998.

## Bibliografia complementar ##

- BOOCH, G.; JACOBSON, I.; RUMBAUGH, J. **UML - Guia do Usuário**. 2ª Edição. Rio de Janeiro: Elsevier, 2005.
- MEDEIROS, E.; **Desenvolvendo Software com UML 2.0 : definitivo**. São Paulo: Pearson Makron Books, 2004.
- GAMMA, E.; HELM, R.; JOHNSON, R.; VLISSIDES, J. **Padrões de Projeto – Soluções Reutilizáveis de Software Orientado a Objetos**. 1ª Edição. Porto Alegre: Bookman, 2000. 

