<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:template match="data">

		<html lang="fr">

			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
			
			<!-- Title -->
			<title>PLURITAL2</title>
			
	

			
			<!-- Bootstrap Core CSS -->
			<link href="../styles/bootstrap.min.css" rel="stylesheet"></link>
			<!-- Custom CSS -->
			<link rel="stylesheet" href="../styles/template.css" type="text/css"></link>
			<script type="text/javascript" src="../scripts/jquery.js"></script>
			<script type="text/javascript" src="../scripts/chosen.jquery.min.js"></script>
			<script type="text/javascript" src="../scripts/bootstrap-slider.js"></script>
			<script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
			<script type="text/javascript" src="../scripts/template.js"></script>
			
			</head>
			
			<body>
			
				<header id="header" role="banner">
			
					<div class="midbar">
						<div class="container">
							<div class="row">
								<a href="../index.xml" title="" id="top"
									class="col-xs-5 col-sm-3"> <img src="../images/logo-h-v2.png"
									alt="" title=""
									class="img-responsive"/>
								</a>
			
								<div class="ban hidden-xs col-sm-6">
			
									<div class="row">
										<p class="h1-style hidden-xs">2021/2022-L8DN001-P Document structuré - AMINA DJARFI</p>
									</div>
			
								</div>
			
							</div>
						</div>
					</div>
			
					<!-- inclusion mega menu -->
					<section id="navigation">
						<div class="container">
							<div class="row">
								<div class="navbar navbar-default yamm">
									<div id="navbar-collapse-2" class="navbar-collapse collapse">
										<div id="menudiv" class="row"></div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</header>
				<!-- Inclusion Contenu -->
			
			
				<section id="carouselHP">
					<div class="container">
						<div class="row">
							<div id="slider-with-blocks-1"
								class="royalSlider rsMinW hidden-xs rsHor rsFade">
								<div class="rsOverflow" style="width: 1170px; height: 400px;">
									<div class="rsContainer">
										<div style="z-index: 0; display: block; opacity: 1;"
											class="rsSlide rsActiveSlide">
											<div class="rsContent slide1"
												style="visibility: visible; opacity: 1; transition: opacity 400ms ease-in-out 0s;">
												<img src="../images/hors-sentiers2.png"
													alt="" class="img-responsive blockImg"/>
							
											</div>
										</div>
									</div>
			
								</div>
							</div>
						</div>
					</div>
				</section>
			
			
			
			
			
				<section id="search">
					<div class="container">
						<div class="row">
							<div id="listeResultatRecherche" class="col-sm-9">
			
			
								<div id="exerciceList" class="col-xs-12">
									
									<xsl:for-each select="exercice">
										<article class="exerciceList col-sm-12" itemscope=""
											itemtype="https://schema.org/product">
											<header>
												<h2 itemprop="name">
												<xsl:element name="a">
													<xsl:attribute name="href">exercice<xsl:value-of select="@numero"/>.xml</xsl:attribute>
													<xsl:attribute name="title"><xsl:value-of select="titre"/></xsl:attribute>
													<xsl:attribute name="itemprop">url</xsl:attribute>
													<xsl:value-of select="titre"/>
												</xsl:element>
													
												</h2>
											</header>
											<aside class="col-xs-12 col-sm-12 col-md-4">
												<figure>
													<xsl:element name="a">
														<xsl:attribute name="href">exercice<xsl:value-of select="@numero"/>.xml</xsl:attribute>
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
														<xsl:attribute name="href">exercice<xsl:value-of select="@numero"/>.xml</xsl:attribute>
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
								</div>
								
								<div class="clear"></div>
								<!-- Zone LandingPage -->
								<div id="concept" class="landingpagesDetails"></div>
								<!-- Fin Zone LandingPage -->
							</div>
						</div>
						</div>
				</section>
	

			
			</body>
			</html>



	</xsl:template>
</xsl:stylesheet>
