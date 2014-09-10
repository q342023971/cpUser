<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
<title>首页_{cp:&WEB_NAME}</title>
<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/reset.css">
<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/stylea.css">
<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/newstyle.css">
<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/styleaw.css" >
<script type="text/javascript" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/js/commona.js"></script>
</head>
<body>
<div class="index_header">
		<div class="header_info">
			<a href="{cp::U('Index/index')}" class="logo"><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/13984222352910.gif" /></a>
			<div class="top_nav">
			    <div class="fl" style="height:20px;margin-right:5px;"></div>
 			</div>
		</div>
		<div id="nav">
			<div class="overall">
				<ul id="add">
						<li class="selected"><a href="{cp::U('Index/index')}" title="首页">首页</a></li>
						<li><a href="{cp::U('Article/67')}" title="联盟简介">联盟简介</a></li>
						<li><a href="{cp::U('Article/68')}" title="联盟协议">联盟协议</a></li>
						<li><a href="{cp::U('Article/list?pid=14')}" title="联盟公告">联盟公告</a></li>
						<li><a href="{cp::U('Article/list?pid=17')}" title="帮助中心">帮助中心</a></li>
                </ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	//促销商品鼠标经过出现橙色边框
	$(document).ready(function() {
		showtabs($("#index_login"))
		showtabs($("#index_act"))

		$(".sales_con dl").hover(function() {
			$(this).addClass("dl_hover")
		})
		$(".sales_con dl").mouseleave(function() {
			$(this).removeClass("dl_hover")
		})
	});
</script>
<script type="text/javascript">
	//首页促销7页广告图
	$(function() {
		var len = $(".adv_num_nav li").length;
		var index = 0;
		var adTimer;
		$(".adv_num_nav li").mouseover(function() {
			index = $(".adv_num_nav li").index(this);
			showImg(index);
		}).eq(0).mouseover();
		//滑入 停止动画，滑出开始动画.
		$('#adv_show').hover(function() {
			clearInterval(adTimer);
		}, function() {
			adTimer = setInterval(function() {
				showImg(index)
				index++;
				if (index == len) {
					index = 0;
				}
			}, 4000);
		}).trigger("mouseleave");
	})
	// 通过控制top ，来显示不同的幻灯片
	function showImg(index) {
		var adHeight = $("#adv_show").height();
		$(".adv_pic").stop(true, false).animate({
			top : -adHeight * index
		}, 1000);
		$(".adv_num_nav li").removeClass("on").eq(index).addClass("on");
	}

	//网站主登录
	function dologin_web(){
		var fm = document.getElementById('siterform');
		var username = fm.username.value;
		var password = fm.password.value;
		if(username == ""){
			$('#check_web_username').html('用户名不能为空');
		}else if(password == ""){
			$('#check_web_password').html('密码不能为空');
		}else{
			$("#siterform").submit();
		}
	}

	//广告主登录
	function dologin_adv(){
		var fm2 = document.getElementById('siterform2');
		var username = fm2.username.value;
		var password = fm2.password.value;
		if(username == ""){
			$('#check_adv_username').html('用户名不能为空');
		}else if(password == ""){
			$('#check_adv_password').html('密码不能为空');
		}else{
			$("#siterform2").submit();
		}
	}
</script>


    <div class="clearfix">
	<div class="throughbar">
		<script type="text/javascript" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/js/slideimg.js"></script>
		
		<div class="banner fl">
        	<div id="J_SlidePlayer_510" class="tb-slide">
              <ul class="img-box" style="top: 0px;">
              <li><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/b1.jpg" alt="flash1" border="0" width="690" height="270"></li>
			  <li><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/b2.jpg" alt="flash2" border="0" width="690" height="270"></li>
              </ul>
             </div>
            <script type="text/javascript">
    			$("#J_SlidePlayer_510").slideImg({
                    speed: "normal",
                    timer: 3000
                });
			</script>
        </div>
		<div class="login" id="index_login">
			<ul class="tabs">
				<li class="selected">用户登陆</li>
				<li></li>
			</ul>
			<div class="clear"></div>
<present name="member_Info">
			<div class="tabs_con">
				<div class="log_on_info">
					<p>
						欢迎您，
						<a href="{cp::U('Profile/index')}" class="orange">{cp:$member_Info.nickname}</a>
					</p>
				</div>
				<div class="log_on_btn">
					<a href="{cp::U('Web/index')}">进入我的联盟</a>
				</div>
				<div class="log_on_menu">
					<a href="{cp::U('Plan/index')}">获取广告</a>
					|
					<a href="{cp::U('Report/index')}">查看报表</a>
					|
					<a href="{cp::U('Profile/index')}">个人信息</a>
				</div>	
			</div>
<else />
			<!--用户登陆-->
			<div class="tabs_con" style="display: block;">
				<a class="login_btn" href="{cp::U('User-Public/login')}" style="margin-top:40px;margin-left:70px;margin-bottom:100px;">用户登录</a>
				<div class="reg_btn">
					<a href="{cp::U('User-Public/register')}">10秒钟免费注册</a>
				</div>
			</div>
</present>
			<!--立即注册-->
			<div class="tabs_con" style="display: none;">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
			    <br><br><br>
                <tr>
    				 <td colspan="2" align="center">
    					<a href="{cp::U('User-Public/register')}" class="login_btn" align="center">立即注册</a>
    		         </td>
                </tr>
            </table>
		    </div>
			<!--圆角底部-->
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="clearfix">
	<!--公告、咨询和详情-->
		<div class="throughbar news">
		<div class="news_box">
			<h3>
				<a href="{cp::U('Article/list?pid=14')}">更多&gt;&gt;</a>
				会员公告
			</h3>
			<ul>
			  <volist name="AList" id="vo" key="k">
			    <li><em class="orange_bg">{cp:$k}</em><a href="{cp::U('Article/'.$vo['id'])}"><font color="red">&nbsp;&nbsp;{cp:$vo.title}</font></a>
					<span class="fl">{cp::date('m-d',$vo['dateline'])}</span>
				</li>
			  </volist>
			</ul>
		</div>
		<div class="news_box">
			<h3>
				<a href="{cp::U('Article/list?pid=19')}">更多&gt;&gt;</a>
				优惠信息
			</h3>
            <ul>
			  <volist name="AJList" id="vo" key="k">
			    <li><em class="orange_bg">{cp:$k}</em><a href="{cp::U('Article/'.$vo['id'])}"><font color="red">&nbsp;&nbsp;{cp:$vo.title}</font></a>
					<span class="fl">{cp::date('m-d',$vo['dateline'])}</span>
				</li>
			  </volist>
			</ul>
		</div>
		<div class="news_box last">
			<h3>
				<a href="{cp::U('Article/list?pid=20')}">更多&gt;&gt;</a>
				最新资讯
			</h3>
             <ul>
			  <volist name="AWList" id="vo" key="k">
			    <li><em class="orange_bg">{cp:$k}</em><a href="{cp::U('Article/'.$vo['id'])}"><font color="red">&nbsp;&nbsp;{cp:$vo.title}</font></a>
					<span class="fl">{cp::date('m-d',$vo['dateline'])}</span>
				</li>
			  </volist>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="clearfix" style="display:none;">
	<!--活动-->
	<div id="index_act" class="throughbar">
		<ul class="tabs">
			<li class="selected">推荐活动</li>
			<li>最新活动</li>
		</ul>
		<div class="clear"></div>
		<!-- 推荐活动-->
		<div class="tabs_con" style="display: block;">
			<volist name="TJHDlist" id="vo">
			<dl>
				<dt>		
					<a href="http://www.phpcps.com/index.php?m=plan&a=plan_detail&plan_id=132">
						<img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/13858748746239.jpg" width="150" height="53" alt="一号店">
					</a>
				</dt>
				<dd>
					<p><a href="http://www.phpcps.com/index.php?m=plan&a=plan_detail&plan_id=132">一号店	</a></p>
					<p>类型：cps</p>
					<p style="height: 20px;overflow:hidden;">佣金： </p>
				</dd>
			</dl>
			</volist>
			<div class="clear"></div>
		</div>
		
		<!--最新活动  -->
		<div class="tabs_con" style="display: none;">
			<volist name="ZXHDlist" id="vo">
			<dl>
				<dt>
					<a href="http://www.phpcps.com/index.php?m=plan&a=plan_detail&plan_id=155">
						<img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/13981319276532.jpg" width="150" height="53" alt="网站主定价">
					</a>
				</dt>
				<dd>
					<p><a href="http://www.phpcps.com/index.php?m=plan&a=plan_detail&plan_id=155">网站主定价</a></p>
					<p>类型：cps</p>
					<p style="height: 20px;overflow:hidden;">佣金：12%-20% </p>
				</dd>
			</dl>
			</volist>
			<div class="clear"></div>
		</div>
	</div>
	<!--活动结束-->
</div>
<!--积分奖励开始-->
<div class="clearfix" style="display:none;">
	<div class="throughbar">
		<div class="jf_reward">
			<h2>
				<a href="http://www.phpcps.com/index.php?m=scoremall&a=scoremall_list&" target="_blank">更多&gt;&gt;</a>
				<span>积分奖励</span>
			</h2>
			<ul>
				<volist name="JFJLlist" id="vo">
				<li>
					<a href="http://www.phpcps.com/index.php?m=scoremall&a=scoremall_detail&goods_id=1">
						<img width="65" height="65" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/s_13818096748423.jpg" alt="联想 乐Pad A1 7英寸平板电脑">
					</a>
				</li>
				</volist>
			</ul>
		</div>
	</div>
</div>
<!--积分奖励结束-->
<!--推荐产品开始-->
<div class="clearfix">
	<div class="throughbar">
		<div class="index_yhq">
			<h2>
				<a href="{cp::U('Home-Pro/hot')}">更多&gt;&gt;</a>
				<span>旗下网站</span>
			</h2>
			<div class="index_tjcp_con">
				<volist name="PList" id="p_vo">
				<dl>
					<dt><a href="{cp::U('Home-pid/'.$p_vo['id'])}"><img src="{cp::thumb($p_vo['bigimage'],100,150)}" width="100" height="150" alt="{cp:$p_vo.name}"></a></dt>
					<dd><a href="{cp::U('Home-pid/'.$p_vo['id'])}"><span>{cp:$p_vo.name}</span></a>	</dd>
				</dl>
				</volist>
			</div>
		</div>
	</div>
</div>
<!--推荐产品结束-->

<!-- 优惠券开始 -->
<div class="clearfix" style="display:none;">
	<div class="throughbar">
		<div class="index_yhq">
			<h2>
				<a href="http://www.phpcps.com/index.php?m=index&a=plan_coupon_select&">更多&gt;&gt;</a>
				<span>优惠劵</span>
			</h2>
			<div class="index_yhq_con">
				<volist name="JFJLlist" id="vo">
				<dl>
					<dt><a href="http://www.phpcps.com/index.php?m=index&a=plan_coupon_select&"><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/13758415307488.gif" width="110" height="39" alt="amazon cps"></a></dt>
					<dd><a href="http://www.phpcps.com/index.php?m=index&a=plan_coupon_select&"><span>20无限制</span></a>	</dd>
				</dl>
				</volist>
			</div>
		</div>
	</div>
</div>
<!-- 优惠券结束 -->
<include file="Public-footer" />