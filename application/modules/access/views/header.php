<?php 

	$cmodule = $this->uri->segment(1); //Church Module
	$ccontroller = $this->uri->segment(2); //Church Controller
	$cmethod = $this->uri->segment(3); //Church Method
	
	if(!$ccontroller && $cmodule == "dashboard"){
		$itdash = "dashboard";
	}else{
		$itdash = "notdashboard";
	}
	
?>

<!doctype html>
<html lang="en">


<!-- Mirrored from demos.creative-tim.com/material-dashboard-pro/examples/pages/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 22 Jan 2017 15:09:24 GMT -->
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="<?php echo base_url();?>images/website/<?php echo $siteinfo[0]->favicon;?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title><?php echo $siteinfo[0]->title;?> | <?php echo $siteinfo[0]->tag;?></title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
    <link href="<?php echo base_url();?>assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<?php echo base_url();?>assets/css/material-dashboard.css" rel="stylesheet" />
    <link href="<?php echo base_url();?>css/custom_style.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>css/nice-select.css" rel="stylesheet"/>
	
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <!-- <link href="<?php echo base_url(); ?>assets/css/demo.css" rel="stylesheet" /> -->
	
	<link href="https://cdnjs.cloudflare.com/ajax/libs/cropper/2.3.4/cropper.min.css" rel="stylesheet" />
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css" rel="stylesheet" />
	
	
     <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

</head>

<body>
    <nav class="navbar navbar-default  navbar-absolute" style="border-bottom: 3px solid #ccc;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url();?>"><img style="float:left; width: 40px; margin: -3px 20px  0 0"  class="img-circle img-rounded img-responsive" src="<?php echo base_url();?>images/website/<?php echo $siteinfo[0]->logo;?>" alt="Logo"><?php echo $siteinfo[0]->title;?></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="<?php echo base_url();?>">
                            <i class="material-icons">dashboard</i> Home
                        </a>
                    </li>
					<li class="<?php if($cmodule =="access" && $ccontroller == "login"){echo "active";} ?>">
                        <a href="<?php echo base_url('access/login');?>">
                            <i class="material-icons">fingerprint</i> Login
                        </a>
                    </li>
                    <li class="<?php if($cmodule =="access" && $ccontroller == "register"){echo "active";} ?>">
                        <a href="<?php echo base_url('access/register');?>">
                            <i class="material-icons">person_add</i> Register
                        </a>
                    </li>                    
                    <li class="<?php if($cmodule =="dashboard" && $ccontroller == "joinseminar"){echo "active";} ?>">
                        <a href="<?php echo base_url('dashboard/joinseminar');?>">
                            <i class="material-icons">person_add</i> Join Seminar
                        </a>
                    </li> 
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper wrapper-full-page" style="background:#607D8B">
        <div class="full-page login-page register-page" >
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->