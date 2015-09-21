---
layout: page
title: Galleri
permalink: /galleri/
pics:
 - alt: kok julebrygg 2015
   src: /assets/julebrygg2015/boil.png
   cap: kok julebrygg 2015
 - alt: humle julebrygg 2015
   src: /assets/julebrygg2015/hops.png
   cap: humle julebrygg 2015
---


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
  <!-- <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol> -->

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

  {% for pic in page.pics %}
    <div class="item {% if forloop.index == 1 %}active{% endif %}">
      <img src="{{ pic.src }}" alt="{{ pic.alt }}">
      <div class="carousel-caption">
        <p>{{ pic.cap }}</p>
      </div>
    </div>
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
