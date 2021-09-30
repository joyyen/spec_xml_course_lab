<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/resultset">
        <html>
            <head>
                <!-- CSS only -->
                  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
              <!-- <style>
                table{ border-collapse: collapse; width: 300px }
                table, td{ border: 1px solid #777;}
              </style> -->
            </head>
            <body>
                <h1>Страны</h1>
                <table class="table table-border">
                <xsl:apply-templates select='row'>
                    <xsl:sort select="field[@name='Name']" data-type="text" order="ascending"/>
                </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="row">
        <xsl:element name="tr">
                <xsl:if test="position() mod 2 = 0">
                    <xsl:attribute name='style'>color:#fff; background:#369;</xsl:attribute>
                </xsl:if>
                <xsl:element name="td">
                    <xsl:value-of select="position()"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Code']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Name']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Continent']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Region']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='SurfaceArea']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='IndepYear']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Population']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='LifeExpectancy']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='GNP']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='GNPOld']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='LocalName']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='GovernmentForm']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='HeadOfState']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Capital']"/>
                </xsl:element>
                <xsl:element name="td">
                    <xsl:value-of select="field[@name='Code2']"/>
                </xsl:element>                

        </xsl:element>
    </xsl:template>

</xsl:stylesheet>