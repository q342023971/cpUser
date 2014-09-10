<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>{cp:&WEB_LTD} - {cp:%MEMBER_CENTER}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="zilaiye.org">

	<!-- The styles -->
	<link id="bs-css" href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/charisma-app.css" rel="stylesheet">
	<link href="{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/fullcalendar.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/chosen.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/uniform.default.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/colorbox.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/jquery.cleditor.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/jquery.noty.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/noty_theme_default.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/elfinder.min.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/elfinder.theme.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/opa-icons.css' rel='stylesheet'>
	<link href='{cp:*WEB_PUBLIC_PATH}/Skin/html5/css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/html5shiv.min.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>

<body>
		<include file="Public-topbar" />
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- left menu starts -->
			<div class="span2 main-menu-span">
				<div class="well nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="nav-header hidden-tablet">{cp:%TXT_MAIN}</li>
						<li><a class="ajax-link" href="index.html"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>
						<li><a class="ajax-link" href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
						<li><a class="ajax-link" href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
						<li><a class="ajax-link" href="chart.html"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
						<li><a class="ajax-link" href="typography.html"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
						<li><a class="ajax-link" href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
						<li class="nav-header hidden-tablet">Sample Section</li>
						<li><a class="ajax-link" href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
						<li><a class="ajax-link" href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
						<li><a class="ajax-link" href="grid.html"><i class="icon-th"></i><span class="hidden-tablet"> Grid</span></a></li>
						<li><a class="ajax-link" href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
						<li><a href="tour.html"><i class="icon-globe"></i><span class="hidden-tablet"> Tour</span></a></li>
						<li><a class="ajax-link" href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
						<li><a href="error.html"><i class="icon-ban-circle"></i><span class="hidden-tablet"> Error Page</span></a></li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
						<li class="nav-header hidden-tablet">账户管理</li>
						<li><a class="ajax-link" href="{cp::U('Info/editPassword')}"><i class="icon-home"></i><span class="hidden-tablet"> 修改资料</span></a></li>
						<li><a class="ajax-link" href="{cp::U('Info/editPassword')}"><i class="icon-home"></i><span class="hidden-tablet"> {cp:%ACTION_USER_INFO_EDITPASSWORD}</span></a></li>
						<li><a class="ajax-link" href="{cp::U('Info/editPassword')}"><i class="icon-home"></i><span class="hidden-tablet"> 修改密码保护</span></a></li>
						<li><a class="ajax-link" href="{cp::U('Info/editPassword')}"><i class="icon-home"></i><span class="hidden-tablet"> 账户日志</span></a></li>
					</ul>
					<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
				</div><!--/.well -->
			</div><!--/span-->
			<!-- left menu ends -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<div id="content" class="span10">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="{cp::U('Index/index')}">{cp:%ACTION_USER_INDEX_INDEX}</a> <span class="divider">/</span>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header well">
						<h2><i class="icon-info-sign"></i> {cp:%TXT_WELCOME}</h2>
					</div>
					<div class="box-content">
						<h1>{cp:#userNAME} <small>标题###########</small></h1>
						<p>介绍内容#########################</p>
						<p><b>上次登录IP：{cp:#lastloginip}，上次登录时间：{cp:$Think.cookie.lastlogindate|date="Y-m-d H:i:s",###}</b></p>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
					<!-- content ends -->
			</div><!--/#content.span10-->
				</div><!--/fluid-row-->
				
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		<footer>
			<p class="pull-left">&copy; <a href="http://www.zilaiye.org" target="_blank">zilaiye</a> 2012</p>
			<p class="pull-right">Powered by: <a href="{cp:&WEB_URL}">{cp:&COMPANY_NAME}</a></p>
		</footer>
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/excanvas.js"></script>
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.flot.min.js"></script>
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.flot.pie.min.js"></script>
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.flot.stack.js"></script>
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="{cp:*WEB_PUBLIC_PATH}/Skin/html5/js/jquery.history.js"></script>
	
		
</body>
</html>