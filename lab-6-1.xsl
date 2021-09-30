<xsl:stylesheet version="1.0" 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method='html'/>
<!-- 
Создайте ключи для континентов
Выведите количество и перечень стран находящихся в Африке Africa
-->
<xsl:key 
name="ContinentKey" 
match="/resultset/row[field/@name = 'Continent']"
use="field"/>

<xsl:template match="/">

<p>Страны Африки: 
  <mark><xsl:value-of select="count(key('ContinentKey','Africa'))" /></mark>
  </p>
  <ul>
   <xsl:apply-templates select="key('ContinentKey','Africa')"/>
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