<?php foreach($individual as $row):?>
<div class="content view_event">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-offset-1 col-md-10">				
				<div class="card card-product">
					<div class="card-content">						
						<h4 class="card-title">
							<a href="#"><?php echo $row->prayertitle;?></a>
						</h4>
						<div class="card-description">
							<?php echo $row->prayerdescription;?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<?php endforeach;?>