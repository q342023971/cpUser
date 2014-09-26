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

		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/admin/css/chosen.css" />

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

							<li class="active">系统设置</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form action="{cp::U('setting')}" method="post" class="form-horizontal" role="form">
										<div class="widget-box transparent" id="recent-box">
											<div class="widget-header">
												<h4 class="lighter smaller">
													<i class="icon-cogs orange"></i>
													系统设置
												</h4>

												<div class="widget-toolbar no-border">
													<ul class="nav nav-tabs" id="recent-tab">
														<li class="active">
															<a data-toggle="tab" href="#basic-tab">基础设置</a>
														</li>

														<li>
															<a data-toggle="tab" href="#member-tab">会员设置</a>
														</li>

														<li>
															<a data-toggle="tab" href="#email-tab">邮件服务器设置</a>
														</li>
													</ul>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div class="tab-content padding-8 overflow-visible">
														<div id="basic-tab" class="tab-pane active">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_NAME"> 网站名称 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_NAME" id="WEB_NAME" placeholder="请输入网站名称" value="{cp:&WEB_NAME}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_LTD"> 网站简称 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_LTD" id="WEB_LTD" placeholder="请输入网站简称" value="{cp:&WEB_LTD}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_URL"> 网站地址 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_URL" id="WEB_URL" placeholder="请输入网站地址，必须带“http://”开头，不能以“/”结束。" value="{cp:&WEB_URL}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_DOMAIN"> 网站域名 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_DOMAIN" id="WEB_DOMAIN" placeholder="请输入网站域名" value="{cp:&WEB_DOMAIN}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_KEYWORDS"> 网站关键词 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_KEYWORDS" id="WEB_KEYWORDS" placeholder="请输入网站关键词" value="{cp:&WEB_KEYWORDS}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="WEB_DESCRIPTION"> 网站描述 </label>

										<div class="col-sm-9">
											<input type="text" name="WEB_DESCRIPTION" id="WEB_DESCRIPTION" placeholder="请输入网站描述" value="{cp:&WEB_DESCRIPTION}" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 注册时显示会员协议 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.USER_REGISTER_AGREEMENT_STATE" value="1">
												<input name="USER_REGISTER_AGREEMENT_STATE" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="USER_REGISTER_AGREEMENT_STATE" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
									  <label class="col-sm-3 control-label no-padding-right" for="USER_REGISTER_AGREEMENT"> 会员协议 </label>

										<div class="col-sm-9">
											<textarea name="USER_REGISTER_AGREEMENT" rows="10" style="max-width:800px;" class="form-control" id="USER_REGISTER_AGREEMENT" placeholder="请输入会员注册协议">{cp:&USER_REGISTER_AGREEMENT}</textarea>
									  </div>
									</div>

									<div class="space-4"></div>
														</div>

														<div id="member-tab" class="tab-pane">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 用户名类型 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.USER_NAME_TYPE_TEXT" value="1">
												<input name="USER_NAME_TYPE_TEXT" type="checkbox" class="ace" value="text" checked />
												<else />
												<input name="USER_NAME_TYPE_TEXT" value="text" type="checkbox" class="ace" />
												</eq>
												<span class="lbl"> 字符串</span>
											</label>
											<label>
												<eq name="Think.config.USER_NAME_TYPE_MOBILE" value="1">
												<input name="USER_NAME_TYPE_MOBILE" type="checkbox" class="ace" value="mobile" checked />
												<else />
												<input name="USER_NAME_TYPE_MOBILE" value="mobile" type="checkbox" class="ace" />
												</eq>
												<span class="lbl"> 手机号码</span>
											</label>
											<label>
												<eq name="Think.config.USER_NAME_TYPE_EMAIL" value="1">
												<input name="USER_NAME_TYPE_EMAIL" type="checkbox" class="ace" value="email" checked />
												<else />
												<input name="USER_NAME_TYPE_EMAIL" value="email" type="checkbox" class="ace" />
												</eq>
												<span class="lbl"> 邮箱地址</span>
											</label>
											<label>
												<eq name="Think.config.USER_NAME_TYPE_API" value="1">
												<input name="USER_NAME_TYPE_API" type="checkbox" class="ace" value="api" checked />
												<else />
												<input name="USER_NAME_TYPE_API" value="api" type="checkbox" class="ace" />
												</eq>
												<span class="lbl"> API接口</span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 登陆前必须绑定 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.USER_NAME_MUST_BIND" value="1">
												<input name="USER_NAME_MUST_BIND" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="USER_NAME_MUST_BIND" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>
														</div><!-- member-tab -->

														<div id="email-tab" class="tab-pane">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 开启邮箱服务 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_FUNCTION" value="1">
												<input name="EMAIL_FUNCTION" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_FUNCTION" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>

										<div class="space-4"></div>

										<label class="col-sm-3 control-label no-padding-right"> 发送邮件方式 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_TYPE" value="smtp">
												<input name="EMAIL_TYPE" type="radio" value="smtp" class="ace" checked />
												<else />
												<input name="EMAIL_TYPE" type="radio" value="smtp" class="ace" />
												</eq>
												<span class="lbl"> smtp</span>
											</label>
											<label>
												<eq name="Think.config.EMAIL_TYPE" value="phpmail">
												<input name="EMAIL_TYPE" type="radio" value="phpmail" class="ace" checked />
												<else />
												<input name="EMAIL_TYPE" type="radio" value="phpmail" class="ace" />
												</eq>
												<span class="lbl"> 系统自带phpmail</span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										
										<label class="col-sm-3 control-label no-padding-right" for="EMAIL_FROM"> 发件人地址 </label>

										<div class="col-sm-9">
											<input type="text" name="EMAIL_FROM" id="EMAIL_FROM" placeholder="请输入发件人地址" value="{cp:&EMAIL_FROM}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="text-warning bigger-110 orange">如果您使用的是系统自带的smtp邮件服务，您不需要填写下面邮箱设置的内容。</div>

									<div class="form-group">
										
										<label class="col-sm-3 control-label no-padding-right" for="EMAIL_SMTP_HOST"> smtp主机 </label>

										<div class="col-sm-9">
											<input type="text" name="EMAIL_SMTP_HOST" id="EMAIL_SMTP_HOST" placeholder="请输入smtp主机" value="{cp:&EMAIL_SMTP_HOST}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										
										<label class="col-sm-3 control-label no-padding-right" for="EMAIL_SMTP_USERNAME"> smtp用户名 </label>

										<div class="col-sm-9">
											<input type="text" name="EMAIL_SMTP_USERNAME" id="EMAIL_SMTP_USERNAME" placeholder="请输入smtp用户名" value="{cp:&EMAIL_SMTP_USERNAME}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										
										<label class="col-sm-3 control-label no-padding-right" for="EMAIL_SMTP_PASSWORD"> smtp密码 </label>

										<div class="col-sm-9">
											<input type="password" name="EMAIL_SMTP_PASSWORD" id="EMAIL_SMTP_PASSWORD" placeholder="请输入smtp密码" value="{cp:&EMAIL_SMTP_PASSWORD}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										
										<label class="col-sm-3 control-label no-padding-right" for="EMAIL_SMTP_PORT"> smtp端口 </label>

										<div class="col-sm-9">
											<input type="text" name="EMAIL_SMTP_PORT" id="EMAIL_SMTP_PORT" placeholder="请输入smtp端口" value="{cp:&EMAIL_SMTP_PORT}" class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> smtp是否使用ssl协议 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_SMTP_SSL" value="1">
												<input name="EMAIL_SMTP_SSL" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_SMTP_SSL" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 邮件链接带自动登录参数 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_URL_LOGIN" value="1">
												<input name="EMAIL_URL_LOGIN" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_URL_LOGIN" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送注册成功欢迎邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_REGISTER_SUCCESS" value="1">
												<input name="EMAIL_REGISTER_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_REGISTER_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送密码修改成功通知邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_PASSWORD_SUCCESS" value="1">
												<input name="EMAIL_PASSWORD_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_PASSWORD_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送充值成功功通知邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_PAY_SUCCESS" value="1">
												<input name="EMAIL_PAY_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_PAY_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送用户组变更通知邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_GROUP_SUCCESS" value="1">
												<input name="EMAIL_GROUP_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_GROUP_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送用户等级变更通知邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_GRADE_SUCCESS" value="1">
												<input name="EMAIL_GRADE_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_GRADE_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"> 发送账户绑定成功通知邮件 </label>

										<div class="col-sm-9">
											<label>
												<eq name="Think.config.EMAIL_BIND_SUCCESS" value="1">
												<input name="EMAIL_BIND_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" checked />
												<else />
												<input name="EMAIL_BIND_SUCCESS" type="checkbox" class="ace ace-switch ace-switch-2" />
												</eq>
												<span class="lbl"></span>
											</label>
										</div>
									</div>

									<div class="space-4"></div>
														</div>
													</div>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div><!-- /widget-box -->
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="submit">
												<i class="icon-ok bigger-110"></i>
												提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="icon-undo bigger-110"></i>
												重置
											</button>
										</div>
									</div>
								</form>
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
</body>
</html>
