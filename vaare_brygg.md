---
layout: page
title: Våre Brygg
permalink: /vaare_brygg/
beers:
 - name: 16 Nisser
   type: Christmas Ale
   image: assets/beers/16nisser.png
   ABV: 6.9%
   IBU: 39.6
   recipe: /assets/xmls/JuleAle2016xml.xml
   untappd: https://untappd.com/b/afk-brewing-16-nisser/1843027
 - name: 15 Nisser
   type: Winter Ale
   image: assets/beers/15nisser.png
   ABV: 6.5%
   IBU: 47.6
   recipe: /assets/xmls/15nisser.xml
   untappd: https://untappd.com/b/afk-brewing-15-nisser/1340424
 - name: Nygaard APA
   type: American Pale Ale
   ABV: 6.5%
   IBU: 56
   recipe: /assets/xmls/American_Pale_Ale.xml
   untappd: https://untappd.com/b/afk-brewing-nygaard-apa/1231620
 - name: Nygaard English Ale
   type: English Mild Ale
   ABV: 6.5%
   IBU: 37
   recipe: /assets/xmls/Champion_Ale_II.xml
   untappd: https://untappd.com/b/afk-brewing-nygaard-english-ale/1231624
 - name: WeissenPaaske
   type: Hefeweizen
   image: assets/beers/weissenpaaske.png
   ABV: 5%
   IBU: 15
   recipe: /assets/xmls/Weissbierxml.xml
   untappd: https://untappd.com/b/afk-brewing-weissenpaaske/999360
 - name: 14 Nisser
   type: Winter Ale
   image: assets/beers/14nisser.png
   ABV: 7%
   IBU: 45.3
   recipe: /assets/xmls/Julealexml.xml
   untappd: https://untappd.com/b/afk-brewing-14-nisser-1/895793
 - name: Sweet Devil
   type: English Brown Ale
   image: assets/beers/sweetdevil.png
   ABV: 5%
   untappd: https://untappd.com/b/afk-brewing-sweet-devil/858636
 - name: "!4Sale"
   type: English Golden Ale
   image: assets/beers/not4sale.png
   ABV: 5%
   untappd: https://untappd.com/b/afk-brewing-4sale/816415
 - name: MayFlower IPA
   type: English IPA
   image: assets/beers/mayflower.png
   ABV: 5%
   untappd: https://untappd.com/b/afk-brewing-mayflower-ipa/736689
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
  {% if beer.IBU != null %}
  <dt>IBU</dt>
  <dd>{{ beer.IBU }}</dd>
  {% endif %}
  {% if beer.recipe != null %}
  <dt>Oppskrift</dt>
  <dd>
    <a href="#" data-xml="{{ beer.recipe }}" data-name="{{ beer.name }}" class="beer-xml">
      <i class="fa fa-file-text"></i>
    </a>
  </dd>
  {% endif %}
  {% if beer.untappd != null %}
  <dt>Untappd</dt>
  <dd>
    <a href="{{ beer.untappd }}">
      <i class="fa fa-beer"></i>
    </a>
  </dd>
  {% endif %}
</dl>

{% include page_divider.html %}

{% endfor %}

<div id="beerXmlModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body"></div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
  // TODO: move
  $(document).ready(function () {
    var xsl;
    $.get('/assets/xmls/beer.xsl', function (data) {
      xsl = data;
    });
    $('.beer-xml').on('touchend click', function (e) {
      $.get(e.currentTarget.getAttribute('data-xml'), function (xml, status, xhttp) {
        var transform;
        $('#beerXmlModal').modal();
        $('#beerXmlModal').find('.modal-title').text(e.currentTarget.getAttribute('data-name'))

        if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
          transform = xml.transformNode(xsl);
        } else if (document.implementation && document.implementation.createDocument) {
          var xsltProcessor = new XSLTProcessor();
          xsltProcessor.importStylesheet(xsl);
          var frag = xsltProcessor.transformToFragment(xml, document);
          console.log(frag);
          transform = frag;
        }
        $('#beerXmlModal').find('.modal-body').html(transform);

      });
      e.preventDefault();
      e.stopPropagation();
    });
  });
</script>
