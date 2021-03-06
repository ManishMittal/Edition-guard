<!--
/*
 * @support
 * http://www.opensourcetechnologies.com/contactus.html
 * sales@opensourcetechnologies.com
 * */
-->
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-editionguard" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-editionguard" class="form-horizontal">
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="editionguard_email" value="<?php echo $editionguard_email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              <?php if ($error_editionguard_email) { ?>
              <div class="text-danger"><?php echo $error_editionguard_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-secret"><?php echo $entry_secret; ?></label>
            <div class="col-sm-10">
		  	  <input type="text" name="editionguard_secret" value="<?php echo $editionguard_secret;?>" class="form-control" placeholder="<?php echo $entry_secret; ?>" id="input-secret"/>
		      <?php if ($error_editionguard_secret) { ?>
              <div class="text-danger"><?php echo $error_editionguard_secret; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-distributorid"><?php echo $entry_distributorid; ?></label>
            <div class="col-sm-10">
			  <input type="text" name="editionguard_distributorid" value="<?php echo $editionguard_distributorid;?>" class="form-control" placeholder="<?php echo $entry_secret; ?>" id="input-secret"/>
			  <?php if ($error_editionguard_secret) { ?>
              <div class="text-danger"><?php echo $error_editionguard_secret; ?></div>
              <?php } ?>
             </div>
          </div>				
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="editionguard_status" id="input-status" class="form-control">
                <?php if ($editionguard_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="number" name="editionguard_sort_order" min='0' value="<?php echo $editionguard_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
