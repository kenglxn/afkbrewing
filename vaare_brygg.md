---
layout: page
title: Våre Brygg
permalink: /vaare_brygg/
beers:
 - name: Nygaard English Ale
   type: English Mild Ale
   ABV: 6.5%
   IBU: 37
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-nygaard-english-ale/1231624
 - name: Nygaard APA
   type: American Pale Ale
   ABV: 6.5%
   IBU: 56
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-nygaard-apa/1231620
 - name: 14 Nisser
   type: Winter Ale
   image: assets/beers/14nisser.png
   ABV: 7%
   IBU:
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-14-nisser-1/895793
 - name: Sweet Devil
   type: English Brown Ale
   image: assets/beers/sweetdevil.png
   ABV: 5%
   IBU:
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-sweet-devil/858636
 - name: WeissenPaaske
   type: Hefeweizen
   image: assets/beers/weissenpaaske.png
   ABV: 5%
   IBU: 15
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-weissenpaaske/999360
 - name: MayFlower IPA
   type: English IPA
   image: assets/beers/mayflower.png
   ABV: 5%
   IBU:
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-mayflower-ipa/736689
 - name: "!4Sale"
   type: English Golden Ale
   image: assets/beers/not4sale.png
   ABV: 5%
   IBU:
   recipe: link to beer.xml
   untappd: https://untappd.com/b/afk-brewing-4sale/816415
---

{% for beer in page.beers %}

{% if beer.image != null %}
<!-- TODO: carousel instead of just image? -->
<img src="{{ site.baseurl }}{{ beer.image }}" title="{{ beer.name }}" class="profile">
{% endif %}

<dl class="dl-horizontal">
  <dt>Navn</dt>
  <dd>{{ beer.name }}</dd>
  <dt>Type</dt>
  <dd>{{ beer.type }}</dd>
  <dt>ABV</dt>
  <dd>{{ beer.ABV }}</dd>
  <dt>IBU</dt>
  <dd>{{ beer.IBU }}</dd>
  <dt>Oppskrift</dt>
  <dd>{{ beer.recipe }}</dd>
  <dt>Untappd</dt>
  <dd>
    <a href="{{ beer.untappd }}">
      <i class="fa fa-beer"></i>
      <span class="username">{{ beer.name }}</span>
    </a>
  </dd>
  <!-- TODO  renderer for beer.xml in JS -->
</dl>

{% include page_divider.html %}

{% endfor %}






