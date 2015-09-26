<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>


  <xsl:for-each select="RECIPES/RECIPE">
    <table class="table table-striped">
      <tr><td>Name</td><td><xsl:value-of select="NAME"/></td></tr>
      <tr><td>Type</td><td><xsl:value-of select="TYPE"/></td></tr>
      <tr><td>Style</td><td><xsl:value-of select="STYLE/NAME"/></td></tr>
      <tr><td>Batch Size</td><td><xsl:value-of select="BATCH_SIZE"/></td></tr>
      <tr><td>Boil Size</td><td><xsl:value-of select="BOIL_SIZE"/></td></tr>
      <tr><td>Boil Time</td><td><xsl:value-of select="BOIL_TIME"/></td></tr>
      <tr><td>Efficiency</td><td><xsl:value-of select="EFFICIENCY"/></td></tr>
      <tr><td>FG</td><td><xsl:value-of select="FG"/></td></tr>
      <tr><td>OG</td><td><xsl:value-of select="OG"/></td></tr>
      <tr><td>EBC</td><td><xsl:value-of select="format-number(CALCCOLOUR * 1.97,'#.#')"/></td></tr>
      <tr><td>IBU</td><td><xsl:value-of select="CALCIBU"/></td></tr>
    <xsl:for-each select="MASH/MASH_STEPS/MASH_STEP">
      <tr>
        <td>Mash</td>
        <td>
          <xsl:value-of select="NAME"/>, <xsl:value-of select="TYPE"/>
          @ <xsl:value-of select="STEP_TEMP"/>&#176;
          for <xsl:value-of select="STEP_TIME"/>min.
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="HOPS/HOP">
      <tr>
        <td>Hop</td>
        <td>
          <xsl:value-of select="AMOUNT * 1000"/>g <xsl:value-of select="NAME"/>&#160;<xsl:value-of select="FORM"/>,
          <xsl:value-of select="USE"/> for <xsl:value-of select="TIME"/>min.
          &#945;=<xsl:value-of select="ALPHA"/>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="FERMENTABLES/FERMENTABLE">
      <tr>
        <td><xsl:value-of select="TYPE"/></td>
        <td>
          <xsl:value-of select="AMOUNT * 1"/>kg <xsl:value-of select="NAME"/>,
          Yield: <xsl:value-of select="YIELD"/>,
          Color: <xsl:value-of select="COLOR"/>,
          Potential: <xsl:value-of select="POTENTIAL"/>,
          Percentage: <xsl:value-of select="PERCENTAGE"/>
        </td>
      </tr>
    </xsl:for-each>
    <xsl:for-each select="YEASTS/YEAST">
      <tr>
        <td>Yeast</td>
        <td>
          <xsl:value-of select="NAME"/>,
          Attenuation: <xsl:value-of select="ATTENUATION"/>
        </td>
      </tr>
    </xsl:for-each>
    </table>
  </xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>