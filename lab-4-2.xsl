<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
<xsl:strip-space elements="*"/>
<xsl:output indent="yes"/> 

<xsl:template match="/books"> 
    <xsl:apply-templates/>
    Количество книг <xsl:value-of select='count(//book)'/> шт.
</xsl:template>

<xsl:template match="book"> 
    Книга <xsl:value-of select="position()"/> : <xsl:value-of select="title" />
</xsl:template>

</xsl:stylesheet>