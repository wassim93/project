<!DOCTYPE html>
<!--[if IE 9]>         <html class="ie9 no-focus" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-focus" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>Profil</title>

        <meta name="description" content="OneUI - Admin Dashboard Template &amp; UI Framework created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Icons -->
        <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
        <link rel="shortcut icon" href="assets/img/favicons/favicon.png">

        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-16x16.png" sizes="16x16">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-160x160.png" sizes="160x160">
        <link rel="icon" type="image/png" href="assets/img/favicons/favicon-192x192.png" sizes="192x192">

        <link rel="apple-touch-icon" sizes="57x57" href="assets/img/favicons/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="assets/img/favicons/apple-touch-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="assets/img/favicons/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/favicons/apple-touch-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="assets/img/favicons/apple-touch-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="assets/img/favicons/apple-touch-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="assets/img/favicons/apple-touch-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="assets/img/favicons/apple-touch-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon-180x180.png">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Web fonts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,600,700%7COpen+Sans:300,400,400italic,600,700">

        <!-- Bootstrap and OneUI CSS framework -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" id="css-main" href="assets/css/oneui.css">

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
        <div id="page-container" class="sidebar-l sidebar-o side-scroll header-navbar-fixed">
           

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
                            <button class="btn btn-link text-gray pull-right hidden-md hidden-lg" type="button" data-toggle="layout" data-action="sidebar_close">
                                <i class="fa fa-times"></i>
                            </button>
                            <!-- Themes functionality initialized in App() -> uiHandleTheme() -->
                            <div class="btn-group pull-right">
                                <button class="btn btn-link text-gray dropdown-toggle" data-toggle="dropdown" type="button">
                                    <i class="si si-drop"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right font-s13 sidebar-mini-hide">
                                    <li>
                                        <a data-toggle="theme" data-theme="default" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-default pull-right"></i> <span class="font-w600">Default</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="theme" data-theme="assets/css/themes/amethyst.min.css" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-amethyst pull-right"></i> <span class="font-w600">Amethyst</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="theme" data-theme="assets/css/themes/city.min.css" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-city pull-right"></i> <span class="font-w600">City</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="theme" data-theme="assets/css/themes/flat.min.css" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-flat pull-right"></i> <span class="font-w600">Flat</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="theme" data-theme="assets/css/themes/modern.min.css" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-modern pull-right"></i> <span class="font-w600">Modern</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a data-toggle="theme" data-theme="assets/css/themes/smooth.min.css" tabindex="-1" href="javascript:void(0)">
                                            <i class="fa fa-circle text-smooth pull-right"></i> <span class="font-w600">Smooth</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <a class="h5 text-white" href="index.html">
                                <span class="h4 font-w600 sidebar-mini-hide">
                                    <img src="assets/img/logo.png" width="150">
                                </span>
                            </a>
                        </div>
                        <!-- END Side Header -->

                        <!-- Side Content -->
                        <div class="side-content">
                            <ul class="nav-main">
                                <li>
                                    <a href="base_pages_dashboard.html"><i class="si si-speedometer"></i><span class="sidebar-mini-hide">Dashboard</span></a>
                                </li>
                                <li class="nav-main-heading"><span class="sidebar-mini-hide">User Interface</span></li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-badge"></i><span class="sidebar-mini-hide">UI Elements</span></a>
                                    <ul>
                                        <li>
                                            <a href="base_ui_widgets.html">Widgets</a>
                                        </li>
                                        <li>
                                            <a class="nav-submenu" data-toggle="nav-submenu" href="#">Blocks</a>
                                            <ul>
                                                <li>
                                                    <a href="base_ui_blocks.html">Styles</a>
                                                </li>
                                                <li>
                                                    <a href="base_ui_blocks_api.html">Blocks API</a>
                                                </li>
                                                <li>
                                                    <a href="base_ui_blocks_draggable.html">Draggable</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="base_ui_grid.html">Grid</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_typography.html">Typography</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_icons.html">Icons</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_buttons.html">Buttons</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_activity.html">Activity</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_tabs.html">Tabs</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_tiles.html">Tiles</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_cards.html">Cards</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_ribbons.html">Ribbons</a>
                                        </li>
                                        <li>
                                            <a class="nav-submenu" data-toggle="nav-submenu" href="#">Chat</a>
                                            <ul>
                                                <li>
                                                    <a href="base_ui_chat_full.html">Full</a>
                                                </li>
                                                <li>
                                                    <a href="base_ui_chat_fixed.html">Fixed</a>
                                                </li>
                                                <li>
                                                    <a href="base_ui_chat_popup.html">Popup</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a class="nav-submenu" data-toggle="nav-submenu" href="#">Timeline</a>
                                            <ul>
                                                <li>
                                                    <a href="base_ui_timeline.html">Various</a>
                                                </li>
                                                <li>
                                                    <a href="base_ui_timeline_social.html">Social</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="base_ui_navigation.html">Navigation</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_modals_tooltips.html">Modals &amp; Tooltips</a>
                                        </li>
                                        <li>
                                            <a href="base_ui_color_themes.html">Color Themes</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-grid"></i><span class="sidebar-mini-hide">Tables</span></a>
                                    <ul>
                                        <li>
                                            <a href="base_tables_styles.html">Styles</a>
                                        </li>
                                        <li>
                                            <a href="base_tables_responsive.html">Responsive</a>
                                        </li>
                                        <li>
                                            <a href="base_tables_tools.html">Tools</a>
                                        </li>
                                        <li>
                                            <a href="base_tables_pricing.html">Pricing</a>
                                        </li>
                                        <li>
                                            <a href="base_tables_datatables.html">DataTables</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-note"></i><span class="sidebar-mini-hide">Forms</span></a>
                                    <ul>
                                        <li>
                                            <a href="base_forms_premade.html">Pre-made</a>
                                        </li>
                                        <li>
                                            <a href="base_forms_elements.html">Elements</a>
                                        </li>
                                        <li>
                                            <a href="base_forms_pickers_more.html">Pickers &amp; More</a>
                                        </li>
                                        <li>
                                            <a href="base_forms_editors.html">Text Editors</a>
                                        </li>
                                        <li>
                                            <a href="base_forms_validation.html">Validation</a>
                                        </li>
                                        <li>
                                            <a href="base_forms_wizard.html">Wizard</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-main-heading"><span class="sidebar-mini-hide">Develop</span></li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-wrench"></i><span class="sidebar-mini-hide">Components</span></a>
                                    <ul>
                                        <li>
                                            <a href="base_comp_images.html">Images</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_charts.html">Charts (Various)</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_chartjs_v2.html">Charts.js v2</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_calendar.html">Calendar</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_sliders.html">Sliders</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_animations.html">Animations</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_scrolling.html">Scrolling</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_syntax_highlighting.html">Syntax Highlighting</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_rating.html">Rating</a>
                                        </li>
                                        <li>
                                            <a href="base_comp_treeview.html">Tree View</a>
                                        </li>
                                        <li>
                                            <a class="nav-submenu" data-toggle="nav-submenu" href="#">Maps</a>
                                            <ul>
                                                <li>
                                                    <a href="base_comp_maps.html">Google</a>
                                                </li>
                                                <li>
                                                    <a href="base_comp_maps_full.html">Google Full</a>
                                                </li>
                                                <li>
                                                    <a href="base_comp_maps_vector.html">Vector</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a class="nav-submenu" data-toggle="nav-submenu" href="#">Gallery</a>
                                            <ul>
                                                <li>
                                                    <a href="base_comp_gallery_simple.html">Simple</a>
                                                </li>
                                                <li>
                                                    <a href="base_comp_gallery_advanced.html">Advanced</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-magic-wand"></i><span class="sidebar-mini-hide">Layouts</span></a>
                                    <ul>
                                        <li>
                                            <a href="base_layouts_api.html">Layout API</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_default.html">Default</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_default_flipped.html">Default Flipped</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_header_static.html">Static Header</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_sidebar_mini_hoverable.html">Mini Sidebar (Hoverable)</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_side_overlay_hoverable.html">Side Overlay (Hoverable)</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_side_overlay_open.html">Side Overlay (Open)</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_side_native_scrolling.html">Side Native Scrolling</a>
                                        </li>
                                        <li>
                                            <a href="base_layouts_sidebar_hidden.html">Hidden Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
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
                            <button class="btn btn-default btn-image dropdown-toggle" data-toggle="dropdown" type="button">
                                <img src="assets/img/avatars/avatar10.jpg" alt="Avatar">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right">
                               
                                <li>
                                    <a tabindex="-1" href="">
                                        <i class="si si-user pull-right"></i>
                                        Profil
                                    </a>
                                </li>
                                <li>
                                    <a tabindex="-1" href="">
                                        <i class="si si-logout pull-right"></i>Déconnexion
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    
                </ul>
                <!-- END Header Navigation Right -->

                <!-- Header Navigation Left -->
                <ul class="nav-header pull-left">
                    <li class="hidden-md hidden-lg">
                        <!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
                        <button class="btn btn-default" data-toggle="layout" data-action="sidebar_toggle" type="button">
                            <i class="fa fa-navicon"></i>
                        </button>
                    </li>
                    <li class="hidden-xs hidden-sm">
                        <!-- Layout API, functionality initialized in App() -> uiLayoutApi() -->
                        <button class="btn btn-default" data-toggle="layout" data-action="sidebar_mini_toggle" type="button">
                            <i class="fa fa-ellipsis-v"></i>
                        </button>
                    </li>
                    <li class="visible-xs">
                        <!-- Toggle class helper (for .js-header-search below), functionality initialized in App() -> uiToggleClass() -->
                        <button class="btn btn-default" data-toggle="class-toggle" data-target=".js-header-search" data-class="header-search-xs-visible" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </li>
                    <li class="js-header-search header-search">
                        <form class="form-horizontal" action="base_pages_search.html" method="post">
                            <div class="form-material form-material-primary input-group remove-margin-t remove-margin-b">
                                <input class="form-control" type="text" id="base-material-text" name="base-material-text" placeholder="Search..">
                                <span class="input-group-addon"><i class="si si-magnifier"></i></span>
                            </div>
                        </form>
                    </li>
                </ul>
                <!-- END Header Navigation Left -->
            </header>
            <!-- END Header -->

            <!-- Main Container -->
            <main id="main-container">
                <!-- Page Content -->
                <div class="content content-boxed">
                    <!-- User Header -->
                    <div class="block">
                        <!-- Basic Info -->
                        <div class="bg-image" style="background-image: url('assets/img/photos/photo3@2x.jpg');">
                            <div class="block-content bg-primary-op text-center overflow-hidden">
                                <div class="push-30-t push animated fadeInDown">
                                    <img class="img-avatar img-avatar96 img-avatar-thumb" src="assets/img/avatars/avatar10.jpg" alt="">
                                </div>
                                <div class="push-30 animated fadeInUp">
                                    <h2 class="h4 font-w600 text-white push-5">Ronald George</h2>
                                    <h3 class="h5 text-white-op">Web Designer</h3>
                                </div>
                            </div>
                        </div>
                        <!-- END Basic Info -->

                        
                    </div>
                    <!-- END User Header -->

                    <!-- Main Content -->
                    <form action="pages_profile_edit.html" method="post" onsubmit="return false;">
                        <div class="block">
                            <ul class="nav nav-tabs nav-justified push-20" data-toggle="tabs">
                                <li class="active">
                                    <a href="#tab-profile-personal"><i class="fa fa-fw fa-pencil"></i> Informations</a>
                                </li>
                                <li>
                                    <a href="#tab-profile-password"><i class="fa fa-fw fa-lock"></i> Mot de passe</a>
                                </li>
                                <li>
                                    <a href="#tab-profile-privacy"><i class="fa fa-fw fa-info"></i> Autres</a>
                                </li>
                            </ul>
                            <div class="block-content tab-content">
                                <!-- Personal Tab -->
                                <div class="tab-pane fade in active" id="tab-profile-personal">
                                    <div class="row items-push">
                                        <div class="col-sm-6 col-sm-offset-3 form-horizontal">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="profile-email">Adresse Email</label>
                                                    <input class="form-control input-lg" type="email" id="profile-email" name="profile-email" placeholder="Entrer votre Email ..." value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-6">
                                                    <label for="profile-firstname">Prenom</label>
                                                    <input class="form-control input-lg" type="text" id="profile-firstname" name="profile-firstname" placeholder="Entrer votre prenom.." value="">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label for="profile-lastname">Nom</label>
                                                    <input class="form-control input-lg" type="text" id="profile-lastname" name="profile-lastname" placeholder="Entrer votre nom .." value="">
                                                </div>
                                            </div>
                                             <div class="form-group">
                                                <div class="col-sm-6">
                                                    <label for="profile-city">Poste</label>
                                                    <input class="form-control input-lg" type="text" id="profile-city" name="profile-city" placeholder="Entrer votre poste ..">
                                                </div>
                                                <div class="col-sm-6">
                                                    <label for="profile-age">Service</label>
                                                    <select class="form-control" id="contact1-subject" name="contact1-subject" size="1" style="height:47px;">
                                                    <option value="1">Support</option>
                                                    <option value="2">Billing</option>
                                                    <option value="3">Management</option>
                                                    <option value="4">Feature Request</option>
                                                </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-6">
                                                    <label for="profile-city">Adresse postale</label>
                                                    <input class="form-control input-lg" type="text" id="profile-city" name="profile-city" placeholder="Entrer votre adresse ..">
                                                </div>
                                                <div class="col-sm-6">
                                                    <label for="profile-age">Age</label>
                                                    <input class="form-control input-lg" type="number" id="profile-age" name="profile-age" placeholder="Entrer votre age..">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12">Sexe</label>
                                                <div class="col-xs-12">
                                                    <label class="css-input css-radio css-radio-primary push-10-r">
                                                        <input type="radio" name="profile-gender-group"><span></span> Femme
                                                    </label>
                                                    <label class="css-input css-radio css-radio-primary">
                                                        <input type="radio" name="profile-gender-group" checked><span></span> Homme
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END Personal Tab -->

                                <!-- Password Tab -->
                                <div class="tab-pane fade" id="tab-profile-password">
                                    <div class="row items-push">
                                        <div class="col-sm-6 col-sm-offset-3 form-horizontal">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="profile-password">Mot de passe actuel</label>
                                                    <input class="form-control input-lg" type="password" id="profile-password" name="profile-password">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="profile-password-new">Nouveau mot de passe</label>
                                                    <input class="form-control input-lg" type="password" id="profile-password-new" name="profile-password-new">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="profile-password-new-confirm">Confirmation</label>
                                                    <input class="form-control input-lg" type="password" id="profile-password-new-confirm" name="profile-password-new-confirm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END Password Tab -->

                                <!-- Privacy Tab -->
                                <div class="tab-pane fade" id="tab-profile-privacy">
                                    <div class="row items-push">
                                        <div class="col-sm-6 col-sm-offset-3 form-horizontal">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="profile-bio">Bio</label>
                                                    <textarea class="form-control input-lg" id="profile-bio" name="profile-bio" rows="15" placeholder="Decrivez vous en quelques lignes..">Hi there, welcome to my profile! I'm a web designer and I love creating stuff that solve problems and make your life easier. Feel free to follow me to know more about me and my projects. Thanks for stopping by, wish you a great day!</textarea>
                                                </div>
                                            </div>
                                            <hr>
                
                                        </div>
                                    </div>
                                </div>
                                <!-- END Privacy Tab -->
                            </div>
                            <div class="block-content block-content-full bg-gray-lighter text-center">
                                <button class="btn btn-sm btn-primary" type="submit"><i class="fa fa-check push-5-r"></i> Sauvegarder</button>
                                <button class="btn btn-sm btn-warning" type="reset"><i class="fa fa-refresh push-5-r"></i> Annuler</button>
                            </div>
                        </div>
                    </form>
                    <!-- END Main Content -->
                </div>
                <!-- END Page Content -->
            </main>
            <!-- END Main Container -->

            <!-- Footer -->
            <footer id="page-footer" class="content-mini content-mini-full font-s12 bg-gray-lighter clearfix">
                <div class="pull-right">
                    Tunisair <i class="fa fa-heart text-city"></i>Handling
                </div>
                <div class="pull-left">
                     &copy;2017 
                </div>
            </footer>
            <!-- END Footer -->
        </div>
        <!-- END Page Container -->

        <!-- Apps Modal -->

        <!-- OneUI Core JS: jQuery, Bootstrap, slimScroll, scrollLock, Appear, CountTo, Placeholder, Cookie and App.js -->
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/bootstrap.min.js"></script>
        <script src="assets/js/core/jquery.slimscroll.min.js"></script>
        <script src="assets/js/core/jquery.scrollLock.min.js"></script>
        <script src="assets/js/core/jquery.appear.min.js"></script>
        <script src="assets/js/core/jquery.countTo.min.js"></script>
        <script src="assets/js/core/jquery.placeholder.min.js"></script>
        <script src="assets/js/core/js.cookie.min.js"></script>
        <script src="assets/js/app.js"></script>
    </body>
</html>