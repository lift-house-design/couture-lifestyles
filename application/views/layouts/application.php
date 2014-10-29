<?php echo doctype('html5') ?>
<html lang="en">
<head>
    <?php echo $yield_head_tags ?>
</head>
<?php $page=FALSE ?>
<body<?php if($page): ?> id="<?php echo $page ?><?php endif; ?> id="skrollr-body" class="<?php echo $uri_string.( $is_homepage ? ' homepage' : '' ) ?>">
    <div class="sticky-footer-wrapper">
        <?php if($is_homepage): ?>
            <div id="homepage-intro" class="parallax-img-container">
                <img class="logo" src="<?php echo asset('img/layout/logo-lg.png') ?>" alt="<?php echo $app_title ?>" title="<?php echo $app_title ?>" />
                <div class="parallax-img" data-anchor-target="#homepage-intro" data-top-bottom="transform:translateY(30%)" data-top="transform:translateY(-30%)"></div>
            </div>
        <?php elseif(asset_exists($page_header)): ?>
            <div id="page-header" class="parallax-img-container">
                <div class="parallax-img" data-anchor-target="#page-header" data-top-bottom="transform:translateX(-10%)" data-75-top="transform:translateX(0%)" style="background-image: url(<?php echo asset($page_header) ?>)"></div>
            </div>
        <?php endif; ?>
        <?php echo $yield_nav ?>
        <main id="layout-content">
            <?php echo $yield ?>
        </main>
        <div class="sticky-footer-push"></div>
    </div>
    <?php echo $yield_footer ?>

</body>
</html>