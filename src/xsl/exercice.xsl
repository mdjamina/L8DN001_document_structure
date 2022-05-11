<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:param name="numero" />
	<xsl:template match="data">

		<xsl:call-template name="pageHTML"></xsl:call-template>

	</xsl:template>



	<xsl:template name="pageHTML">


		<xsl:for-each select="exercice[@numero = $numero]">


			<section id="carrousel">
				<div class="container">

					<!-- VISUEL PRODUIT -->
					<div id="full-width-slider" class="royalSlider visibleNearby rsMinW rsHor">
						<div class="rsOverflow" style="cursor: -moz-grab; width: 578px; height: 325px;">
							<div class="rsContainer">
								<div style="left: 0px;" class="rsSlide  rsActiveSlide">
									<div class="rsContent" style="visibility: visible; opacity: 1;">
										<xsl:element name="img">
											<xsl:attribute name="src">
												<xsl:value-of select="visuel" />
											</xsl:attribute>
											<xsl:attribute name="class">rsImg rsMainSlideImage</xsl:attribute>
											<xsl:attribute name="style">width: 578px; height: 384px; margin-left: 0px; margin-top: -30px;</xsl:attribute>
										</xsl:element>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


			<section id="resume" itemscope="" itemtype="https://schema.org/product">
				<div class="container">
					<div class="row">
						<div class="infos col-xs-12 col-sm-8">
							<!-- TITRE -->
							<h1 itemprop="name">
								<xsl:value-of select="pays" />
 -								<xsl:value-of select="titre" />
							</h1>

						</div>
						<div class="infosRight col-xs-12 col-sm-4">

							<div class="col-xs-6">
								<!-- DUREE -->
								<p class="duration">durée<span>
									<xsl:value-of select="duree" />
								</span>
							</p>
							<!-- NIVEAU -->
							<xsl:element name="div">
								<xsl:attribute name="id">infoLevel</xsl:attribute>
								<xsl:attribute name="class">
									<xsl:value-of select="@niveau" />
								</xsl:attribute>
									niveau :<span>
								<xsl:value-of select="@niveau" />
							</span>
						</xsl:element>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="productMain">
		<div class="container">
			<div class="row">
				<div class="productContent col-xs-12 col-sm-8">
					<!-- Onglet -->
					<div id="product">
						<nav>
							<ul class="row">
								<li class="Fl">
									<h3>L'Exercice</h3>
								</li>
								<li class="Fl hidden-xs">
									<a title="products" href="#program" class="scroll">products</a>
								</li>


							</ul>
						</nav>
						<div></div>
						<div class="content" itemprop="description">
							<h3>Détails de l'exercice "<xsl:value-of select="titre" />
"</h3>
							<div class="more" style="max-height: none;">
								<xsl:for-each select="description/p">
									<p>
											•										<xsl:value-of select="current()" />
									</p>
								</xsl:for-each>
							</div>
							<div class="clear"></div>
						</div>

						<!-- Infos supplementaire sur le voyage -->
						<ul id="infosSupp" class="row">
							<li class="col-xs-12 col-sm-3">
								<h5>Groupe</h5>
								<xsl:value-of select="produit/Groupe" />
							</li>
							<li class="col-xs-12 col-sm-3">
								<h5>Vol</h5>
								<xsl:value-of select="produit/Vol" />
							</li>
							<li class="col-xs-12 col-sm-3">
								<h5>Déplacement</h5>
								<xsl:value-of select="produit/Deplacement" />
							</li>
							<li class="col-xs-12 col-sm-3">
								<h5>Hébergement</h5>
								<xsl:value-of select="produit/Hebergement" />
							</li>
							<li class="col-xs-12 col-sm-3">
								<h5>Encadrement</h5>
								<xsl:value-of select="produit/Encadrement" />
							</li>
						</ul>
						<!-- / info supp -->

					</div>
					<!-- /onglet 1 -->
					<!-- onglet 2 -->
					<div id="program">
						<nav>
							<ul class="row">
								<li class="Fl hidden-xs">
									<a title="Le voyage" href="#product" class="scroll">Le voyage</a>
								</li>
								<li class="Fl">
									<h3>products</h3>
								</li>
							</ul>
						</nav>
						<div class="tripPrgm">

							<xsl:for-each select="question/row">
								<article class="day row">
									<aside class="col-xs-12 col-sm-3">
										<h5>
											<xsl:value-of select="@name"/>
										</h5>
										<span></span>
										<ul class="dayDetails">
											<xsl:for-each select="dayDetails">
												<xsl:element name="li">
													<xsl:attribute name="class">
														<xsl:value-of select="@class" />
													</xsl:attribute>
													<xsl:value-of select="current()" />
												</xsl:element>
											</xsl:for-each>

										</ul>

									</aside>
									<div class="dayPrgm col-xs-12 col-sm-9">





										<h4>
											<xsl:value-of select="titre" />
										</h4>
										<p></p>
										<p>
											<xsl:value-of select="description" />
										</p>
										<p></p>

									</div>
									<div class="clear"></div>
								</article>
							</xsl:for-each>


							<div class="visible-xs clear">
								<!-- SUR MESURE -->
								<!-- CARTE -->
								<figure id="map">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="map" />
										</xsl:attribute>
										<xsl:attribute name="class">img-responsive</xsl:attribute>
										<xsl:attribute name="title">Itinéraire du voyage</xsl:attribute>
									</xsl:element>


								</figure>
							</div>
						</div>
					</div>
					<!-- /onglet 2 -->


					<!-- onglet 4 -->
				</div>
				<aside class="productAction hidden-xs col-sm-4">
					<!-- PROMOS / RESATOT -->
					<div id="tripInfos">
						<div id="tripPromotion">
							<div class="row">
								<div class="col-xs-6"></div>
								<div class="col-xs-6"></div>
							</div>
						</div>

						<!-- INFOS VOYAGE -->
						<p>
							<span>Voyage :</span>
							<xsl:value-of select="Voyage"/>
						</p>
						<p>
							<span>Style :</span>
							<xsl:value-of select="Style"/>
						</p>
						<p>
							<span>Enfants :</span>
							<xsl:value-of select="Enfants"/>
						</p>
						<!-- ACTIVITES -->
						<p>
							<span>Activités &amp; Thématiques :</span>

							<xsl:for-each select="activite">
								<xsl:value-of select="current()"/>
-
							</xsl:for-each>

						</p>
						<p>
							<span>Temps d'activités :</span>
							<xsl:value-of select="tempsActivites"/>
						</p>

						<!-- NIVEAU TECHNIQUE -->
						<!-- AVIS DESTIS -->

					</div>



					<!-- SUR MESURE -->
					<!-- CARTE -->
					<figure id="map">

						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="map" />
							</xsl:attribute>
							<xsl:attribute name="class">img-responsive</xsl:attribute>
							<xsl:attribute name="title">Itinéraire du voyage</xsl:attribute>
						</xsl:element>



					</figure>
				</aside>
			</div>
		</div>
	</section>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
