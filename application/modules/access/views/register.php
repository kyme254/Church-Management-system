
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-8 col-md-4 error_message">
                <?php if ($this->session->flashdata('register_error')) { ?>
                    <audio autoplay>
                        <source src="<?php echo base_url(); ?>error.wav">
                    </audio>

                    <div class="alert alert-danger alert-with-icon" data-notify="container">
                        <i class="material-icons" data-notify="icon">notifications</i>						
                        <span data-notify="message"><?php echo $this->session->flashdata('register_error'); ?></span>
                    </div>

                <?php } ?>

            </div>

            <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                <p class="text-center">
                    <img style="    float: none; width: 65px; margin: 0 auto; border-radius: 2px;"  class="img-responsive" src="<?php echo base_url();?>images/website/<?php echo $siteinfo[0]->logo;?>" alt="Logo">
                </p>
                <form method="post" action="<?php echo base_url(); ?>access/register/addnewuser">
                    <div class="card card-login" style="border-radius:0">                        
                        <div class="card-content">
                            
                            <h5 class="text-center">Social Signup</h5>
                            <div class="social-line text-center">
                                
                                <a href="<?php echo base_url();?>access/register/media/Facebook" class="btn btn-just-icon btn-simple">
                                    <i class="fa fa-facebook-square"></i>
                                    <div class="ripple-container"></div>
                                </a>
                                
                                <a href="<?php echo base_url();?>access/register/media/Twitter" class="btn btn-just-icon btn-simple">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="<?php echo base_url();?>access/register/media/Google" class="btn btn-just-icon btn-simple">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>

                            <hr>

                            <h5 class="text-center">Classic Signup</h5>
                            
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">face</i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">User Name</label>
                                    <input id="username" name="username" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">email</i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Email address</label>
                                    <input id="email" name="email" type="email" class="form-control">
                                </div>
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="material-icons">lock_outline</i>
                                </span>
                                <div class="form-group label-floating">
                                    <label class="control-label">Password</label>
                                    <input id="password" name="password" type="password" class="form-control">
                                </div>
                            </div>
                            <div class="checkbox">
                                <label>
                                        <!-- <input id="terms_and_condition" name="terms_and_condition" type="checkbox" checked=""> -->
                                        <!-- <span class="checkbox-material"></span>  -->
                                    <a href="#something">You are agree to the terms and conditions by Registering</a>.
                                </label>
                            </div>
                        </div>
                        <div class="footer text-center">
                            <button type="submit" class="btn btn-default"><i class="material-icons">person_add</i> Register Now</button>
                        </div>
                        
                        <div class="separator-container">
                            <div class="extra-space"></div>
                        </div>
                        
                    </div>
                </form>
                <p class="text-center colorwhite"><?php echo $siteinfo[0]->title;?> | <?php echo $siteinfo[0]->tag;?></p>
            </div>
        </div>
    </div>
</div>