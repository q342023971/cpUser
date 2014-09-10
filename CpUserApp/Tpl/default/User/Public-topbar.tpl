	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="{cp::U('Index/index')}"><span>{cp:%MEMBER_CENTER}</span></a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> {cp::C('LANG_'.LANG_SET)}</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="Simplified Chinese" href="{cp::U('Index/index?l=zh-cn')}"><i class="icon-blank"></i> {cp::C('LANG_zh-cn')}</a></li>
						<li><a data-value="English" href="{cp::U('Index/index?l=en-us')}"><i class="icon-blank"></i> {cp::C('LANG_en-us')}</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> {cp:#userNAME}</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="{cp::U('Public/loginOut')}">{cp:%ACTION_USER_PUBLIC_LOGOUT}</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
