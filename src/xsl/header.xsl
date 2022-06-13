<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:template match="data">
	

		<ul class="nav navbar-nav">
			<!-- Exercices -->
			<li class="dropdown yamm-fw">
				<a href="#" data-toggle="dropdown" class="dropdown-toggle">
					<span>Les</span>
					Exercices
				</a>
				<ul class="dropdown-menu">
					<li>
						<div class="yamm-content">
							<div class="row">
								<!-- test -->
								<xsl:for-each select="exercice">

									<div class="mm-item col-xs-4 col-sm-2">


										<xsl:element name="a">
											<xsl:attribute name="href">../pages/exercice.html?numero=<xsl:value-of select="@numero"/></xsl:attribute>
											<xsl:attribute name="title"><xsl:value-of
												select="name" /></xsl:attribute>
											<xsl:attribute name="class">portfolio-link mega-menu-item</xsl:attribute>
											<xsl:attribute name="data-toggle">modal</xsl:attribute>
											<div class="legend">
												<xsl:value-of select="name" />
											</div>
											<div class="caption">
												<div class="caption-content hidden-xs">
													<strong>
														<xsl:value-of select="name" />
													</strong>
													<p class="hidden-xs">
														<xsl:value-of select="titre" />
													</p>
												</div>
											</div>
											<xsl:element name="img">
												<xsl:attribute name="src">../images/exo<xsl:value-of select="@numero"/>.png</xsl:attribute>
												<xsl:attribute name="class">img-responsive lazy</xsl:attribute>
												<xsl:attribute name="alt"><xsl:value-of
													select="name" /></xsl:attribute>
											</xsl:element>


										</xsl:element>

									</div>
								</xsl:for-each>
								<div class="mm-item link col-xs-12 col-sm-2">
									<a href="../pages/all.html" class="portfolio-link mega-menu-item"
										data-toggle="modal">
										Voir tous les exercices
									</a>
									
				                        
				                    
								</div>
							</div>
						</div>
					</li>
				</ul>
			</li>
		</ul>
	</xsl:template>
</xsl:stylesheet>
