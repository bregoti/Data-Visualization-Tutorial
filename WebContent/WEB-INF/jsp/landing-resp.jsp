<!DOCTYPE html>
<html lang="en-us">
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

		<title> SmartAdmin </title>
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Use the correct meta names below for your web application
			 Ref: http://davidbcalhoun.com/2010/viewport-metatag 
			 
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" media="screen" href="resources/css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
		<link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-production.css">
		<link rel="stylesheet" type="text/css" media="screen" href="resources/css/smartadmin-skins.css">

		<!-- SmartAdmin RTL Support is under construction
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/demo.css"> -->

		<!-- FAVICONS -->
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

	</head>
	<body class="">
		<!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->

		<!-- HEADER -->
		<header id="header">
		
		<div id="logo-group">

				<!-- PLACE YOUR LOGO HERE -->
				<span id="logo"> </span>
				<!-- END LOGO PLACEHOLDER -->
			</div>
		<!-- projects dropdown -->
			<div id="project-context">
				<h1 class="semi-bold">ISSUER & PLAN MARKETPLACE APPLICATION MAP </h1>
			</div>
			<!-- end projects dropdown -->
			<!-- pulled right: nav area -->
			<div class="pull-right">

				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="login.html" title="Sign Out"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->

			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->

		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		<aside id="left-panel">

			<!-- NAVIGATION : This navigation is also responsive

			To make this navigation dynamic please make sure to link the node
			(the reference to the nav > ul) after page load. Or the navigation
			will not initialize.
			-->
			<nav>
				<!-- NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional hre="" links. See documentation for details.
				-->

				<ul>
					<li>
						<a href="index.html" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">Dashboard</span></a>
					</li>
					<li>
						<a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i> <span class="menu-item-parent">Inbox</span><span class="badge pull-right inbox-badge">14</span></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">Graphs</span></a>
						<ul>
							<li>
								<a href="flot.html">Flot Chart</a>
							</li>
							<li>
								<a href="morris.html">Morris Charts</a>
							</li>
							<li>
								<a href="inline-charts.html">Inline Charts</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-table"></i> <span class="menu-item-parent">Tables</span></a>
						<ul>
							<li>
								<a href="table.html">Normal Tables</a>
							</li>
							<li>
								<a href="datatables.html">Data Tables</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-pencil-square-o"></i> <span class="menu-item-parent">Forms</span></a>
						<ul>
							<li class="active">
								<a href="form-elements.html">Smart Form Elements</a>
							</li>
							<li>
								<a href="form-templates.html">Smart Form Layouts</a>
							</li>
							<li>
								<a href="validation.html">Smart Form Validation</a>
							</li>
							<li>
								<a href="bootstrap-forms.html">Bootstrap Form Elements</a>
							</li>
							<li>
								<a href="plugins.html">Form Plugins</a>
							</li>
							<li>
								<a href="wizard.html">Wizards</a>
							</li>
							<li>
								<a href="other-editors.html">Bootstrap Editors</a>
							</li>
							<li>
								<a href="dropzone.html">Dropzone <span class="badge pull-right inbox-badge bg-color-yellow">new</span></a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-desktop"></i> <span class="menu-item-parent">UI Elements</span></a>
						<ul>
							<li>
								<a href="general-elements.html">General Elements</a>
							</li>
							<li>
								<a href="buttons.html">Buttons</a>
							</li>
							<li>
								<a href="#">Icons</a>
								<ul>
									<li>
										<a href="fa.html"><i class="fa fa-plane"></i> Font Awesome</a>
									</li>	
									<li>
										<a href="glyph.html"><i class="glyphicon glyphicon-plane"></i> Glyph Icons </a>
									</li>
								</ul>
							</li>
							<li>
								<a href="grid.html">Grid</a>
							</li>
							<li>
								<a href="treeview.html">Tree View</a>
							</li>
							<li>
								<a href="nestable-list.html">Nestable Lists</a>
							</li>
							<li>
								<a href="jqui.html">JQuery UI</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-folder-open"></i> <span class="menu-item-parent">6 Level Navigation</span></a>
						<ul>
							<li>
								<a href="#"><i class="fa fa-fw fa-folder-open"></i> 2nd Level</a>
								<ul>
									<li>
										<a href="#"><i class="fa fa-fw fa-folder-open"></i> 3ed Level </a>
										<ul>
											<li>
												<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
											</li>
											<li>
												<a href="#"><i class="fa fa-fw fa-folder-open"></i> 4th Level</a>
												<ul>
													<li>
														<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
													</li>
													<li>
														<a href="#"><i class="fa fa-fw fa-folder-open"></i> 5th Level</a>
														<ul>
															<li>
																<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
															</li>
															<li>
																<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
															</li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<a href="#"><i class="fa fa-fw fa-folder-open"></i> Folder</a>

								<ul>
									<li>
										<a href="#"><i class="fa fa-fw fa-folder-open"></i> 3ed Level </a>
										<ul>
											<li>
												<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
											</li>
											<li>
												<a href="#"><i class="fa fa-fw fa-file-text"></i> File</a>
											</li>
										</ul>
									</li>
								</ul>

							</li>
						</ul>
					</li>
					<li>
						<a href="calendar.html"><i class="fa fa-lg fa-fw fa-calendar"><em>3</em></i> <span class="menu-item-parent">Calendar</span></a>
					</li>
					<li>
						<a href="widgets.html"><i class="fa fa-lg fa-fw fa-list-alt"></i> <span class="menu-item-parent">Widgets</span></a>
					</li>
					<li>
						<a href="gallery.html"><i class="fa fa-lg fa-fw fa-picture-o"></i> <span class="menu-item-parent">Gallery</span></a>
					</li>
					<li>
						<a href="gmap-xml.html"><i class="fa fa-lg fa-fw fa-map-marker"></i> <span class="menu-item-parent">Google Map Skins</span><span class="badge bg-color-greenLight pull-right inbox-badge">9</span></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-windows"></i> <span class="menu-item-parent">Miscellaneous</span></a>
						<ul>
							<li>
								<a href="typography.html">Typography</a>
							</li>
							<li>
								<a href="pricing-table.html">Pricing Tables</a>
							</li>
							<li>
								<a href="invoice.html">Invoice</a>
							</li>
							<li>
								<a href="login.html" target="_top">Login</a>
							</li>
							<li>
								<a href="register.html" target="_top">Register</a>
							</li>
							<li>
								<a href="lock.html" target="_top">Locked Screen</a>
							</li>
							<li>
								<a href="error404.html">Error 404</a>
							</li>
							<li>
								<a href="error500.html">Error 500</a>
							</li>
							<li>
								<a href="blank_.html">Blank Page</a>
							</li>
							<li>
								<a href="email-template.html">Email Template</a>
							</li>
							<li>
								<a href="search.html">Search Page</a>
							</li>
							<li>
								<a href="ckeditor.html">CK Editor</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-file"></i> <span class="menu-item-parent">Other Pages</span></a>
						<ul>
							<li>
								<a href="forum.html">Forum Layout</a>
							</li>
							<li>
								<a href="profile.html">Profile</a>
							</li>
							<li>
								<a href="timeline.html">Timeline</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
			<span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>

		</aside>
		<!-- END NAVIGATION -->

		<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true"><i class="fa fa-refresh"></i></span> </span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>
						Forms
					</li>
					<li>
						Smart Form Elements
					</li>
				</ol>
				<!-- end breadcrumb -->

				<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->

			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">

				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
						<h1 class="page-title txt-color-blueDark">
							<i class="fa fa-edit fa-fw "></i> 
								Forms 
							<span>> 
								Form Elements
							</span>
						</h1>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
						<ul id="sparks" class="">
							<li class="sparks-info">
								<h5> My Income <span class="txt-color-blue">$47,171</span></h5>
								<div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
									1300, 1877, 2500, 2577, 2000, 2100, 3000, 2700, 3631, 2471, 2700, 3631, 2471
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Traffic <span class="txt-color-purple"><i class="fa fa-arrow-circle-up" data-rel="bootstrap-tooltip" title="Increased"></i>&nbsp;45%</span></h5>
								<div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
							<li class="sparks-info">
								<h5> Site Orders <span class="txt-color-greenDark"><i class="fa fa-shopping-cart"></i>&nbsp;2447</span></h5>
								<div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
									110,150,300,130,400,240,220,310,220,300, 270, 210
								</div>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="row">
					<div class="col-sm-12">
						
						<div class="well">
							<button class="close" data-dismiss="alert">
									�
							</button>
							<h1 class="semi-bold">What are "Smart Form Elements?"</h1>
						<p> 
							SmartAdmin comes with a fully customized grid system catered specifically for building form layouts. Its not technically "better" than the bootstrap 3 built in grid system, 
							but rather more simplified for rapid form layout and faster development. Idealy you would use either the <strong>bootstrap</strong> grid or the <strong>smart-form</strong> grid, 
							when building your form layouts. It is important not to mix elements from two seperate classes as it can cause conflict.  
						</p>
						
						<p>
							You can explore some of the <a href="#ajax/form-templates.html" title="Go to Bootstrap Forms">layouts</a> made using Smart Forms grid system or if you are not comfortable with this grid system you can simply stick to the default <a href="#ajax/bootstrap-forms.html" title="Go to Bootstrap Forms">Bootstrap forms</a> 
						</p>
						</div>
				
						
					</div>
				</div>
				
				<!-- widget grid -->
				<section id="widget-grid" class="">
				
					<!-- START ROW -->
					<div class="row">
				
						<!-- NEW COL START -->
						<article class="col-sm-12 col-md-12 col-lg-12">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="wid-id-0" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
									<h2>Form Grid </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<form class="smart-form">
											<header>
												Responsive grid system
											</header>
				
											<fieldset>
												<div class="row">
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
												</div>
				
												<div class="row">
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
												</div>
				
												<div class="row">
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
												</div>
				
												<div class="row">
													<section class="col col-6">
														<label class="input">
															<input type="text" placeholder="6/12">
														</label>
													</section>
													<section class="col col-6">
														<label class="input">
															<input type="text" placeholder="6/12">
														</label>
													</section>
												</div>
				
												<section>
													<label class="input">
														<input type="text" placeholder="12/12">
													</label>
												</section>
											</fieldset>
				
											<fieldset>
												<div class="row">
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
													<section class="col col-3">
														<label class="input">
															<input type="text" placeholder="3/12">
														</label>
													</section>
												</div>
				
												<div class="row">
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
												</div>
				
												<div class="row">
													<section class="col col-2">
														<label class="input">
															<input type="text" placeholder="2/12">
														</label>
													</section>
													<section class="col col-4">
														<label class="input">
															<input type="text" placeholder="4/12">
														</label>
													</section>
													<section class="col col-6">
														<label class="input">
															<input type="text" placeholder="6/12">
														</label>
													</section>
												</div>
											</fieldset>
				
											<footer>
												<button type="submit" class="btn btn-primary">
													Submit
												</button>
												<button type="button" class="btn btn-default" onclick="window.history.back();">
													Back
												</button>
											</footer>
										</form>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- END COL -->
				
					</div>
				
					<!-- END ROW -->
				
					<!-- START ROW -->
				
					<div class="row">
				
						<!-- NEW COL START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
									<h2>Basic Form Elements </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<form class="smart-form">
											<header>
												Standard Form Header
											</header>
				
											<fieldset>
												
												<section>
													<label class="label">Extra Small text input</label>
													<label class="input">
														<input type="text" class="input-xs">
													</label>
												</section>
				
												<section>
													<label class="label">Small text input</label>
													<label class="input">
														<input type="text" class="input-sm">
													</label>
												</section>
				
												<section>
													<label class="label">Default text input with maxlength</label>
													<label class="input">
														<input type="text" maxlength="10">
													</label>
													<div class="note">
														<strong>Maxlength</strong> is automatically added via the "maxlength='#'" attribute
													</div>
												</section>
																				
												<section>
													<label class="label">Large text input</label>
													<label class="input">
														<input type="text" class="input-lg">
													</label>
												</section>
											
											</fieldset>
											
											<fieldset>
													
												<section>
													<label class="label">File input</label>
													<div class="input input-file">
														<span class="button"><input type="file" id="file" name="file" onchange="this.parentNode.nextSibling.value = this.value">Browse</span><input type="text" placeholder="Include some files" readonly="">
													</div>
												</section>
				
												<section>
													<label class="label">Input with autocomlete</label>
													<label class="input">
														<input type="text" list="list">
														<datalist id="list">
															<option value="Alexandra">Alexandra</option>
															<option value="Alice">Alice</option>
															<option value="Anastasia">Anastasia</option>
															<option value="Avelina">Avelina</option>
															<option value="Basilia">Basilia</option>
															<option value="Beatrice">Beatrice</option>
															<option value="Cassandra">Cassandra</option>
															<option value="Cecil">Cecil</option>
															<option value="Clemencia">Clemencia</option>
															<option value="Desiderata">Desiderata</option>
															<option value="Dionisia">Dionisia</option>
															<option value="Edith">Edith</option>
															<option value="Eleanora">Eleanora</option>
															<option value="Elizabeth">Elizabeth</option>
															<option value="Emma">Emma</option>
															<option value="Felicia">Felicia</option>
															<option value="Florence">Florence</option>
															<option value="Galiana">Galiana</option>
															<option value="Grecia">Grecia</option>
															<option value="Helen">Helen</option>
															<option value="Helewisa">Helewisa</option>
															<option value="Idonea">Idonea</option>
															<option value="Isabel">Isabel</option>
															<option value="Joan">Joan</option>
															<option value="Juliana">Juliana</option>
															<option value="Karla">Karla</option>
															<option value="Karyn">Karyn</option>
															<option value="Kate">Kate</option>
															<option value="Lakisha">Lakisha</option>
															<option value="Lana">Lana</option>
															<option value="Laura">Laura</option>
															<option value="Leona">Leona</option>
															<option value="Mandy">Mandy</option>
															<option value="Margaret">Margaret</option>
															<option value="Maria">Maria</option>
															<option value="Nanacy">Nanacy</option>
															<option value="Nicole">Nicole</option>
															<option value="Olga">Olga</option>
															<option value="Pamela">Pamela</option>
															<option value="Patricia">Patricia</option>
															<option value="Qiana">Qiana</option>
															<option value="Rachel">Rachel</option>
															<option value="Ramona">Ramona</option>
															<option value="Samantha">Samantha</option>
															<option value="Sandra">Sandra</option>
															<option value="Tanya">Tanya</option>
															<option value="Teresa">Teresa</option>
															<option value="Ursula">Ursula</option>
															<option value="Valerie">Valerie</option>
															<option value="Veronica">Veronica</option>
															<option value="Wilma">Wilma</option>
															<option value="Yasmin">Yasmin</option>
															<option value="Zelma">Zelma</option>
														</datalist> </label>
													<div class="note">
														<strong>Note:</strong> works in Chrome, Firefox, Opera and IE10.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												
												<section>
													<label class="label">Select Small</label>
													<label class="select">
														<select class="input-sm">
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
												
												<section>
													<label class="label">Select default</label>
													<label class="select">
														<select>
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
				
												<section>
													<label class="label">Select Large</label>
													<label class="select">
														<select class="input-lg">
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
				
												<section>
													<label class="label">Multiple select</label>
													<label class="select select-multiple">
														<select multiple="" class="custom-scroll">
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
															<option value="5">Basilia</option>
															<option value="6">Beatrice</option>
															<option value="7">Cassandra</option>
															<option value="8">Clemencia</option>
															<option value="9">Desiderata</option>
														</select> </label>
													<div class="note">
														<strong>Note:</strong> hold down the ctrl/cmd button to select multiple options.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Textarea</label>
													<label class="textarea"> 										
														<textarea rows="3" class="custom-scroll"></textarea> 
													</label>
													<div class="note">
														<strong>Note:</strong> height of the textarea depends on the rows attribute.
													</div>
												</section>
				
												<section>
													<label class="label">Textarea resizable</label>
													<label class="textarea textarea-resizable"> 										
														<textarea rows="3" class="custom-scroll"></textarea> 
													</label>
												</section>
				
												<section>
													<label class="label">Textarea expandable</label>
													<label class="textarea textarea-expandable"> 										
														<textarea rows="3" class="custom-scroll"></textarea> 
													</label>
													<div class="note">
														<strong>Note:</strong> expands on focus.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Columned radios</label>
													<div class="row">
														<div class="col col-4">
															<label class="radio">
																<input type="radio" name="radio" checked="checked">
																<i></i>Alexandra</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Alice</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Anastasia</label>
														</div>
														<div class="col col-4">
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Avelina</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Basilia</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Beatrice</label>
														</div>
														<div class="col col-4">
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Cassandra</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Clemencia</label>
															<label class="radio">
																<input type="radio" name="radio">
																<i></i>Desiderata</label>
														</div>
													</div>
												</section>
				
												<section>
													<label class="label">Inline radios</label>
													<div class="inline-group">
														<label class="radio">
															<input type="radio" name="radio-inline" checked="checked">
															<i></i>Alexandra</label>
														<label class="radio">
															<input type="radio" name="radio-inline">
															<i></i>Alice</label>
														<label class="radio">
															<input type="radio" name="radio-inline">
															<i></i>Anastasia</label>
														<label class="radio">
															<input type="radio" name="radio-inline">
															<i></i>Avelina</label>
														<label class="radio">
															<input type="radio" name="radio-inline">
															<i></i>Beatrice</label>
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Columned checkboxes</label>
													<div class="row">
														<div class="col col-4">
															<label class="checkbox">
																<input type="checkbox" name="checkbox" checked="checked">
																<i></i>Alexandra</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Alice</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Anastasia</label>
														</div>
														<div class="col col-4">
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Avelina</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Basilia</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Beatrice</label>
														</div>
														<div class="col col-4">
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Cassandra</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Clemencia</label>
															<label class="checkbox">
																<input type="checkbox" name="checkbox">
																<i></i>Desiderata</label>
														</div>
													</div>
												</section>
				
												<section>
													<label class="label">Inline checkboxes</label>
													<div class="inline-group">
														<label class="checkbox">
															<input type="checkbox" name="checkbox-inline" checked="checked">
															<i></i>Alexandra</label>
														<label class="checkbox">
															<input type="checkbox" name="checkbox-inline">
															<i></i>Alice</label>
														<label class="checkbox">
															<input type="checkbox" name="checkbox-inline">
															<i></i>Anastasia</label>
														<label class="checkbox">
															<input type="checkbox" name="checkbox-inline">
															<i></i>Avelina</label>
														<label class="checkbox">
															<input type="checkbox" name="checkbox-inline">
															<i></i>Beatrice</label>
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<div class="row">
													<section class="col col-5">
														<label class="label">Radio Toggles</label>
														<label class="toggle">
															<input type="radio" name="radio-toggle" checked="checked">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Alexandra</label>
														<label class="toggle">
															<input type="radio" name="radio-toggle">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Anastasia</label>
														<label class="toggle">
															<input type="radio" name="radio-toggle">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Avelina</label>
													</section>
				
													<div class="col col-2"></div>
				
													<section class="col col-5">
														<label class="label">Checkbox Toggles</label>
														<label class="toggle">
															<input type="checkbox" name="checkbox-toggle" checked="checked">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Cassandra</label>
														<label class="toggle">
															<input type="checkbox" name="checkbox-toggle">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Clemencia</label>
														<label class="toggle">
															<input type="checkbox" name="checkbox-toggle">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Desiderata</label>
													</section>
												</div>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Ratings with different icons</label>
													<div class="rating">
														<input type="radio" name="stars-rating" id="stars-rating-5">
														<label for="stars-rating-5"><i class="fa fa-star"></i></label>
														<input type="radio" name="stars-rating" id="stars-rating-4">
														<label for="stars-rating-4"><i class="fa fa-star"></i></label>
														<input type="radio" name="stars-rating" id="stars-rating-3">
														<label for="stars-rating-3"><i class="fa fa-star"></i></label>
														<input type="radio" name="stars-rating" id="stars-rating-2">
														<label for="stars-rating-2"><i class="fa fa-star"></i></label>
														<input type="radio" name="stars-rating" id="stars-rating-1">
														<label for="stars-rating-1"><i class="fa fa-star"></i></label>
														Stars
													</div>
				
													<div class="rating">
														<input type="radio" name="trophies-rating" id="trophies-rating-7">
														<label for="trophies-rating-7"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-6">
														<label for="trophies-rating-6"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-5">
														<label for="trophies-rating-5"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-4">
														<label for="trophies-rating-4"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-3">
														<label for="trophies-rating-3"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-2">
														<label for="trophies-rating-2"><i class="fa fa-trophy"></i></label>
														<input type="radio" name="trophies-rating" id="trophies-rating-1">
														<label for="trophies-rating-1"><i class="fa fa-trophy"></i></label>
														Trophies
													</div>
				
													<div class="rating">
														<input type="radio" name="asterisks-rating" id="asterisks-rating-10">
														<label for="asterisks-rating-10"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-9">
														<label for="asterisks-rating-9"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-8">
														<label for="asterisks-rating-8"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-7">
														<label for="asterisks-rating-7"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-6">
														<label for="asterisks-rating-6"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-5">
														<label for="asterisks-rating-5"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-4">
														<label for="asterisks-rating-4"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-3">
														<label for="asterisks-rating-3"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-2">
														<label for="asterisks-rating-2"><i class="fa fa-asterisk"></i></label>
														<input type="radio" name="asterisks-rating" id="asterisks-rating-1">
														<label for="asterisks-rating-1"><i class="fa fa-asterisk"></i></label>
														Asterisks
													</div>
													<div class="note">
														<strong>Note:</strong> you can use more than 300 vector icons for rating.
													</div>
												</section>
											</fieldset>
				
											<footer>
												<button type="submit" class="btn btn-primary">
													Submit
												</button>
												<button type="button" class="btn btn-default" onclick="window.history.back();">
													Back
												</button>
											</footer>
										</form>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- END COL -->
				
						<!-- NEW COL START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="wid-id-2" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
									<h2>Disabled States </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<form class="smart-form">
											<header>
												Disabled States
											</header>
				
											<fieldset>
												
												<section>
													<label class="label">Extra Small text input</label>
													<label class="input state-disabled">
														<input type="text" class="input-xs" disabled="disabled">
													</label>
												</section>
				
												<section>
													<label class="label">Small text input</label>
													<label class="input state-disabled">
														<input type="text" class="input-sm" disabled="disabled">
													</label>
												</section>
				
												<section>
													<label class="label">Default text input with maxlength</label>
													<label class="input state-disabled">
														<input type="text" maxlength="10" disabled="disabled">
													</label>
													<div class="note">
														<strong>Maxlength</strong> is automatically added via the "maxlength='#'" attribute
													</div>
												</section>
																				
												<section>
													<label class="label">Large text input</label>
													<label class="input state-disabled">
														<input type="text" class="input-lg" disabled="disabled">
													</label>
												</section>
											
											</fieldset>
				
											<fieldset>
												
												<section>
													<label class="label">File input (disabled)</label>
													<label for="file2" class="input input-file state-disabled">
														<span class="button disabled">
															Browse
														</span>
														<input id="file2" type="text" disabled="disabled">
													</label>
												</section>
				
												<section>
													<label class="label">Input with autocomlete (disabled)</label>
													<label class="input state-disabled">
														<input type="text" list="list" disabled="disabled">
													</label>	
													<div class="note">
														<strong>Note:</strong> works in Chrome, Firefox, Opera and IE10.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Select Small (disabled)</label>
													<label class="select state-disabled">
														<select class="input-sm" disabled="disabled">
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
				
												<section>
													<label class="label">Select Small (disabled)</label>
													<label class="select state-disabled">
														<select class="input-sm" disabled="disabled">
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
												
												<section>
													<label class="label">Select default (disabled)</label>
													<label class="select state-disabled">
														<select class="input-lg"  disabled="disabled">
															<option value="0">Choose name</option>
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
														</select> <i></i> </label>
												</section>
				
												<section>
													<label class="label">Multiple select (disabled)</label>
													<label class="select select-multiple state-disabled">
														<select multiple="" class="custom-scroll" disabled="disabled">
															<option value="1">Alexandra</option>
															<option value="2">Alice</option>
															<option value="3">Anastasia</option>
															<option value="4">Avelina</option>
															<option value="5">Basilia</option>
															<option value="6">Beatrice</option>
															<option value="7">Cassandra</option>
															<option value="8">Clemencia</option>
															<option value="9">Desiderata</option>
														</select> </label>
													<div class="note">
														<strong>Note:</strong> hold down the ctrl/cmd button to select multiple options.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Textarea (disabled)</label>
													<label class="textarea state-disabled"> 										<textarea rows="3" class="custom-scroll" disabled="disabled"></textarea> </label>
													<div class="note">
														<strong>Note:</strong> height of the textarea depends on the rows attribute.
													</div>
												</section>
				
												<section>
													<label class="label">Textarea resizable (disabled)</label>
													<label class="textarea textarea-resizable state-disabled"> 										<textarea rows="3" class="custom-scroll" disabled="disabled"></textarea> </label>
												</section>
				
												<section>
													<label class="label">Textarea expandable (disabled)</label>
													<label class="textarea textarea-expandable state-disabled"> 										<textarea rows="3" class="custom-scroll" disabled="disabled"></textarea> </label>
													<div class="note">
														<strong>Note:</strong> expands on focus.
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Columned radios (disabled)</label>
													<div class="row">
														<div class="col col-4">
															<label class="radio state-disabled">
																<input type="radio" name="radio" checked="checked" disabled="disabled">
																<i></i>Alexandra</label>
															<label class="radio state-disabled">
																<input type="radio" name="radio" disabled="disabled">
																<i></i>Alice</label>
															<label class="radio state-disabled">
																<input type="radio" name="radio" disabled="disabled">
																<i></i>Anastasia</label>
														</div>
													</div>
												</section>
				
												<section>
													<label class="label">Inline radios (disabled)</label>
													<div class="inline-group">
														<label class="radio state-disabled">
															<input type="radio" name="radio-inline" checked="checked">
															<i></i>Alexandra</label>
														<label class="radio state-disabled">
															<input type="radio" name="radio-inline" disabled="disabled">
															<i></i>Alice</label>
														<label class="radio state-disabled">
															<input type="radio" name="radio-inline" disabled="disabled">
															<i></i>Anastasia</label>
				
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Columned checkboxes (disabled)</label>
													<div class="row">
														<div class="col col-4">
															<label class="checkbox state-disabled">
																<input type="checkbox" name="checkbox" checked="checked" disabled="disabled">
																<i></i>Alexandra</label>
															<label class="checkbox state-disabled">
																<input type="checkbox" name="checkbox" disabled="disabled">
																<i></i>Alice</label>
															<label class="checkbox state-disabled">
																<input type="checkbox" name="checkbox" disabled="disabled">
																<i></i>Anastasia</label>
														</div>
													</div>
												</section>
				
												<section>
													<label class="label">Inline checkboxes (disabled)</label>
													<div class="inline-group">
														<label class="checkbox state-disabled">
															<input type="checkbox" name="checkbox-inline" checked="checked" disabled="disabled">
															<i></i>Alexandra</label>
														<label class="checkbox state-disabled">
															<input type="checkbox" name="checkbox-inline" disabled="disabled">
															<i></i>Alice</label>
														<label class="checkbox state-disabled">
															<input type="checkbox" name="checkbox-inline" disabled="disabled">
															<i></i>Anastasia</label>
				
													</div>
												</section>
											</fieldset>
				
											<fieldset>
												<div class="row">
													<section class="col col-5">
														<label class="label">Radio Toggles (disabled)</label>
														<label class="toggle state-disabled">
															<input type="radio" name="radio-toggle" checked="checked">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Alexandra</label>
														<label class="toggle state-disabled">
															<input type="radio" name="radio-toggle" disabled="disabled">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Anastasia</label>
														<label class="toggle state-disabled">
															<input type="radio" name="radio-toggle" disabled="disabled">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Avelina</label>
													</section>
				
													<div class="col col-2"></div>
				
													<section class="col col-5">
														<label class="label">Checkbox Toggles (disabled)</label>
														<label class="toggle state-disabled">
															<input type="checkbox" name="checkbox-toggle" checked="checked" disabled="disabled">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Cassandra</label>
														<label class="toggle state-disabled">
															<input type="checkbox" name="checkbox-toggle" disabled="disabled">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Clemencia</label>
														<label class="toggle state-disabled">
															<input type="checkbox" name="checkbox-toggle" disabled="disabled">
															<i data-swchon-text="ON" data-swchoff-text="OFF"></i>Desiderata</label>
													</section>
												</div>
											</fieldset>
				
											<footer>
												<button type="submit" class="btn btn-primary">
													Submit
												</button>
												<button type="button" class="btn btn-default" onclick="window.history.back();">
													Back
												</button>
											</footer>
										</form>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- END COL -->
				
					</div>
				
					<!-- END ROW -->
				
					<!-- NEW ROW -->
				
					<div class="row">
				
				
						<!-- NEW COL START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
									<h2>Smart Tooltips (left) </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<form class="smart-form">
											<header>
												Tooltips (with icon)
											</header>
				
											<fieldset>
												<section>
													<label class="label">Text input with top-right tooltip</label>
													<label class="input"> <i class="icon-append fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-top-right">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Text input with bottom-right tooltip</label>
													<label class="input"> <i class="icon-append fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-bottom-right">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Text input with right tooltip</label>
													<label class="input"> <i class="icon-append fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-right">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
											</fieldset>
				
											<fieldset>
												<section>
													<label class="label">Textarea with top-right tooltip</label>
													<label class="textarea"> <i class="icon-append fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea>
														<b class="tooltip tooltip-top-right"> 
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information </b> 
													</label>
												</section>
				
												<section>
													<label class="label">Textarea with bottom-right tooltip</label>
													<label class="textarea"> <i class="icon-append fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea> 
														<b class="tooltip tooltip-bottom-right"><i class="fa fa-warning txt-color-teal"></i> Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Textarea with right tooltip</label>
													<label class="textarea"> <i class="icon-append fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea> 
														<b class="tooltip tooltip-right"><i class="fa fa-warning txt-color-teal"></i> Some helpful information</b> 
													</label>
												</section>
				
											</fieldset>
				
										</form>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- END COL -->
				
						<!-- NEW COL START -->
						<article class="col-sm-12 col-md-12 col-lg-6">
				
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-4" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
									<h2>Smart Tooltips (right) </h2>
				
								</header>
				
								<!-- widget div-->
								<div>
				
									<!-- widget edit box -->
									<div class="jarviswidget-editbox">
										<!-- This area used as dropdown edit box -->
				
									</div>
									<!-- end widget edit box -->
				
									<!-- widget content -->
									<div class="widget-body no-padding">
				
										<form class="smart-form">
											<header>
												Tooltips (with icon)
											</header>
				
											<fieldset>
				
												<section>
													<label class="label">Text input with top-left tooltip</label>
													<label class="input"> <i class="icon-prepend fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-top-left">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Text input with bottom-left tooltip</label>
													<label class="input"> <i class="icon-prepend fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-bottom-left">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Text input with left tooltip</label>
													<label class="input"> <i class="icon-prepend fa fa-question-circle"></i>
														<input type="text" placeholder="Focus to view the tooltip">
														<b class="tooltip tooltip-left">
															<i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
											</fieldset>
				
											<fieldset>
				
												<section>
													<label class="label">Textarea with top-left tooltip</label>
													<label class="textarea"> <i class="icon-prepend fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea> 
														<b class="tooltip tooltip-top-left"> <i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
												<section>
													<label class="label">Textarea with bottom-left tooltip</label>
													<label class="textarea"> <i class="icon-prepend fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea> 
														<b class="tooltip tooltip-bottom-left"><i class="fa fa-warning txt-color-teal"></i> 
															Some helpful information</b> 
													</label>
												</section>
				
				
												<section>
													<label class="label">Textarea with left tooltip</label>
													<label class="textarea"> <i class="icon-prepend fa fa-question-circle"></i> 										
														<textarea rows="3" placeholder="Focus to view the tooltip"></textarea> <b class="tooltip tooltip-left">
															<i class="fa fa-warning txt-color-teal"></i> Some helpful information</b> 
													</label>
												</section>
											</fieldset>
				
										</form>
				
									</div>
									<!-- end widget content -->
				
								</div>
								<!-- end widget div -->
				
							</div>
							<!-- end widget -->
				
						</article>
						<!-- END COL -->
				
					</div>
				
					<!-- END ROW-->
				
				</section>
				<!-- end widget grid -->


			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->

		<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		<div id="shortcut">
			<ul>
				<li>
					<a href="#inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<li>
					<a href="#calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<li>
					<a href="#gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<li>
					<a href="#invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<li>
					<a href="#gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<li>
					<a href="javascript:void(0);" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<!-- <script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script> -->

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="resources/js/libs/jquery-2.0.2.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="resources/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="resources/js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="resources/js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="resources/js/smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="resources/js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="resources/js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="resources/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="resources/js/plugin/fastclick/fastclick.js"></script>

		<!--[if IE 7]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- Demo purpose only -->
		<!-- <script src="js/demo.js"></script> -->

		<!-- MAIN APP JS FILE -->
		<script src="resources/js/app.js"></script>

		<!-- PAGE RELATED PLUGIN(S) 
		<script src="..."></script>-->

		

		<script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();
		
		})

		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
				_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>

	</body>

</html>