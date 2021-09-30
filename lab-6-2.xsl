<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <xsl:apply-templates select="/resultset/row"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="row">
        <xsl:for-each select="*">
            <xsl:value-of select="."></xsl:value-of>
            <xsl:text>;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#xD;</xsl:text>
    </xsl:template>
</xsl:stylesheet>