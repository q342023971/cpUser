        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">{cp:%TXT_MAIN}</li>
                        <li><a class="ajax-link" href="{cp::U('Index/index')}"><i class="glyphicon glyphicon-user"></i><span> 会员中心</span></a></li>
						<volist name="expansion" id="vo">
						<li class="accordion">
                            <a href="#"><i class="{cp::L($vo['config']['ICON'])}"></i><span> {cp::L($vo['config']['CPUSER_EXPANSION_NAME'])}</span></a>
                            <ul class="nav nav-pills nav-stacked">
							<volist name="vo['dir']" id="vo2">
                                <li><a href="{cp::U($vo2['config']['URL'])}">{cp::L($vo2['config']['CPUSER_EXPANSION_NAME'])}</a></li>
							</volist>
                            </ul>
                        </li>
						</volist>
                        <!--<li><a class="ajax-link" href="typography.html"><i class="glyphicon glyphicon-list-alt"></i><span> 订单</span></a></li>-->
                        <!--<li><a class="ajax-link" href="gallery.html"><i class="glyphicon glyphicon-credit-card"></i><span> 充值</span></a></li>-->
						<!--<li><a class="ajax-link" href="typography.html"><i class="glyphicon glyphicon-envelope"></i><span> 信息</span></a></li>-->
                        <li class="nav-header hidden-md">账户管理</li>
                        <!--<li><a class="ajax-link" href="{cp::U('Info/index')}"><i class="glyphicon glyphicon-list-alt"></i><span> 用户资料</span></a></li>-->
                        <php>if(!C('SubUser')){</php><li><a class="ajax-link" href="{cp::U('Info/editPassword')}"><i class="glyphicon glyphicon-info-sign"></i><span> {cp:%ACTION_USER_INFO_EDITPASSWORD}</span></a></li><php>}</php>
                        <php>if(!C('SubUser')){</php><li><a class="ajax-link" href="{cp::U('Info/editPasswordProtection')}"><i class="glyphicon glyphicon-info-sign"></i><span> 修改密保</span></a></li><php>}</php>
                        <li><a class="ajax-link" href="{cp::U('Info/logs')}"><i class="glyphicon glyphicon-info-sign"></i><span> 账户日志</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
