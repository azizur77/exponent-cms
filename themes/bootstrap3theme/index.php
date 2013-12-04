<!DOCTYPE HTML>
<html>
    <head>
        <?php
        expTheme::head(array(
            "xhtml"=>false,
            "normalize"=>true,
            "framework"=>"bootstrap3",
            // these viewport settings are the defaults so they are not really needed except to customize
            "viewport"=>array(
                "width"=>"device-width",
                "height"=>"device-height",
                "initial_scale"=>1,
                "minimum_scale"=>0.25,
                "maximum_scale"=>5.0,
                "user_scalable"=>true,
            ),
            "css_core"=>array(
                "common"
            ),
            // bootstrap (system) variables are overridden in the /less/variables.less file
            "lessvars"=>array(
                'menu_height'=>MENU_HEIGHT,
                'menu_width'=>MENU_WIDTH,
            ),
            "css_links"=>true,
            "css_theme"=>true
            ));
        ?>
    </head>
    <body>
        <nav class="navigation navbar navbar-default <?php echo (MENU_LOCATION) ? 'navbar-'.MENU_LOCATION : '' ?>" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo URL_FULL ?>"><?php echo ORGANIZATION_NAME ?></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <?php expTheme::module(array("controller"=>"navigation","action"=>"showall","view"=>"showall_Flydown")); ?>
            </div><!-- /.navbar-collapse -->
        </nav>
        <div class="navbar-spacer"></div>
        <div class="navbar-spacer-bottom"></div>
        <!-- main page body -->
        <div class="container <?php echo (MENU_LOCATION) ? 'fixedmenu' : '' ?>">
            <!-- optional flyout sidebar container -->
            <?php expTheme::module(array("controller"=>"navigation","action"=>"showall","view"=>"showall_flyout_sidebar","source"=>"navsidebar","chrome"=>true)); ?>
            <section id="main" class="row">
                <aside id="sidebar" class="col-sm-3">
                    <?php expTheme::module(array("controller"=>"container","action"=>"showall","view"=>"showall","source"=>"@left")); ?>
                </aside>
                <section id="content" class="col-sm-9">
                    <?php expTheme::main(); ?>
                </section>
            </section>
            <!-- footer -->
            <footer class="row">
                <?php expTheme::module(array("controller"=>"text","action"=>"showall","view"=>"showall_single","source"=>"@footer","chrome"=>1)) ?>
                <?php if (MENU_LOCATION == 'fixed-bottom') echo '<div class="menu-spacer-bottom"></div>'; ?>
            </footer>
        </div>
        <?php expTheme::foot(); ?>
    </body>
</html>