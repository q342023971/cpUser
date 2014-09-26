<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>CP会员系统后台管理中心</title>
		<meta name="keywords" content="CP会员系统" />
		<meta name="description" content="CP会员系统" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/jquery-ui-1.10.3.full.min.css" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/datepicker.css" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/ui.jqgrid.css" />

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.useso.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/ace.min.css" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/html5shiv.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<include file="Public-navbar" />
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<include file="Public-sidebar" />

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="{cp::U('Index/index')}">后台首页</a>
							</li>

							<li class="active">操作日志</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								日志管理
								<small>
									<i class="icon-double-angle-right"></i>
									日志列表
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>id</th>
														<th>用户</th>
														<th>操作</th>
														<th>IP</th>
														<th><i class="icon-time bigger-110 hidden-480"></i> 时间</th>
													</tr>
												</thead>

												<tbody>
													<neq name="data['count']" value="0">
													<volist name="data['list']" id="vo">
                                                    <tr>
														<td><eq name="newLogs[$vo['id']]" value="1"><i style="color:#FF0000" class="icon-asterisk"></i></eq>{cp:$vo.id}</td>
														<td>{cp:$vo.username}</td>
														<td>【{cp::L('DB_SYSTEM_LOGS_ACTION_'.$vo['action'])} {cp::L($vo['type'])}】{cp::L('MODEL_USER_'.$vo['return'])}</td>
														<td>{cp:$vo.ip}</td>
														<td>{cp:$vo.time|date="Y-m-d H:i:s",###}</td>
													</tr>
                                                    </volist>
													<else />
													<tr>
														<td colspan="6">暂无内容</td>
													</tr>
													</neq>
												</tbody>
											</table>
											<div class="row">
												<div class="col-sm-6">
													
												</div>
												<div class="col-sm-6">
													<div class="dataTables_paginate paging_bootstrap">
                                                    	{cp:$data['page']}
													</div>
                                                </div>
                                            </div>
										</div>
									</div>
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="http://ajax.useso.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.useso.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/bootstrap.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/chosen.jquery.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/date-time/moment.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/jquery.maskedinput.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->

		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/ace-elements.min.js"></script>
		<script src="{cp:*WEB_PUBLIC_PATH}/Skin/admin/js/ace.min.js"></script>
		<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,
				  { "bSortable": false }
				] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
		</script>
</body>
</html>
