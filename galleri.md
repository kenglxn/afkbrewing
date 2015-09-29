---
layout: page
title: Galleri
permalink: /galleri/
---


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

  {% for file in site.static_files %}
    {% if file.extname == '.png' and (file.path contains 'albums' or file.path contains 'beers') %}
    <div class="item {% if activeSet != true %}active{% assign activeSet = true %}{% endif %}">
      <img src="{{ site.baseUrl }}{{ file.path }}">
    </div>
    {% endif %}
  {% endfor %}
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Forrige</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Neste</span>
  </a>
</div>
