
<div class="wrapper_section">
    <!-- <div class="container"> -->
    <div class="animate-in cs_sections" data-anim-type="bounce-in-up-large"  data-anim-delay="300"  >
        <div class="container">
            <p class="breadcrumb"><i class="fa fa-home"></i> <a href="<?php echo base_url(); ?>">Home</a> <i class="fa fa-angle-right"></i> <a href="<?php echo base_url(); ?>home/event">Event</a></p>
            <h2>Event</h2>
            <div class="separator-container">
                <div class="separator line-separator">♦</div>
            </div>

            <?php foreach ($event as $event) { ?>
                <div class="col-lg-offset-2 col-lg-8 col-md-6 col-sm-12 col-xs-12">
                    <div class="seminar single">
                        <img src="<?php echo base_url(); ?>images/event/feature/<?php echo $event->eventimage; ?>" alt="Event Banner"></img>
                        <h5><span><i class="fa fa-calendar"></i> Time - <?php echo $event->eventtime; ?>, <?php echo $event->eventdate; ?></span> <span><i class="fa fa-map-marker"></i> Location - <?php echo $event->eventlocation; ?></span> </h5>
                        <h4><a   href="<?php echo base_url(); ?>home/event/view/<?php echo $event->eventid; ?>"><?php echo $event->eventtitle; ?></a></h4>
                    </div>
                </div>

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="seminar-view">
                        <div class="row">
                            <h4><?php echo $event->eventdescription; ?></h4>
                        </div>

                        <div class="separator-container">
                            <div class="extra_space_sm"></div>
                        </div>

                        <div class="row"> 
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <iframe
                                    width="100%"
                                    height="300"
                                    frameborder="0" style="border:0; pointer-events: none;"
                                    src="https://www.google.com/maps/embed/v1/place?key=<?php echo getBasic()->mapapi;?>
                                    &q=<?php echo $event->location; ?>">
                                </iframe>
                            </div> 
                        </div>
                    </div>

                    <div class="separator-container">
                        <div class="extra_space_sm"></div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2">
                        <div class="socialShare"></div>
                    </div>


                </div>
            <?php } ?>
        </div>
    </div>
</div>