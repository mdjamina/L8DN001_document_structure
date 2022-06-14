<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:template match="data">
		<xsl:for-each select="exercice">
						<article class="exerciceList col-sm-12" itemscope=""
							itemtype="https://schema.org/product">
							<header>
								<h2 itemprop="name">
								<xsl:element name="a">
									<xsl:attribute name="href">exercice.html?numero=<xsl:value-of select="@numero"/></xsl:attribute>
									<xsl:attribute name="title"><xsl:value-of select="titre"/></xsl:attribute>
									<xsl:attribute name="itemprop">url</xsl:attribute>
									<xsl:value-of select="titre"/>
								</xsl:element>
									
								</h2>
							</header>
							<aside class="col-xs-12 col-sm-12 col-md-4">
								<figure>
									<xsl:element name="a">
										<xsl:attribute name="href">exercice.html?numero=<xsl:value-of select="@numero"/></xsl:attribute>
										<xsl:attribute name="title"><xsl:value-of select="titre"/></xsl:attribute>
										<xsl:attribute name="itemprop">url</xsl:attribute>
										<xsl:attribute name="class">vignetteProduit</xsl:attribute>
										<xsl:element name="img">
											<xsl:attribute name="src">../images/exo<xsl:value-of select="@numero"/>.png</xsl:attribute>
											<xsl:attribute name="class">img-responsive</xsl:attribute>
											<xsl:attribute name="itemprop">image</xsl:attribute>
											<xsl:attribute name="title"><xsl:value-of select="titre"/></xsl:attribute>
										</xsl:element>
									</xsl:element>
									
								</figure>
							
							</aside>
							<div class="productContent col-xs-12 col-sm-12 col-md-8">
	
								<div class="content col-xs-12 col-sm-12" itemprop="description">
										<xsl:for-each select="description/p">
									<p>
										• <xsl:value-of select="current()" />
									</p>

								</xsl:for-each>
									
								</div>
							</div>
							<div class="clear"></div>
							<div class="productInfos col-sm-12 text-center">



								
	
								
							</div>
							<div class="productAction col-sm-12">
								<div class="col-sm-5">
									<p class="duration"></p>
									
								</div>
								<xsl:element name="a">
										<xsl:attribute name="href">exercice.html?numero=<xsl:value-of select="@numero"/></xsl:attribute>
										<xsl:attribute name="title">Voir l'exercice - <xsl:value-of select="titre"/></xsl:attribute>
										
										<xsl:attribute name="class">btn rounded10 col-xs-12 col-sm-3</xsl:attribute>
										Voir l'exercice
									</xsl:element>

									<xsl:element name="a">
										<xsl:attribute name="href">../exercices/exo<xsl:value-of select="@numero"/>.zip</xsl:attribute>
										<xsl:attribute name="title">Téléchargement - <xsl:value-of select="titre"/></xsl:attribute>
										<xsl:attribute name="download">solution_exercice_<xsl:value-of select="@numero"/>.zip</xsl:attribute>
										
										<xsl:attribute name="class">btn rounded10 col-xs-12 col-sm-3</xsl:attribute>
										Téléchargement
									</xsl:element>

								
							</div>

						</article>



		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
