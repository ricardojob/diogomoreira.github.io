---
layout: default
title: Padrões de Projeto 2015.1
navigation: false
permalink: /ensino/padroes/
---

<div class="home">

  <h1 class="page-heading">Aulas</h1>

  <ul class="post-list">
    {% for post in site.categories.padroes20151 %}
      <li>
        <span class="post-meta">
          {{ post.date | date: "%d/%m/%Y" }} - <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </span>
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>

</div>
