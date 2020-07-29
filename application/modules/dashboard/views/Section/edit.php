

<div class="content">
    <div class="container-fluid">
        <div class="row">	                    
            <div class="col-md-offset-1 col-md-10">
                <div class="card">
                    <div class="card-header" data-background-color="purple">
                        <h4 class="title"><i class="material-icons">format_align_center</i> <?php echo $this->lang->line('dash_updatesection_panel_title'); ?></h4>
                        <p class="category">(*) <?php echo $this->lang->line('dash_gpanel_mfar'); ?></p>
                    </div>
                    <div class="card-content">
                        <?php foreach ($individual as $row): ?>
                            <form id="updateSectionForm" class="form-horizontal" action="<?php echo base_url(); ?>dashboard/section/update" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-offset-0 col-md-12">
                                    
                                    <!-- Wrap the image or canvas element with a block element (container) -->
                                    <div class="imageWrapper" style="background-image: url(<?php echo base_url(); ?>images/upload.png);">
                                        <img id="image" src="">
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    
                                    <input type="hidden" name="sectionid" id="sectionid" value="<?php echo $row->sectionid;?>">
                                    
                                    <div class="form-group label-floating">													
                                        <p class="image_select_text"><i class="material-icons">add_a_photo</i> <?php echo $this->lang->line('dash_gpanel_spp'); ?></p>
                                        <input type="file" onchange="sectionbanner()" name="profileimage" id="profileimage">
                                        <input type="hidden" name="x" id="x">
                                        <input type="hidden" name="y" id="y">
                                        <input type="hidden" name="width" id="width">
                                        <input type="hidden" name="height" id="height">
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_title'); ?> (*)</label>
                                        <input type="text" id="title" name="title" class="form-control" value="<?php echo $row->title;?>" required>
                                        <span class="material-input"></span></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">                                        
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_removebackground'); ?></label>                                        
                                        <select class="select form-control" id="removebackground" name="removebackground">
                                            <option value=""><?php echo $this->lang->line('dash_gpanel_removebackground'); ?></option>
                                            <option value="Delete">Yes</option>
                                            <option value="Keep" >No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_shortcode'); ?></label>
                                        <input type="text" id="shortcode" name="shortcode" class="form-control" value="<?php echo $row->shortcode;?>">
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">                                        
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_shortcode'); ?></label>                                        
                                        <select class="select form-control" id="selectshortcode" name="selectshortcode" required>
                                            <option value=""><?php echo $this->lang->line('dash_gpanel_selectshortcode'); ?></option>
                                            <option value="group, committee, desc, committeeid, 4" >Committee</option>
                                            <option value="group, member, desc, memberid, 4" >Member</option>
                                            <option value="group, pastor, desc, pastorid, 4" >Pastor</option>
                                            <option value="group, chorus, desc, chorusid, 4" >Chorus</option>
                                            <option value="group, clan, desc, clanid, 4" >Clan</option>
                                            <option value="group, sundayschool, desc, sschoolid, 4" >Student</option>
                                            <option value="group, staff, desc, staffid, 4" >Staff</option>
                                            <option value="speech, speech, desc, speechid, 4" >Speech</option>
                                            <option value="event, seminar, desc, seminarid, 4" >Seminar</option>
                                        </select>
                                    </div>
                                </div>
                                
                            </div>

                            <div class="row">    
                                <div class="col-md-12">
                                    <div class="form-group label-floating is-empty">
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_content'); ?></label>
                                        <textarea type="text" id="content" name="content" class="form-control"><?php echo $row->content;?></textarea>
                                        <span class="material-input"></span></div>
                                </div>
                            </div>

                            <div class="row">	
                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_link'); ?></label>
                                        <input type="text" id="link" name="link" class="form-control" value="<?php echo $row->link;?>" required>
                                        <span class="material-input"></span></div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group label-floating is-empty">
                                        <label class="control-label"><?php echo $this->lang->line('dash_gpanel_btn_text'); ?></label>
                                        <input type="text" id="btntext" name="btntext" class="form-control" value="<?php echo $row->btntext;?>">
                                        <span class="material-input"></span></div>
                                </div>
                            </div>

                            <button id="updateSectionSubmit" type="submit" class="btn btn-primary pull-right"><i class="material-icons">person_add</i> <?php echo $this->lang->line('dash_updatesection_panel_title'); ?></button>
                            <div class="clearfix"></div>
                        </form>

                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>