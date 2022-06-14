<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	<xsl:param name="numero" select="14"/>
	<xsl:template match="data">



		<html lang="fr">

			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

				<!-- Title -->
				<title>PLURITAL2</title>



				<!-- Bootstrap Core CSS -->
				<link href="../styles/bootstrap.min.css" rel="stylesheet"/>
				<!-- Custom CSS -->
				<link rel="stylesheet" href="../styles/template.css" type="text/css"/>
				<script type="text/javascript" src="../scripts/jquery.js"></script>
				<script type="text/javascript" src="../scripts/chosen.jquery.min.js"></script>
				<script type="text/javascript" src="../scripts/bootstrap-slider.js"></script>
				<script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
				<script type="text/javascript" src="../scripts/template.js"></script>




			</head>

			<body itemscope="" itemtype="https://schema.org/WebPage">


				<header id="header" role="banner">

					<div class="midbar">
						<div class="container">
							<div class="row">
								<a href="../index.xml" title="" id="top" class="col-xs-5 col-sm-3">
									<img src="../images/logo-h-v2.png" alt="" title="" class="img-responsive"/>
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

				<section id="entete-mobile" class="visible-xs">
					<div class="container">
						<div class="row">

						</div>
					</div>
				</section>
				<!-- Inclusion Contenu -->
				<div id="exercicediv">



					<xsl:call-template name="pageHTML"></xsl:call-template>








				</div>



			</body>
		</html>
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
											../images/exo<xsl:value-of select="@numero"/>
.png
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
								<h3>Détails de l'exercice "<xsl:value-of select="titre" />
"</h3>
								<div class="more" style="max-height: none;">
									<xsl:for-each select="description/p">
										<p>•											<xsl:value-of select="current()" />
										</p>
									</xsl:for-each>
								</div>
								<div class="clear"></div>
							</div>

							<!-- Infos supplementaire  -->
							<ul id="infosSupp" class="row">
								<li class="col-xs-12 col-sm-3">

									<a title="L'exercice" href="../exercices/exo{$numero}.zip" class="scroll" download="solution_exercice_{$numero}.zip">
										<h5>Téléchargement</h5>
									</a>

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
