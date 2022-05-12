<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes" />
    <xsl:strip-space elements="*" />

    <!-- le lemma du mot current-->


    <!-- le lemma du mot pr-->
    <xsl:variable name="plemme" select="preceding-sibling::w[1]/lemme"/>



    <!-- gestion des ponctuation -->
    <xsl:template name="ponct">
        <!-- le lemma du mot suivant-->
        <xsl:variable name="flemme" select="following-sibling::w[1]/lemme"/>
        <xsl:choose>
            <xsl:when test="contains('.,;-!?', $flemme)">
                <xsl:text/>
            </xsl:when>
            <xsl:when test='.=contains(., "&apos;")'>
                <xsl:text/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- phrase -->
    <xsl:template name="sent">

        <xsl:variable name="lemme" select="lemme"/>



        <xsl:choose>
            <xsl:when test="contains('.', $lemme)">
                <br/><br/>
            </xsl:when>

            <xsl:otherwise>

            </xsl:otherwise>
        </xsl:choose>



    </xsl:template>






    <xsl:template match="/root/cordial2xml">
        
        <html>
            <head>
            </head>
            <body>
                <h1 align="center" style="color: green; font-size: 50px; font-family: Georgia, serif;">Poème du père Duchesne</h1>
                <p>
                    




                    <xsl:for-each select="w">


                        <xsl:value-of select="forme"/>
                        <xsl:call-template name="ponct"/>
                        <xsl:call-template name="sent"/>








                    </xsl:for-each>
               
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
