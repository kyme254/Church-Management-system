
<div class="wrapper_section">
    <!-- <div class="container"> -->
    <div class="animate-in cs_sections" data-anim-type="bounce-in-up-large"  data-anim-delay="300"  >
        <div class="container allnotice">
            <p class="breadcrumb"><i class="fa fa-home"></i> <a href="<?php echo base_url();?>">Home</a> <i class="fa fa-angle-right"></i> <a href="<?php echo base_url();?>home/notice">Notice</a></p>
            <h2>All Notice</h2>
            <div class="separator-container">
                <div class="separator line-separator">♦</div>
            </div>
            
            <?php foreach ($notice as $notice){ ?>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="prayer-view seminar">
                    <h4 class="title"><span class="title-icon">
                        <i class="fa fa-microphone"></i>
                    </span> <a   href="<?php echo base_url();?>home/notice/view/<?php echo $notice->noticeid;?>"><?php echo $notice->noticetitle;?></a></h4>
                    <div class="separator-container">
                        <div class="extra_space_sm"></div>
                    </div>
                    <h4><?php echo word_limiter($notice->noticedescription, 50);?></h4>
                </div>
            </div>
            <?php } ?>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <?php  echo $pagination; ?>
            </div> 
        </div>
    </div>
</div> 