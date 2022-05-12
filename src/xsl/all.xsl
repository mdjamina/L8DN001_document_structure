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
											<xsl:attribute name="src"><xsl:value-of select="visuel"/></xsl:attribute>
											<xsl:attribute name="class">img-responsive</xsl:attribute>
											<xsl:attribute name="itemprop">image</xsl:attribute>
											<xsl:attribute name="title"><xsl:value-of select="titre"/></xsl:attribute>
										</xsl:element>
									</xsl:element>
									
								</figure>
								<strong class="pays"><xsl:value-of select="pays"/></strong>
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


								<p class="level col-sm-3 text-center">
									<img src="../images/pictos/blason.png"/> Niveau <xsl:value-of select="@niveau" />
								</p>
								
								<p class="productType col-sm-3 text-center">
									<img src="../images/pictos/eclair.png"/> <xsl:value-of select="activite" />
								</p>
								
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

								
							</div>

						</article>



		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
