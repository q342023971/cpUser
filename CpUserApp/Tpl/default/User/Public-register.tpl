<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns ="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>用户注册 {cp:&WEB_LTD}会员中心</title>
	<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/reset.css">
	<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/stylea.css">
	<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/newstyle.css">
	<link rel="stylesheet" type="text/css" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/styleaw.css" >
	<script type="text/javascript" src="http://ajax.719471.net/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/js/commona.js"></script>
	<style type="text/css">
	.btn {
		border: 1px solid #E4007F;
		border-radius: 2px;
		color: #FFF;
		width: 98px;
		height: 27px;
		line-height: 27px;
		cursor: pointer;
		background: none repeat scroll 0% 0% #E4007F;
	}
	.btn2{
		border: 1px solid #666666;
		border-radius: 2px;
		color: #FFF;
		width: 98px;
		height: 27px;
		line-height: 27px;
		cursor: pointer;
		background: none repeat scroll 0% 0% #666666;
	}
	</style>
</head>
<body>
<div class="index_header">
		<div class="header_info">
			<a href="" class="logo"><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/13984222352910.gif" /></a>
			<div class="top_nav">
			    <div class="fl" style="height:20px;margin-right:5px;"></div>
 			</div>
		</div>
		<div id="nav">
			<div class="overall">
				<ul id="add">
					<li><a href="/index.php?m=index" title="首页">首页</a></li>
					<li><a href="/index.php?m=notice&a=notice_detail&category_id=9&notice_id=5" title="联盟简介">联盟简介</a></li>
					<li><a href="/index.php?m=notice&a=notice_detail&category_id=9&notice_id=6" title="联盟协议">联盟协议</a></li>
					<li><a href="/index.php?m=notice&a=index&category_id=3" title="联盟公告">联盟公告</a></li>
					<li><a href="/index.php?m=notice&a=index&category_id=9" title="常见问题">常见问题</a></li>
				</ul>
			</div>
		</div>
	</div>
<script type="text/javascript" src="http://ajax.719471.net/ajax/libs/formvalidator/4.1.3/formValidator.min.js"></script>
<script type="text/javascript" src="http://ajax.719471.net/ajax/libs/formvalidator/4.1.3/formValidatorRegex.js"></script>
<script type="text/javascript">
		/*
		$(function(){
			$.formValidator.initConfig({formid:"register_account",autotip:true});
			$("#password").formValidator({onshow:"请输入密码，不得小于6位",onfocus:"请输入密码，不得小于6位",oncorrect:"&nbsp;"}).inputValidator({min:6,onerror:"请输入密码，不得小于6位"});
			$("#confirm_password").formValidator({onshow:"请重复输入以上密码",onfocus:"请重复输入以上密码",oncorrect:"&nbsp;"}).compareValidator({desid:"password",operateor:"=",onerror:"2次密码输入不一致"});
			$("#real_name").formValidator({onshow:"请填写真实姓名，方便与您联系",onfocus:"输入的真实姓名必须为 中文、字母或数字",oncorrect:"&nbsp;"}).inputValidator({min:1,onerror:"输入的真实姓名不能为空"}).regexValidator({regexp:"ps_username",datatype:"enum",onerror:"输入的真实姓名格式错误"});
			$("#mobile").formValidator({onshow:"联盟就付款、投放等重要问题和您保持联系的首选",onfocus:"输入的手机号必须为 11位",oncorrect:"&nbsp;"}).regexValidator({regexp:"mobile",datatype:"enum",onerror:"输入的手机号格式错误"});
			$("#qq").formValidator({onshow:"填写QQ信息，方便与联盟交流",onfocus:"请输入正确QQ号",oncorrect:"&nbsp;"}).regexValidator({regexp:"qq",datatype:"enum",onerror:"输入的QQ号格式错误"});
			$("#tel").formValidator({empty:true,onshow:"固定电话可以为空,若不为空，必须填写正确",onfocus:"固定电话格式:区号-电话号-分机号,或只填电话号",oncorrect:"&nbsp;"}).regexValidator({regexp:"^(\\d{3,4}-)?(\\d{7,8})(-\\d{1,5})?$",onerror:"您输入的固定电话格式不正确"});
			$("#name").formValidator({onshow:"您将使用此邮箱登录，请正确填写",onfocus:"请输入正确的邮箱",oncorrect:"&nbsp;"}).regexValidator({regexp:"^[a-zA-Z0-9_\.-]+@[A-Za-z0-9_\.-]+(\.[A-Za-z]+){1,2}$",onerror:"您输入的邮箱格式不正确"}).ajaxValidator({
		        datatype : "json",
		        async : true,
		        url : "http://adu.phpad.cn/index.php?m=user&a=register_web_email_check&",
		        success : function(data){		        
		        	if( data.status == "1" ){
			        	 return true;
			        }else{
	                 	return false;
			        }
		        },
		        buttons: $("#dosubmit"),
		        error: function(jqXHR,textstatus,errorthrown){alert("服务器没有返回数据，可能服务器忙，请重试"+errorthrown);},
		        onerror : "此邮箱已经被注册",
		        onwait : "正在对邮箱进行合法性校验，请稍候..."
	    	});	
			
		});
		
		*/
		$(function(){
			$('#mobileUser').click(function(){
				$('#mobileUser').attr("class","btn");
				$('#emailUser').attr("class","btn2");
				$('#mobiles').show();
				$('#emails').hide();
				$('#usertype').val('MOBILE');
			});
			$('#emailUser').click(function(){
				$('#mobileUser').attr("class","btn2");
				$('#emailUser').attr("class","btn");
				$('#mobiles').hide();
				$('#emails').show();
				$('#usertype').val('EMAIL');
			});
		});
	</script>
<div id="reg_con">
	<div class="reg_step">
		<ul>
			<li class="title">用户注册</li>
			<li class="active"><span>1.填写帐户信息</span></li>
			<li><span>2.查收邮件，激活帐户</span></li>
			<li><span>3.完成</span></li>
		</ul>
		<div class="clear"></div>
	</div>
    <div class="siter">
    	<h2>用户注册</h2>
        <form id="register_account" method="post" action="{cp::U('register')}"><input name="usertype" type="hidden" id="usertype" value="MOBILE" />
        <table width="780" border="0" cellspacing="1" cellpadding="1">
          <tbody>
          <tr>
            <th width="150"><span class="red">*</span>用户类型：</th>
            <td width="690"><input type="button" value="手机用户" class="btn" style="cursor: pointer;" id="mobileUser"/><input type="button" value="邮箱用户" class="btn2" style="cursor: pointer;" id="emailUser"/><input type="button" value="合作网站会员" class="btn2" style="cursor: pointer;" id="apiUser"/></td>
          </tr>
          <tr id="mobiles">
            <th width="150"><span class="red">*</span>手机号码：</th>
            <td width="690"><input type="text" name="mobile" id="mobile" class="input_text" size="40"></td>
          </tr>
          <tr id="emails" style="display:none;">
            <th width="150"><span class="red">*</span>邮箱地址：</th>
            <td width="690"><input type="text" name="email" id="email" class="input_text" size="40"></td>
          </tr>
          <tr>
            <th><span class="red">*</span>输入密码：</th>
            <td>
            	<input type="password" name="password" id="password" class="input_text" size="40">
            </td>
          </tr>
          <tr>
            <th><span class="red">*</span>密码确认：</th>
            <td>
            	<input type="password" name="confirm_password" id="confirm_password" class="input_text" size="40">
            </td>
          </tr>
          <!--
          <tr>
             <th><span class="red">*</span>验&nbsp;&nbsp;证&nbsp;&nbsp;码:</th>
             <td>
             	<input type="text" name="vcode" id="vcode" class="input_text" size="8" />
             	<img src="code.php" onclick="this.src='code.php?'+Math.random();" style="width:80px;height:25px;display:inline">
             </td>
          </tr>
          -->
          <tr>
            <th>&nbsp;</th>
            <td>
            	<input type="hidden" name="referrer_id" value="" />
            	<input type="submit" value="" class="reg_btn step_1_btn" id="dosubmit">
            </td>
          </tr>
        </tbody></table>
        <eq name="Think.config.USER_REGISTER_AGREEMENT_STATE" value="1">
        <h2>{cp:&WEB_LTD} 会员中心服务协议</h2>
		<div class="reg_agreement">
		<textarea readonly="readonly">{cp:&USER_REGISTER_AGREEMENT} </textarea>
		</div>
        </eq>
	</form>
</div>
</div>
<include file="Public-footer" />
</body>
</html>