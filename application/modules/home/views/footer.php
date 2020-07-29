<?php
if ($this->uri->uri_string() == '') {
    $home = true;
} else {
    $home = false;
}
?>

<?php foreach ($basicinfo as $basic)
    
    ?>
<div class="animate-in cs_sections" data-anim-type="bounce-in-up-large"  data-anim-delay="300"  >

    <div class="separator-container">
        <div class="extra_space_sm"></div>
    </div>	

    <div class="container">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="separator-container">
                <div class="extra_space_xs"></div>
            </div>
            <div class="box height100">
                <div class="box_header">
                    <h4><i class="fa fa-comments fa-fw"></i> About Us</h4>
                </div>

                <div class="box_body">
                    <p><?php echo $basic->about; ?></p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="separator-container">
                <div class="extra_space_xs"></div>
            </div>
            <div class="box height100">
                <div class="box_header">
                    <h4><i class="fa fa-phone fa-fw"></i> Contact</h4>
                </div>

                <div class="box_body">
                    <p><?php echo $basic->contact; ?></p>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="separator-container">
                <div class="extra_space_xs"></div>
            </div>
            <div class="box height100">
                <div class="box_header">
                    <h4><i class="fa fa-map-marker fa-fw"></i> Address</h4>
                </div>

                <div class="box_body">
                    <p><?php echo $basic->address; ?></p>
                </div>
            </div>
        </div>

    </div>	

    <div class="separator-container">
        <div class="extra_space"></div>
    </div>

    <div class="container">
        <div class="col-md-6 col-md-offset-3">
            <div class="footer social_media">
                <a class="socialbtn facebook" target="_blank" href="<?php echo getBasic()->facebook;?>"><i class="fa fa-facebook"></i></a>
                <a class="socialbtn twitter" target="_blank" href="<?php echo getBasic()->twitter;?>"><i class="fa fa-twitter"></i></a>
                <a class="socialbtn linkedin" target="_blank" href="<?php echo getBasic()->linkedin;?>"><i class="fa fa-linkedin"></i></a>
                <a class="socialbtn googleplus" target="_blank" href="<?php echo getBasic()->googleplus;?>"><i class="fa fa-google"></i></a>
                <a class="socialbtn youtube" target="_blank" href="<?php echo getBasic()->youtube;?>"><i class="fa fa-youtube"></i></a>
                <a class="socialbtn pinterest" target="_blank" href="<?php echo getBasic()->pinterest;?>"><i class="fa fa-pinterest"></i></a>
                <a class="socialbtn instagram" target="_blank" href="<?php echo getBasic()->instagram;?>"><i class="fa fa-instagram"></i></a>
                <a class="socialbtn whatsapp" target="_blank" href="tel:<?php echo getBasic()->whatsapp;?>"><i class="fa fa-whatsapp"></i></a>
            </div>
        </div>
    </div>

    <div class="separator-container">
        <div class="extra_space"></div>
    </div>



    <div class="container">
        <p class="copyright_text">Copyright © <?php echo date("Y"); ?> - <?php echo $basic->title; ?> - <?php echo $basic->tag; ?> - <?php echo strip_tags($basic->copyright); ?></p>
    </div>

    <div class="separator-container">
        <div class="extra_space"></div>
    </div>

</div>
</div> 

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>	
<!--<script src="<?php echo base_url(); ?>assets/js/jquery-3.1.1.min.js" type="text/javascript"></script>-->
<!--<script src="<?php echo base_url(); ?>assets/js/jquery-ui.min.js" type="text/javascript"></script>-->

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<?php echo base_url(); ?>js/modernizr-2.8.3.min.js"></script>
<script src="<?php echo base_url(); ?>js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>js/parallax.js"></script>
<script src="<?php echo base_url(); ?>js/smoothscroll.min.js"></script>
<script src="<?php echo base_url(); ?>js/animations.min.js"></script>
<script src="<?php echo base_url(); ?>js/appear.min.js"></script>
<!--<script src="<?php echo base_url(); ?>js/backbone.js"></script>-->
<script src="<?php echo base_url(); ?>js/jquery.countdown.min.js"></script>
<script src="<?php echo base_url(); ?>js/owl.carousel.min.js"></script>

<!-- Add mousewheel plugin (this is optional) -->
<script src="<?php echo base_url(); ?>fancybox/lib/jquery.mousewheel.pack.js"></script>
<!-- Add Unitegallery -->
<script src="<?php echo base_url(); ?>unitegallery/dist/js/unitegallery.min.js"></script>
<script src="<?php echo base_url(); ?>unitegallery/dist/themes/tiles/ug-theme-tiles.js"></script>

<!-- Add fancyBox -->		
<script src="<?php echo base_url(); ?>fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>		
<script src="<?php echo base_url(); ?>fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
<script src="<?php echo base_url(); ?>fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
<script src="<?php echo base_url(); ?>fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

<!-- Add FullCalendar -->		
<script src="<?php echo base_url(); ?>fullcalendar/lib/moment.min.js"></script>		
<script src="<?php echo base_url(); ?>fullcalendar/fullcalendar.min.js"></script>

<!-- Include Jssocial JS -->
<script src="<?php echo base_url(); ?>jssocials/jssocials.min.js"></script>

<script type="text/javascript">

            jQuery(document).ready(function(){
    jQuery("#gallery").unitegallery({
    gallery_theme:"tiles",
            tiles_type:"columns",
            tiles_min_columns: 2, //min columns
            tiles_max_columns: 3 //max columns (0 for unlimited)
    });
    });
            jQuery(document).ready(function(){
    jQuery("#singlePageGallery").unitegallery({
    gallery_theme:"tiles",
            tiles_type:"columns",
            tiles_min_columns: 2, //min columns
            tiles_max_columns: 4 //max columns (0 for unlimited)
    });
    });
            $(".socialShare").jsSocials({
    shares: ["email", "twitter", "facebook", "googleplus", "linkedin", "pinterest", "stumbleupon", "whatsapp"],
            shareIn : "popup"
    });</script>


<script>
<?php if ($this->uri->uri_string() == '') { ?>

        $(".owl-carousel").owlCarousel({
        loop:true,
                autoplay:true,
                autoplaySpeed:3000,
                nav:true,
                items:1,
                center:true
        });
                $("#calendar").fullCalendar({
        header: {
        left: 'prev,next today',
                center: 'title',
                right: 'month'
        },
                defaultDate: new Date(),
                height: 700,
                displayEventTime: false,
                events: [
    <?php
    $i = 0;
    $totalevents = count($events);
    foreach ($events as $events) {
        $i++;
        ?>
                    {

                    url: '<?php
        echo base_url() . "home/event/view/";
        echo $events->eventid;
        ?>',
                            title: '<?php echo $events->eventtitle; ?>',
                            start: '<?php
        $edate = $events->eventdate;
        echo date("Y-m-d", strtotime(str_replace("/", "-", $edate)));
        ?>'
                    }<?php
        if ($i == $totalevents) {
            
        } else {
            echo ",";
        }
        ?> <?php } ?>
                ],
                eventClick: function(event) {
                if (event.url) {
                window.open(event.url);
                        return false;
                }
                }
        });
                $(".fancybox").fancybox({
        openEffect	: 'none',
                closeEffect	: 'none'
        });
    <?php foreach ($event as $lastevent): ?>
            $("#countdown_clock").countdown("<?php
        $edate = $lastevent->eventdate;
        echo date("Y-m-d", strtotime(str_replace("/", "-", $edate)));
        ?>", function(event) {
            $(this).text(event.strftime('%D days - %H:%M:%S'));
            });
    <?php
    endforeach;
}
?>

//    $(".menu-btn a").click(function () {
//    $(".overlay").fadeToggle(200);
//            $(this).toggleClass('btn-open').toggleClass('btn-close');
//    });
//            $('.overlay').on('click', function () {
//    $(".overlay").fadeToggle(200);
//            $(".menu-btn a").toggleClass('btn-open').toggleClass('btn-close');
//    });
//            $('.menu a').on('click', function () {
//    $(".overlay").fadeToggle(200);
//            $(".menu-btn a").toggleClass('btn-open').toggleClass('btn-close');
//    });

    /**** Main Menu Jquery ****/
    $('.navbar.primary ul li.parent-menu').hover(
            function() {
            $('ul.dropdown-menu', this).stop().slideDown(400);
            },
            function() {
            $('ul.dropdown-menu', this).stop().slideUp(400);
            }

    );

</script>
</body>
</html>