---
layout: page
title: Padrões de Projeto 2015.1
navigation: false
permalink: /ensino/padroes/
---

## Objetivo geral

Capacitar o estudante a desenvolver códigos de melhor qualidade através da adoção de padrões de projeto.

## Objetivo específicos

- Desenvolver conhecimentos sobre projeto de software orientado a objetos com padrões;
- Explorar os benefícios de pensar e arquitetar antes de desenvolver;
- Conhecer um conjunto de padrões de projetos mais conhecidos pela Engenharia de Software;

## Aulas

  <ul class="post-list">
    {% for post in site.categories.padroes20151 %}
      <li>
        <span class="post-meta">
          {{ post.date | date: "%d/%m/%Y" }} - <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </span>
      </li>
    {% endfor %}
  </ul>

## Bibliografia básica

- Gamma, E.; et al. Padrões de Projeto: Soluções Reutilizáveis de Software Orientado a Objetos. Bookman, 2000.
- Freeman, E.; Freeman, E. Use a Cabeça! Padrões de Projeto (Design Patterns). Alta Books, 2ª edição 2007.

## Bibliografia complementar

- Metsker, S. J. Padrões de Projeto em Java. Bookman, 2004.
- Shalloway, A.; Trott, J. R. Explicando Padrões de Projeto - Uma Nova Perspectiva em Projeto Orientado a Objeto. Bookman, 2004