---
layout: page
title: Introdução a Programaçaõ 2015.1
navigation: false
permalink: /ensino/programacao/
---

## Objetivo Geral

Oferecer aos alunos noções básicas sobre algoritmos e programação de computadores.

## Objetivos específicos

- Oferecer noções básicas sobre algoritmos
- Apresentar a lógica de programação estruturada
- Aplicar os conceitos aprendidos e desenvolver algoritmos usando uma linguagem de programação estruturada.

## Aulas

  <ul class="post-list">
    {% for post in site.categories.programacao20151 %}
      <li>
        <span class="post-meta">
          {{ post.date | date: "%d/%m/%Y" }} - <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </span>
      </li>
    {% endfor %}
  </ul>

## Bibliografia básica

- ASCENCIO, A. F. G. Lógica de Programação com Pascal. Makron Books, 1999.
- MANZANO, J. A. N. G. Lógica Estruturada para Programação de Computadores. Érica, 2002.
- FARRER, H; FARIA, E. C.; MATOS, H. F. Pascal Estruturado. LTC, 1999