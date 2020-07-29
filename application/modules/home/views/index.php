


<div class="title_section">
    <?php foreach ($basicinfo as $basic)  ?>
    <div class="col-md-12 col-sm-12 col-xs-12 jamboo_title">
        <h1><?php echo $basic->title; ?></h1>
        <p class="sologan"><?php echo $basic->tag; ?></p>
    </div>

<!--    <div class="col-md-12 col-sm-12 col-xs-12 indicator_down">						
        <i class="fa fa-angle-down"></i>						
    </div>-->
    <?php foreach ($event as $event): ?>
        <div class="col-md-12 col-sm-12 col-xs-12">								
            <div class="next_event_sector">
                <p class="level">Next Event - <a style="color:#fff" href="<?php echo base_url(); ?>home/event/view/<?php echo $event->eventid; ?>"><?php echo $event->eventtitle; ?></a></p>
                <p id="countdown_clock"></p>
            </div>					
        </div>
    <?php endforeach; ?>
</div>

<div class="slider_section">
    <div class="#">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <?php $i = ""; foreach ($slider as $slide) { $i++; ?>
                <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i-1;?>" <?php if($i == 1){?> class="active" <?php } ?>></li>
                <?php } ?>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <?php $i=0; foreach ($slider as $slide) { $i++;?>                
                    <div class="item <?php if($i == 1){echo "active";} ?>">
                        <img src="<?php echo base_url();?>images/website/slider/<?php echo $slide->filename; ?>" alt="Slider Image">                    
                    </div> 
                <?php } ?>
                
            </div>
        </div>
    </div>
</div> 
<div class="wrapper_section">
    <!-- <div class="container"> -->
    
    <?php foreach ($section as $section) { ?>
        <div class="animate-in cs_sections <?php
        if ($section->background) {
            echo "parallax";
        }
        ?>" data-parallax="scroll" data-image-src="images/section/crop/<?php echo $section->background; ?>" data-anim-type="bounce-in-up-large"  data-anim-delay="600">
            <div class="content">
                <div class="container">
                    <h2><?php echo $section->title; ?></h2>
                    <div class="separator-container">
                        <div class="separator line-separator">♦</div>
                    </div>

                    <?php
                    
                    if ($section->shortcode) {
                        $SCAttArray = explode(",", $section->shortcode);
                        echo shortCode($SCAttArray[0], $SCAttArray[1], $SCAttArray[2], $SCAttArray[3], $SCAttArray[4]);
                    }
                    ?>

                    <div class="col-md-offset-1 col-lg-10 col-md-10 col-sm-12 col-xs-12">                        
                        <p><?php echo $section->content; ?></p>
                        <?php if ($section->link) { ?>
                        <div class="col-lg-offset-5 col-md-offset-5 col-lg-2 col-md-2 col-sm-12 col-xs-12">
                            <a class="read_more" href="<?php echo $section->link; ?>"><?php echo $section->btntext; ?></a>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>

    <div class="animate-in cs_sections event parallax" data-parallax="scroll" data-image-src="images/slide07.jpg" data-anim-type="bounce-in-up-large"  data-anim-delay="600"  >
        <div class="content">
        <div class="container">
            <h2>Quick Info</h2>

            <div class="separator-container">
                <div class="separator line-separator">♦</div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs tab" role="tablist">
                    <li role="presentation" class="active"><a href="#event" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-calendar fa-fw"></i> Events</a></li>									
                    <li role="presentation"><a href="#church_time" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-clock-o fa-fw"></i> Church Time</a></li>									
                    <li role="presentation"><a href="#prayer_request" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-microphone fa-fw"></i> Prayer Request</a></li>
                    <li role="presentation"><a href="#notice" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-tags fa-fw"></i> Notice</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="event">
                        <div class="event_body">
                            <div id="calendar"></div>
                            <div class="separator-container">
                                <div class="extra_space"></div>
                            </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="church_time">
                        <div class="event_body">
                                
                                <div class="event_content">
                                    <h4><i class="fa fa-clock-o fa-fw"></i> Church Time Schedule</h4>
                                    <p class="elements"><?php echo $basic->churchtime; ?></p>
                                </div>

                                <div class="separator-container">
                                    <div class="extra_space"></div>
                                </div>
                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="prayer_request">
                        <div class="event_body">
                                <?php
                                $i = 0;
                                foreach ($prayer as $prayer) {
                                    $i++;
                                    ?>
                                    
                                    <div class="event_content">
                                        <h4><i class="fa fa-microphone fa-fw"></i> <?php echo $prayer->prayertitle; ?> <span class="btn"><a href="<?php echo base_url();?>home/prayer/view/<?php echo $prayer->prayerid; ?>">View</a></span></h4>
                                        <p class="elements"><?php echo $prayer->prayerdescription; ?></p>
                                    </div>
                            
                                    <div class="separator-container">
                                        <div class="extra_space"></div>
                                    </div>
                                    <?php
                                    if ($i == 3) {
                                        break;
                                    }
                                }
                                ?>
                        </div>
                    </div>
                    
                    
                    <div role="tabpanel" class="tab-pane fade" id="notice">
                        <div class="event_body">
                                <?php
                                $i = 0;
                                foreach ($notice as $notice) {
                                    $i++;
                                    ?>
                                    
                                    <div class="event_content">
                                        <h4><i class="fa fa-microphone fa-fw"></i> <?php echo $notice->noticetitle; ?> <span class="btn"><a href="<?php echo base_url();?>home/notice/view/<?php echo $notice->noticeid; ?>">View</a></span></h4>
                                        <p class="elements"><?php echo $notice->noticedescription; ?></p>
                                    </div>
                            
                                    <div class="separator-container">
                                        <div class="extra_space"></div>
                                    </div>
                                    <?php
                                    if ($i == 3) {
                                        break;
                                    }
                                }
                                ?>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        </div>
    </div>
    
    <div class="animate-in cs_sections gallery" data-anim-type="bounce-in-up-large"  data-anim-delay="600"  >
        <div class="content">
            <div class="container">

                <h2>Gallery</h2>

                <div class="separator-container">
                    <div class="separator line-separator">♦</div>
                </div>	

                <div class="col-md-offset-0 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div id="gallery" style="display:none;">
                        <?php foreach ($gallery as $gallery) { ?>
                            <img alt="<?php echo $gallery->filename; ?>" src="<?php echo base_url(); ?>images/website/gallery/small/<?php echo $gallery->filename; ?>"
                                 data-image="<?php echo base_url(); ?>images/website/gallery/large/<?php echo $gallery->filename; ?>"
                                 data-description="<?php echo $gallery->filename; ?>">
                             <?php } ?>
                    </div>
                </div>            
                <div class="col-lg-offset-5 col-md-offset-5 col-lg-2 col-md-2 col-sm-12 col-xs-12"><a class="read_more" href="<?php echo base_url(); ?>home/gallery">View More</a></div>            
            </div>
        </div>
    </div>


    <div class="animate-in cs_sections map" data-anim-type="bounce-in-up-large"  data-anim-delay="600"  >
        <iframe
            width="100%"
            height="700"
            frameborder="0" style="border:0; pointer-events: none;"
            src="https://www.google.com/maps/embed/v1/place?key=<?php echo getBasic()->mapapi;?>&q=<?php echo $basic->map; ?>" allowfullscreen>
        </iframe>
    </div>

    <div class="animate-in cs_sections parallax" data-parallax="scroll" data-image-src="images/slide07.jpg" data-anim-type="bounce-in-up-large"  data-anim-delay="600"  >
        <div class="content">
        <div class="container">
            <h2>Contact With Us</h2>

            <div class="separator-container">
                <div class="separator line-separator">♦</div>
            </div>
            <div class="col-md-offset-2 col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <form id="contactform" class="form-horizontal" action="<?php echo base_url();?>home/home/contactWithUs" method="post" enctype="multipart/form-data">
                    <div class="column one-second">
                        <input placeholder="Your name" type="text" name="name" required>
                    </div>
                    <div class="column one-second">
                        <input placeholder="Your e-mail" type="email" name="email" required>
                    </div>
                    <div class="column one">
                        <input placeholder="Subject" type="text" name="subject" id="subject" required>
                    </div>
                    <div class="column one">
                        <textarea placeholder="Message" name="body" id="body" style="width:100%;" rows="10" required></textarea>
                    </div>
                    <div class="column one">
                        <input type="submit" value="Send Now" id="submit" >
                    </div>
                </form>
            </div>
        </div>	
        </div>
    </div>