<xsl:stylesheet version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method='html'/>
<!-- 
Для файла mod6/city.xml создайте lab-6.xsl, 
который будет по ключу находит все города принадлежащие стране с кодом 'RUS'.

Создайте ключи, для имен городов и выведите города 
с именем 'Zeleznogorsk' и 'Springfield'. 
-->
<xsl:key 
name="countyRUS" 
match="/resultset/row[field/@name = 'CountryCode']"
use="field"/>

<xsl:key
name="cityKey"
match="/resultset/row[field/@name = 'Name']" 
use="field"></xsl:key>

<xsl:template match="/">

<p>Количество городов, в стране с кодом RUS: 
  <mark><xsl:value-of select="count(key('countyRUS','RUS'))" /></mark>
  </p>
  <!-- <ul>
   <xsl:apply-templates select="key('countyRUS','RUS')"/>
 </ul> -->
 
<hr />

<p>Город Zeleznogorsk:
<mark><xsl:value-of select="count(key('cityKey','Zeleznogorsk'))"/></mark>
</p>

<ul>
  <xsl:apply-templates select="key('cityKey','Zeleznogorsk')"/>
</ul>

<hr />

<p>Город Springfield: 
  <mark><xsl:value-of select="count(key('cityKey','Springfield'))" /></mark>
</p>

<ul>
  <xsl:apply-templates select="key('cityKey','Springfield')"/>
</ul>

<hr />
</xsl:template>
<xsl:template match="row">
  <li>
    <xsl:for-each select='*'>
      <xsl:value-of select='name()'/>
      <xsl:text>: </xsl:text>
      <xsl:value-of select='.'/>
    </xsl:for-each>
  </li>
</xsl:template>
</xsl:stylesheet>