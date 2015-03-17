---
layout: page
title: Programação Orientada a Serviços 2015.1
navigation: false
permalink: /ensino/pos/
---

## Objetivo Geral

Permitir o aprendizado de conceitos e técnicas fundamentais necessários à Publicação, Descoberta e Integração aplicações orientadas a Serviços.

## Objetivos específicos

- Entender os fundamentos da Publicação de um serviço Web;
- Entender e aplicar o paradigma de Orientação a Serviços;
- Conhecer e utilizar os principais conceitos de Descoberta e Publicação de Serviços Web.

## Aulas

  <ul class="post-list">
    {% for post in site.categories.pos20151 %}
      <li>
        <span class="post-meta">
          {{ post.date | date: "%d/%m/%Y" }} - <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </span>
      </li>
    {% endfor %}
  </ul>

## Bibliografia básica

- Abinader, J. A.; Lins, R. D. Web Services em Java. Brasport, 2006.
- Kalin, M. Web Services: Implementando. Alta Books, 2009.
- Richardson, L; Ruby, S. RESTful Web Services Web services for the real world. O'Reilly, 2007.

## Bibliografia complementar

- Papazoglou, M. Web Services: Principles and Technology. Addison-Wesley, 2007.
- Sampaio, C. SOA e Web Services em Java. Brasport, 2006.
