<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/urlset">
        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="url">
        <xsl:element name="li">
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="loc"/>
                </xsl:attribute>
                <xsl:value-of select="loc"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>