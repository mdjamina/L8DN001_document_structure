<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:template match="data">


		<xsl:for-each select="exercice">

			<xsl:if test="@numero = 4 or @numero = 5">

				<div class="col-xs-12 col-sm-6 product-item">
					<article>

						<xsl:element name="a">
							<xsl:attribute name="href">/pages/exercice.html?numero=<xsl:value-of select="@numero"/></xsl:attribute>
							<xsl:attribute name="class">product-link</xsl:attribute>
							<figure>
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="visuel" />
										
									</xsl:attribute>

									<xsl:attribute name="alt">
										<xsl:value-of select="titre" />
									</xsl:attribute>
								</xsl:element>
								<div class="caption col-xs-12">
									<div class="caption-content">
										<p class="itemTypeProd">
											<xsl:value-of select="style"/>
										</p>
										<p class="itemLib">
											<xsl:value-of select="titre"/>...</p>

	
									</div>
								</div>

							</figure>


						</xsl:element>

					</article>
				</div>


			</xsl:if>


		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>