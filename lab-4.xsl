<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
<xsl:output indent="yes"/> 
<!-- xsl:output indent="yes" форматирование, перенос на новую строку -->
 
 <xsl:template match="courses"> 
    <items><xsl:apply-templates select="course" /></items>
</xsl:template>

<xsl:template match="course"> 
    <item><xsl:value-of select="name"/></item>
</xsl:template>

</xsl:stylesheet>