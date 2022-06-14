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
												../images/exo<xsl:value-of select="@numero"/>.png
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


			<section id="resume" itemscope="">
				<div class="container">
					<div class="row">
						<div class="infos col-xs-12 col-sm-8">
							<!-- TITRE -->
							<h1 itemprop="name">
								
 -								<xsl:value-of select="titre" />
							</h1>

						</div>
						<div class="infosRight col-xs-12 col-sm-4">

							<div class="col-xs-6">

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

	<section id="exerciceMain">
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
									<a title="questions" href="#program" class="scroll">questions</a>
								</li>


							</ul>
						</nav>
						<div></div>
						<div class="content" itemprop="description">
							<h3>Détails de l'exercice "<xsl:value-of select="titre" />"</h3>
							<div class="more" style="max-height: none;">
								<xsl:for-each select="description/p">
									<p>• <xsl:value-of select="current()" /></p>
								</xsl:for-each>
							</div>
							<div class="clear"></div>
						</div>

						<!-- Infos supplementaire  -->
						<ul id="infosSupp" class="row">
							<li class="col-xs-12 col-sm-3">

								<a title="L'exercice" href="../exercices/exo{$numero}.zip" class="scroll" download="solution_exercice_{$numero}.zip"><h5>Téléchargement</h5></a>
								
								<xsl:value-of select="produit/Groupe" />
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
									<a title="L'exercice" href="#product" class="scroll">L'exercice</a>
								</li>
								<li class="Fl">
									<h3>Questions</h3>
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


		
						</div>
					</div>
					<!-- /onglet 2 -->


					<!-- onglet 4 -->
				</div>
		</div>
		</div>
	</section>

</xsl:for-each>

</xsl:template>
</xsl:stylesheet>
