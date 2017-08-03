  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="">
<meta name="wassim" content="">
<meta name="robots" content="noindex, nofollow">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Icons -->
<!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
<link rel="shortcut icon" href="assets/img/favicons/favicon.png">

<link rel="icon" type="image/png"
	href="assets/img/favicons/favicon-16x16.png" sizes="16x16">
<link rel="icon" type="image/png"
	href="assets/img/favicons/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png"
	href="assets/img/favicons/favicon-96x96.png" sizes="96x96">
<link rel="icon" type="image/png"
	href="assets/img/favicons/favicon-160x160.png" sizes="160x160">
<link rel="icon" type="image/png"
	href="assets/img/favicons/favicon-192x192.png" sizes="192x192">

<link rel="apple-touch-icon" sizes="57x57"
	href="assets/img/favicons/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="assets/img/favicons/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/img/favicons/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/favicons/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/img/favicons/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/img/favicons/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/img/favicons/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/img/favicons/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="assets/img/favicons/apple-touch-icon-180x180.png">
<!-- END Icons -->

<!-- Stylesheets -->

<!-- Page JS Plugins CSS -->
<link rel="stylesheet"
	href="assets/js/plugins/datatables/jquery.dataTables.min.css">

<!-- Web fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600,700%7COpen+Sans:300,400,400italic,600,700">

<!-- Bootstrap and OneUI CSS framework -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" id="css-main" href="assets/css/oneui.css">
<style type="text/css">
.alert-box {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	text-align: center;
}

.success {
	color: #3c763d;
	background-color: #dff0d8;
	border-color: #d6e9c6;
	display: none;
}

.failure {
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
	display: none;
}

.warning {
	color: #8a6d3b;
	background-color: #fcf8e3;
	border-color: #faebcc;
	display: none;
}
</style>

<!-- You can include a specific file from css/themes/ folder to alter the default color theme of the template. eg: -->
<!-- <link rel="stylesheet" id="css-theme" href="assets/css/themes/flat.min.css"> -->
<!-- END Stylesheets -->
</head>
<body>

	<!-- Page Container -->
	<!--
            Available Classes:

            'enable-cookies'             Remembers active color theme between pages (when set through color theme list)

            'sidebar-l'                  Left Sidebar and right Side Overlay
            'sidebar-r'                  Right Sidebar and left Side Overlay
            'sidebar-mini'               Mini hoverable Sidebar (> 991px)
            'sidebar-o'                  Visible Sidebar by default (> 991px)
            'sidebar-o-xs'               Visible Sidebar by default (< 992px)

            'side-overlay-hover'         Hoverable Side Overlay (> 991px)
            'side-overlay-o'             Visible Side Overlay by default (> 991px)

            'side-scroll'                Enables custom scrolling on Sidebar and Side Overlay instead of native scrolling (> 991px)

            'header-navbar-fixed'        Enables fixed header
        -->
	<div id="page-container"
		class="sidebar-l sidebar-o side-scroll header-navbar-fixed">


		<!-- Sidebar -->
		<nav id="sidebar">
			<!-- Sidebar Scroll Container -->
			<div id="sidebar-scroll">
				<!-- Sidebar Content -->
				<!-- Adding .sidebar-mini-hide to an element will hide it when the sidebar is in mini mode -->
				<div class="sidebar-content">
					<!-- Side Header -->
					<div class="side-header side-content bg-white-op">
						<!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
						<button
							class="btn btn-link text-gray pull-right hidden-md hidden-lg"
							type="button" data-toggle="layout" data-action="sidebar_close">
							<i class="fa fa-times"></i>
						</button>
						<!-- Themes functionality initialized in App() -> uiHandleTheme() -->
						<div class="btn-group pull-right">
							<button class="btn btn-link text-gray dropdown-toggle"
								data-toggle="dropdown" type="button">
								<i class="si si-drop"></i>
							</button>
							<ul
								class="dropdown-menu dropdown-menu-right font-s13 sidebar-mini-hide">
								<li><a data-toggle="theme" data-theme="default"
									tabindex="-1" href="javascript:void(0)"> <i
										class="fa fa-circle text-default pull-right"></i> <span
										class="font-w600">Default</span>
								</a></li>
								<li><a data-toggle="theme"
									data-theme="assets/css/themes/amethyst.min.css" tabindex="-1"
									href="javascript:void(0)"> <i
										class="fa fa-circle text-amethyst pull-right"></i> <span
										class="font-w600">Amethyst</span>
								</a></li>
								<li><a data-toggle="theme"
									data-theme="assets/css/themes/city.min.css" tabindex="-1"
									href="javascript:void(0)"> <i
										class="fa fa-circle text-city pull-right"></i> <span
										class="font-w600">City</span>
								</a></li>
								<li><a data-toggle="theme"
									data-theme="assets/css/themes/flat.min.css" tabindex="-1"
									href="javascript:void(0)"> <i
										class="fa fa-circle text-flat pull-right"></i> <span
										class="font-w600">Flat</span>
								</a></li>
								<li><a data-toggle="theme"
									data-theme="assets/css/themes/modern.min.css" tabindex="-1"
									href="javascript:void(0)"> <i
										class="fa fa-circle text-modern pull-right"></i> <span
										class="font-w600">Modern</span>
								</a></li>
								<li><a data-toggle="theme"
									data-theme="assets/css/themes/smooth.min.css" tabindex="-1"
									href="javascript:void(0)"> <i
										class="fa fa-circle text-smooth pull-right"></i> <span
										class="font-w600">Smooth</span>
								</a></li>
							</ul>
						</div>
						<a class="h5 text-white" href="index.html"> <span
							class="h4 font-w600 sidebar-mini-hide"> <img
								src="csindex/images/logopro.png"
								style="height: 67px; width: 150px;">
						</span>
						</a>
					</div>
					<!-- END Side Header -->

					<!-- Side Content -->
					<div class="side-content">
						<ul class="nav-main">
							<li><a href="base_pages_dashboard.html"><i
									class="si si-speedometer"></i><span class="sidebar-mini-hide">Dashboard</span></a>
							</li>
							<li class="nav-main-heading"><span class="sidebar-mini-hide">User
									Interface</span></li>
							<li><a class="" href="addRec.jsp"><i class="si si-badge"></i><span
									class="sidebar-mini-hide">Ajouter Réclamation</span></a></li>
							<li><a class="" href="list"><i class="si si-grid"></i><span
									class="sidebar-mini-hide">Consulter Réclamation</span></a></li>
							<li><a class="nav-submenu" data-toggle="nav-submenu"
								href="#"><i class="si si-note"></i><span
									class="sidebar-mini-hide">Forms</span></a>
								<ul>
									<li><a href="base_forms_premade.html">Pre-made</a></li>
									<li><a href="base_forms_elements.html">Elements</a></li>
									<li><a href="base_forms_pickers_more.html">Pickers
											&amp; More</a></li>
									<li><a href="base_forms_editors.html">Text Editors</a></li>
									<li><a href="base_forms_validation.html">Validation</a></li>
									<li><a href="base_forms_wizard.html">Wizard</a></li>
								</ul></li>
							<li class="nav-main-heading"><span class="sidebar-mini-hide">Develop</span></li>
							<li><a class="nav-submenu" data-toggle="nav-submenu"
								href="#"><i class="si si-wrench"></i><span
									class="sidebar-mini-hide">Components</span></a>
								<ul>
									<li><a href="base_comp_images.html">Images</a></li>
									<li><a href="base_comp_charts.html">Charts (Various)</a></li>
									<li><a href="base_comp_chartjs_v2.html">Charts.js v2</a></li>
									<li><a href="base_comp_calendar.html">Calendar</a></li>
									<li><a href="base_comp_sliders.html">Sliders</a></li>
									<li><a href="base_comp_animations.html">Animations</a></li>
									<li><a href="base_comp_scrolling.html">Scrolling</a></li>
									<li><a href="base_comp_syntax_highlighting.html">Syntax
											Highlighting</a></li>
									<li><a href="base_comp_rating.html">Rating</a></li>
									<li><a href="base_comp_treeview.html">Tree View</a></li>
									<li><a class="nav-submenu" data-toggle="nav-submenu"
										href="#">Maps</a>
										<ul>
											<li><a href="base_comp_maps.html">Google</a></li>
											<li><a href="base_comp_maps_full.html">Google Full</a></li>
											<li><a href="base_comp_maps_vector.html">Vector</a></li>
										</ul></li>
									<li><a class="nav-submenu" data-toggle="nav-submenu"
										href="#">Gallery</a>
										<ul>
											<li><a href="base_comp_gallery_simple.html">Simple</a></li>
											<li><a href="base_comp_gallery_advanced.html">Advanced</a>
											</li>
										</ul></li>
								</ul></li>
							<li><a class="nav-submenu" data-toggle="nav-submenu"
								href="#"><i class="si si-magic-wand"></i><span
									class="sidebar-mini-hide">Layouts</span></a>
								<ul>
									<li><a href="base_layouts_api.html">Layout API</a></li>
									<li><a href="base_layouts_default.html">Default</a></li>
									<li><a href="base_layouts_default_flipped.html">Default
											Flipped</a></li>
									<li><a href="base_layouts_header_static.html">Static
											Header</a></li>
									<li><a href="base_layouts_sidebar_mini_hoverable.html">Mini
											Sidebar (Hoverable)</a></li>
									<li><a href="base_layouts_side_overlay_hoverable.html">Side
											Overlay (Hoverable)</a></li>
									<li><a href="base_layouts_side_overlay_open.html">Side
											Overlay (Open)</a></li>
									<li><a href="base_layouts_side_native_scrolling.html">Side
											Native Scrolling</a></li>
									<li><a href="base_layouts_sidebar_hidden.html">Hidden
											Sidebar</a></li>
								</ul></li>
						</ul>

					</div>
					<!-- END Side Content -->
				</div>
				<!-- Sidebar Content -->
			</div>
			<!-- END Sidebar Scroll Container -->
		</nav>
		<!-- END Sidebar -->

		<!-- Header -->
		<header id="header-navbar" class="content-mini content-mini-full">
			<!-- Header Navigation Right -->
			<ul class="nav-header pull-right">
				<li>
					<div class="btn-group">
						<button class="btn btn-default btn-image dropdown-toggle"
							data-toggle="dropdown" type="button">
							<img src="assets/img/avatars/avatar10.jpg" alt="Avatar"> <span
								class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-right">

							<li><a tabindex="-1" href="profil"> <i
									class="si si-user pull-right"></i> Profil
							</a></li>
							<li><a tabindex="-1" href="login"> <i
									class="si si-logout pull-right"></i>Déconnexion
							</a></li>
						</ul>
					</div>
				</li>

			</ul>
			<!-- END Header Navigation Right -->

			<!-- Header Navigation Left -->
			<ul class="nav-header pull-left">
				<li class="hidden-md hidden-lg">
					<!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
					<button class="btn btn-default" data-toggle="layout"
						data-action="sidebar_toggle" type="button">
						<i class="fa fa-navicon"></i>
					</button>
				</li>
				<li class="hidden-xs hidden-sm">
					<!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
					<button class="btn btn-default" data-toggle="layout"
						data-action="sidebar_mini_toggle" type="button">
						<i class="fa fa-ellipsis-v"></i>
					</button>
				</li>
				<li class="visible-xs">
					<!-- Toggle class helper (for .js-header-search below), functionality initialized in App() -> uiToggleClass() -->
					<button class="btn btn-default" data-toggle="class-toggle"
						data-target=".js-header-search"
						data-class="header-search-xs-visible" type="button">
						<i class="fa fa-search"></i>
					</button>
				</li>
				<li class="js-header-search header-search">
					<form class="form-horizontal" action="base_pages_search.html"
						method="post">
						<div
							class="form-material form-material-primary input-group remove-margin-t remove-margin-b">
							<input class="form-control" type="text" id="base-material-text"
								name="base-material-text" placeholder="Search.."> <span
								class="input-group-addon"><i class="si si-magnifier"></i></span>
						</div>
					</form>
				</li>
			</ul>
			<!-- END Header Navigation Left -->
		</header>
		<!-- END Header -->