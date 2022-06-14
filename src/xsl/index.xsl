<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:template match="data">

	

		<html lang="fr">
		
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
		
		<!-- Title -->
		<title>PLURITAL2</title>
		
		
		
		<!-- Bootstrap Core CSS -->
		<link href="styles/bootstrap.min.css" rel="stylesheet"></link>
		<!-- Custom CSS -->
		<link rel="stylesheet" href="styles/template.css" type="text/css"></link>
		<script type="text/javascript" src="scripts/jquery.js"></script>
		<script type="text/javascript" src="scripts/chosen.jquery.min.js"></script>
		<script type="text/javascript" src="scripts/bootstrap-slider.js"></script>
		<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
		<script type="text/javascript" src="scripts/template.js"></script>
		
		
		
		<script type="text/javascript" language="javascript" src="scripts/xslt.js"></script>
		<script type="text/javascript" language="javascript" src="scripts/process.js"></script>
		

		</head>
		
		<body onload="loadData()">
		
			<header id="header" role="banner">
		
				<div class="midbar">
					<div class="container">
						<div class="row">
						<a href="index.xml" title="2021/2022-L8DN001-P Document structuré - AMINA DJARFI" id="top" class="col-xs-5 col-sm-3">
							<img src="images/logo-h-v2.png" alt="2021/2022-L8DN001-P Document structuré" title="2021/2022-L8DN001-P Document structuré" class="img-responsive"/>
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
									<div id="menudiv" class="row">
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
																			<xsl:attribute name="href">../pages/exercice<xsl:value-of select="@numero"/>.xml</xsl:attribute>
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
																	<a href="../pages/all.xml" class="portfolio-link mega-menu-item"
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
								
									</div>
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
											<img src="images/hors-sentiers.png"
												alt="" class="img-responsive blockImg"/>
											<div class="bContainer container hidden-xs"
												data-move-effect="top">
												<div class="rsABlock txtCent applat"
													style="display: block; transform: translate3d(0px, 0px, 0px); opacity: 1; transition-property: transform, opacity; transition-duration: 400ms; transition-timing-function: cubic-bezier(0.39, 0.575, 0.565, 1);">
													
												</div>
											</div>
										</div>
									</div>
								</div>
		
							</div>
						</div>
					</div>
				</div>
			</section>
		
		
			<section id="project">
				<div class="container">
					<div class="row">
						<h2 class="text-center">
							<span>En un coup d'oeil !</span>
						</h2>
					</div>
					<div class="row">
						<div class="tabcordion tabbable">
		
							<div class="tab-content col-xs-12 col-sm-8">
								<div id="tabs-4" class="active in tab-pane">
									<div id="exosdiv" class="row">
										<xsl:for-each select="exercice">

											<xsl:if test="@numero = 3 or @numero = 5">
								
												<div class="col-xs-12 col-sm-6 product-item">
													<article>
								
														<xsl:element name="a">
															<xsl:attribute name="href">/pages/exercice<xsl:value-of select="@numero"/>.xml</xsl:attribute>
															<xsl:attribute name="class">product-link</xsl:attribute>
															<figure>
																<xsl:element name="img">
																	<xsl:attribute name="src">
																		../images/exo<xsl:value-of select="@numero"/>.png
																		
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
										
									</div>
									<div class="row">
										<p class="link">
											<a href="pages/all.xml" title="Voir tous les exercices"
												class="onglet-promotion-item">Voir tous <br/>les exercices
											</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		
		
		</body>
		</html>
		



	</xsl:template>
</xsl:stylesheet>