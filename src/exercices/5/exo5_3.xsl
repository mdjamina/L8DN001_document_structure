<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>


    <xsl:template name="finder">
        <xsl:param name = "token" />
        <xsl:text>liste des mots et leur fréquence contenant la séquence : </xsl:text>
        <xsl:value-of select="$token"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:for-each select="w">
            <xsl:variable name="word" select="./forme/."/>
            <xsl:if test="./forme[contains(., $token)]">
                <xsl:if test="not(following-sibling::w/forme=./forme)">

                    <xsl:value-of select="$word"/>
                    <xsl:text> : </xsl:text>
                    <xsl:value-of select="count(//forme[.=$word])"/>
                    <xsl:text>&#10;</xsl:text>

                </xsl:if>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>Nombre total :</xsl:text>
        <xsl:value-of select="count(//forme[contains(., $token)])"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>-----------------------------------</xsl:text>
        <xsl:text>&#10;</xsl:text>

    </xsl:template>

    <xsl:template match="cordial2xml">
        <xsl:call-template name="finder">
            <xsl:with-param name="token">citoy</xsl:with-param>

        </xsl:call-template>
        <xsl:call-template name="finder">
            <xsl:with-param name="token">patriot</xsl:with-param>

        </xsl:call-template>




    </xsl:template>
</xsl:stylesheet>
