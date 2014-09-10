                <div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<a class="btn btn-success" href="{cp::U('User/statistics')}" title="全站统计">
								<i class="icon-signal"></i>
							</a>

							<a class="btn btn-warning" href="{cp::U('User/userList')}" title="会员管理">
								<i class="icon-group"></i>
							</a>

							<a class="btn btn-info" href="{cp::U('User/authority')}" title="权限管理">
								<i class="icon-pencil"></i>
							</a>

							<a class="btn btn-danger" href="{cp::U('User/setting')}" title="系统设置">
								<i class="icon-cogs"></i>
							</a>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div>
					<ul class="nav nav-list">
						<li class="active"><a href="{cp::U('Index/index')}"><i class="icon-dashboard"></i><span class="menu-text"> 后台首页 </span></a></li>
						<li><a href="{cp::U('Pay/index')}"><i class="icon-credit-card"></i><span class="menu-text"> 充值记录 </span></a></li>
						<li><a href="{cp::U('Sms/index')}"><i class="	icon-envelope-alt "></i><span class="menu-text"> 站内信 </span></a></li>
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-cogs"></i>
								<span class="menu-text"> 会员设置 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li><a href="{cp::U('User/grade')}"><i class="icon-double-angle-right"></i>	会员等级	</a></li>
								<li><a href="{cp::U('User/group')}"><i class="icon-double-angle-right"></i>	会员组 </a></li>
								<li><a href="{cp::U('User/nameType')}"><i class="icon-double-angle-right"></i> 会员账户类型 </a></li>
							</ul>
						</li>
						<li><a href="{cp::U('User/ad')}"><i class="icon-desktop"></i><span class="menu-text"> 广告管理 </span></a></li>
						<li><a href="{cp::U('User/logs')}"><i class="icon-info-sign"></i><span class="menu-text"> 操作日志 </span></a></li>
					</ul>

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>
