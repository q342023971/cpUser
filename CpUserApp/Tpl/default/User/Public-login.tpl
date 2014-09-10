<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="dns-prefetch" href="http://ajax.719471.net/">
<meta name="description" content="{cp:&WEB_DESCRIPTION}">
<meta name="keywords" content="{cp:&WEB_KEYWORDS}">
<title>用户登录 {cp:&WEB_LTD}会员中心</title>
<link rel="shortcut icon" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/login/favicon.ico" />
<link type="text/css" rel="stylesheet" href="{cp:*WEB_PUBLIC_PATH}/Skin/web/css/login/style.css">
<!--待修改开始-->
<script id="jsOption" type="text/javascript">
//当前域名配置
var gOption = {
	"sDomain" : "126.com",
	"sCookieDomain" : "id.719471.net",
	"sAutoLoginUrl" : "http://mail.126.com/entry/cgi/ntesdoor?hid=10010102&lightweight=1&verifycookie=1&from=web&df=webmail126",
	"sSslAction" : "https://mail.126.com/entry/cgi/ntesdoor?",
	"product" : "cpUser",
	"url" : "http://id.719471.net/index.php?g=User&m=Public&a=logins",
	"url2" : "http://mail.126.com/errorpage/error126.htm",
	"gad" : "id.719471.net",
	"RSA" : 0
}
document.domain = 'id.719471.net';
</script>
<script id="jsBase" type="text/javascript" src="{cp:*WEB_PUBLIC_PATH}/Skin/web/js/login/base_v5.min.js"></script>
<script id="jsInit" type="text/javascript">
fCheckCookie();
fCheckAutoLogin();
if(!fGetQuery('errorType')){ // 有错误信息时不自动登录
	fAutoLogin();
}
fCheckBrowser();
fHtml5Tag();
</script>
</head>

<body>
<header class="header">
	<h1 class="headerLogo"><a href="{cp:&WEB_URL}" target="_blank" title="走近齐耀科技从这里开始"><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/login/logo.gif" alt="齐耀科技会员中心" /></a></h1>
	<nav class="headerNav">
		<a href="http://wx.719471.net" target="_blank">齐耀微信营销平台</a><a href="http://www.cpweb.net.cn/" target="_blank">CPWEB</a><a href="http://baike.719471.net" target="_blank">帮助</a>&nbsp;|&nbsp;<a class="last" href="http://wpa.qq.com/msgrd?v=1&uin=342023971&site=qq&menu=yes" target="_blank">在线答疑</a>
	</nav>
</header>

<section class="main" id="mainBg">
	<div class="main-inner" id="mainCnt">
		<div id="theme">
			<noscript><p class="noscriptTitle">浏览器不支持或禁止了网页脚本，<br/>导致您无法正常登录。</p><br/><a class="noscriptLink" href="http://help.mail.163.com/faqDetail.do?code=d7a5dc8471cd0c0e8b4b8f4f8e49998b374173cfe9171305fa1ce630d7f67ac2122641eb4548bd1e" target="_blank">如何解除脚本限制</a></noscript>
		</div>
		<div class="themeCtrl">
			<a id="prevTheme" href="javascript:void(0);" onClick="themeHandler.showPrev()" title="上一张"></a>
			<a id="nextTheme" href="javascript:void(0);" onClick="themeHandler.showNext()" title="下一张"></a>
		</div>
	</div>
	<!--气泡浮层遮罩-->
	<div id="mainMask" style="display:none"></div>
	<!--通用气泡浮层-->
	<div id="bubbleLayer" class="layer">
		<div class="layer-hd"></div>
		<div id="bubbleLayerWrap" class="layer-mid"></div>
		<div class="layer-ft"></div>
		<div id="layerArr" class="layer-arrow"></div>
	</div>
	<!--登录框-->
	<div id="loginBlock" class="login tab-1">
		<div class="loginFunc">
			<div id="lbNormal" class="loginFuncNormal">
				齐耀帐号登录
			</div>
			<div id="lbDynPw" class="loginFuncDynPw">
				合作账户登录
			</div>
		</div>
		<div class="loginForm">
			<form id="loginCp" name="loginCp" method="post" action="{cp::U('Public/login')}" target="frameforlogin">
				<input type="hidden" id="username" name="username" value="0" />
				<input type="hidden" id="savelogin" name="savelogin" value="0" />
				<input type="hidden" id="url2" name="url2" value="http://mail.126.com/errorpage/error126.htm" />
				<!-- 普通密码登录 -->
				<div id="normalLogin">
                    <div id="idInputLine" class="loginFormIpt showPlaceholder">
                        <b class="ico ico-uid"></b>
                        <input class="formIpt" tabindex="1" title="请输入帐号" id="idInput" type="text" maxlength="50" value="" />
                        <div id="mobtips"></div>
                        <label for="idInput" class="placeholder" id="idPlaceholder">邮箱帐号或手机号</label>
                    </div>
					<div id="pwdInputLine" class="loginFormIpt showPlaceholder">
						<b class="ico ico-pwd"></b>
						<input class="formIpt" tabindex="2" title="请输入密码" id="pwdInput" name="password" type="password"/>
						<label for="pwdInput" class="placeholder" id="pwdPlaceholder">密码</label>
						<p id="capsLockHint" style="display: none">大写状态开启</p>
					</div>
					<div class="loginFormCheck">
						<div id="lfAutoLogin" class="loginFormCheckInner">
							<b class="ico ico-checkbox"></b>
							<label id="remAutoLoginTxt" for="remAutoLogin">
								<input tabindex="3" title="十天内免登录" class="loginFormCbx" type="checkbox" id="remAutoLogin" />
							十天内免登录</label>
							<div id="whatAutologinTip">为了您的信息安全，请不要在网吧或公用电脑上使用此功能！
							</div>
						</div>
						<div class="forgetPwdLine">						
							<a class="forgetPwd" href="http://reg.163.com/getpasswd/RetakePassword.jsp?from=mail126" target="_blank" title="找回密码">忘记密码了?</a>
						</div>
					</div>
					<div class="loginFormBtn">
						<button id="loginBtn" class="btn btn-main btn-login" tabindex="6" type="submit">登&nbsp;&nbsp;录</button>
						<a id="lfBtnReg" class="btn btn-side btn-reg" href="http://reg.email.163.com/mailregAll/reg0.jsp?from=126mail" target="_blank" tabindex="7">注&nbsp;&nbsp;册</a>
					</div>
				</div>
				<!-- 动态密码登录 -->
				<div id="dynPwLogin" style="display:none">
					合作网站接口列表：QQ，微信，微博，支付宝，淘宝（制作中）
				</div>
				<div class="mailApp">
					<a class="mailApp-android" href="http://mail.163.com/client/dl.html?from=mail5" target="_blank"><b class="ico ico-android"></b><span>Android版</span></a><a class="mailApp-ios" href="http://mail.163.com/client/dl.html?from=mail5" target="_blank"><b class="ico ico-ios"></b><span>iPhone版</span></a>
				</div>
			</form>
			<div class="ext" id="loginExt">
				<ul id="extText"></ul>
			</div>
		</div>

		<!-- 易信登录 -->
		<a id="yxLoginEntry" href="javascript:void(0)" title="使用易信扫一扫快速登录！"></a>
		<div id="loginByYX" class="loginByYX">
			<h3>使用<a class="yxLink" href="http://www.yixin.im" target="_blank"><b class="ico ico-yxLogo"></b>易信</a>扫一扫快速登录</h3>
			<img id="yxCode" width="165" height="165" src="" />
			<div id="yxCodeTxt" class="loginByYX-txt"></div>
			<p class="loginByYX-install">手机还没有安装易信？<br /><a href="http://yixin.im/" target="_blank">马上安装</a></p>
			<div id="yxCodeRefresh" style="display:none;">
				<div class="loginByYX-mask"></div>
				<div class="loginByYX-refreshWrap">
					<a id="refeshYXCodeBtn" class="loginByYX-refreshBtn" href="javascript:void(0)">刷 新</a>
					<p class="loginByYX-refreshHint"><b>二维码已失效</b><br/>请刷新后重新扫描</p>
				</div>
			</div>
			<a id="closeYxLogin" href="javascript:void(0)" title="关闭"></a>
			<form id="codeLoginForm" method="post" action="" autocomplete="off" target="_self"></form>
		</div>
	</div>
</section>
<!--待修改结束-->
<footer id="footer" class="footer">
	<div class="footer-inner" id="footerInner">
		<a class="footerLogo" href="http://www.719471.net" target="_blank"><img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/login/netease_logo.gif" alt="齐耀科技"/></a>
		<a id="KX_IMG" style="position:absolute;right:50PX;top:24px;" href="ss.knet.cn/verifyseal.dll?sn=e12052344010022026301459&ct=df&pa" target="_blank">
			<img src="{cp:*WEB_PUBLIC_PATH}/Skin/web/img/login/knet.png" alt="可信网站，身份验证" />
		</a>
		<nav class="footerNav">
			<a href="http://www.cpweb.net.cn/down/read/id/7.html" target="_blank">关于CPWEB</a><a href="http://mail.163.com/html/mail_intro" target="_blank">关于齐耀</a><a href="http://www.zilaiye.org" target="_blank">自来也官方博客</a><a href="http://baike.719471.net" target="_blank">客户服务</a><a style="margin-right:10px" href="http://corp.163.com/gb/legal/legal.html" target="_blank">隐私政策</a>|<span class="copyright">{cp:&WEB_LTD}版权所有&copy;1997-2014</span>|<a href="http://www.miibeian.gov.cn/" target="_blank">粤ICP备13090253号</a>
		</nav>
	</div>
</footer>
<!--待修改开始-->
<!--遮罩-->
<div id="mask" class="mask" style="display:none;"></div>
<!--登录提示弹框-->
<div class="enhttp" style="display:none" id="enhttpblock">
	<iframe class="httploginframe" src="about:blank" id="frameforlogin" name="frameforlogin" style="overflow:hidden;border:0">登录iframe</iframe>
</div>

<script id="jsExec" type="text/javascript">
/* 全局变量 */
// 保存UD数据，用于缓存
var gAdUserPropertyData;
// 定义广告素材全局变量
var gAdResData = {
	// 1、手机号码
	mobile : function(){
		return nRandom = 0;
	},
	// 2、易信
	yixin : function(){
		return nRandom = 1;
	},
	// 3、云音乐
	music : function(){
		return nRandom = 3;
	},
	// 4、云阅读
	read : function(){
		return nRandom = 4;
	},
	// 5、新闻客户端
	news : function(){
		return nRandom = 5;
	}
};

//错误提示语
var gErrorInfo = {
	'noId' : {
		'title' : '请先输入您的帐号'
	},
	'noPhone' : {
		'title' : '请先输入您的手机号码邮箱帐号'
	},
	'noPw' : {
		'title' : '请输入您的密码'
	},
	'noDynPwByMob' : {
		'title' : '请输入手机短信中的动态密码'
	},
	'noDynPwByYX' : {
		'title' : '请输入易信接收到的动态密码'
	},
	'dynPwWrong' : {
		'title' : '您输入的动态密码错误，请重新输入'
	},
	'noBindingMob' : {
		'title' : '该邮箱帐号未绑定手机号码，需绑定才能使用动态密码功能 <a id="bindMobileBtn" href="http://shouji.mail.163.com/?from=dtmm" target="_blank">立即绑定>></a>'
	},
	'dynPwd2Much' : {
		'title' : '您今天使用动态密码登录次数太多了，请用普通密码登录吧'
	},
	'mobLoginWrongDomain' : {
		'title' : '这个帐号请到<a href="http://mail.163.com">163邮箱</a>进行登录'
	},
	'inputWrong' : {
		'title' : '帐号或密码错误',
		'info' 	: '1. 请检查帐号拼写，是否输入有误<br />2. 若帐号长期未登录，可能已被注销，请<a href="http://reg.email.163.com/unireg/call.do?cmd=register.entrance&from=126mail_right" target="_blank">重新注册</a><br />3. 若您忘记密码，请<a href="http://reg.163.com/getpasswd/RetakePassword.jsp?from=mail126" target="_blank">找回密码</a><br/>4. 若您需要锁定此帐号，请<a href="http://reg.163.com/lockuser/LockUserByPingma_0.jsp" target="_blank">点击这里</a><br/>5. 若手机号码邮箱的手机号已更换，可<a href="http://reg.163.com/mobilealias/findBindHistoryIndex.do" target="_blank">找回原帐号</a>'
	},
	'idLocked' : {
		'title' : '抱歉！您的帐号已被锁定，<br />暂时无法登录。'
	},
	'systemBusy' : {
		'title' : '繁忙的系统暂时需要停下歇歇，请您稍后再试。'
	},
	'loginWrong' : {
		'title' : '您的登录过于频繁，请稍后再试。'
	},
	'loginTimeout' : {
		'title' : '登录超时！',
		'info' 	: '当前邮箱登录状态已失效, 请重新登录。'
	}
};

(function(window){
	window.indexLogin = {
		init 					: fInit,
		setUserInfo 			: fSetUserInfo,
		// 输入相关
		initInputBox 			: fInitInputBox,
		focusInputBox 			: fFocusInputBox,
		checkPw 				: fCheckPw,
		checkInputAlways 		: fCheckInputAlways,
		handleString 			: fHandleString,
		// tab切换相关
		switchTab 				: fSwitchTab,
		switchTabTimeout 		: fSwitchTabTimeout,
		setbSwitchTabTimeout 	: fSetbSwitchTabTimeout,
		// 登录相关
		submitForm 				: fSubmitForm,
		showError 				: fShowError,
		showLayer 				: fShowLayer,
		hideLayer 				: fHideLayer,
		yxLogin 				: fInitYxLogin,
		zoomWrap 				: fZoomWrap,
		vericalAlignBody 		: fVericalAlignBody,
		// 其它
		KX 						: fKX
	};

	var oId, oIdL, oPw, oPwL;
	var tab1Cls = 'login tab-1',
		tab2Cls = 'login tab-2';
	var ntabOn = 1,
		sTmpPwd = '',
		sTmpDynPwd = '';
	var bSwitchTabTimeout = true;

	//登录流程
	var fScaleInterval = null,
		bStartScale = false;

	function fInit(){
		var me = this;

		oId = $id('idInput');
		oIdL = $id('idInputLine');
		oPw = $id('pwdInput');
		oPwL = $id('pwdInputLine');

		window.frames['frameforlogin'].location.href = 'about:blank';
		// 读取url判断是否有错误信息
		var sErrKey = 'errorType';
		if(window.location.href.indexOf('?' + sErrKey) > -1){
			var sErrorCode = fGetQuery(sErrKey);
			me.showError(sErrorCode);
		}

		// tab控制
		if(gbForcepc){
			tab1Cls = 'login tab-1 tab-11';
		}
		$id('loginBlock').className = tab1Cls;

		var oTab2 = $id('lbDynPw');
		fEventListen(oTab2, 'mouseover', me.switchTabTimeout);
		fEventListen(oTab2, 'mouseout', me.setbSwitchTabTimeout);

		if((window.location.href.indexOf('tab2') > -1) || fGetQueryHash('tab') == '2'){
			me.switchTab(); // 手机号码邮箱
		}

		me.focusInputBox();

		me.setUserInfo();
		me.initInputBox();

		// 绑定提交表单事件
		// fEventListen($id('loginCp'), 'submit', me.submitForm);
		$id('loginCp').onsubmit = function(){
			return me.submitForm();
		};

		// 大写锁定开启判断
		var oCapsLockTest = new CapsLock({
			el : oPw,
			change : function(bFlag){
				var oHint = $id('capsLockHint');
				if(bFlag){
					oHint.style.display = 'block';
				}else{
					oHint.style.display = 'none';
				}
			}
		});
		
		me.yxLogin();
		me.KX(); // 可信标识
	}

	/**
	 * 根据cookie预设用户信息
	 */
	function fSetUserInfo(){
		var me = this;

		// 用户名设定
		var sUser = gUserInfo.username,
			sUid = fGetQueryHash('uid'),
			sErrorUsername = fGetQuery('errorUsername', true),
			sResult;
		if(sUser != null){
			oId.autocomplete='on';
		}else{
			oId.autocomplete='off';
		}
		try{ oId.focus(); }catch(e){}
		if((sUser != '' && sUser != null) || sErrorUsername != null){
			sResult = sUser;
			if( sUid != null ){
				sResult = sUid;
			}
			// 错误页跳转参数
			if(sErrorUsername != null){
				sResult = sErrorUsername;
			}
			oId.value = sResult;
			fCls(oIdL, 'showPlaceholder', 'remove');
			//gMobileNumMail.getNumFromMail(oId.value);
			try{ oPw.focus(); }catch(e){}
		}
	}

	/**
	 * 绑定输入框事件
	 */
	function fInitInputBox(){
		var me = this;
		var oLo = $id('loginBtn'),
			oRg = $id('lfBtnReg'),
			oIdLabel = $id('idPlaceholder'),
			oPwLabel = $id('pwdPlaceholder'),
			oAutoTips = $id('whatAutologinTip'),
			oAutoLoginWrap = $id('lfAutoLogin'),
			oAutoLoginCheckbox = oAutoLoginWrap.getElementsByTagName('b')[0],
			oRemAutoLogin = $id('remAutoLogin'),
			oAutoLoginTxt = $id('remAutoLoginTxt');
		var oBubbleLayer = $id('bubbleLayer');
		//帐号
		fEventListen(oIdL, 'mouseover', function(){
			fCls(oIdL, 'loginFormIpt-over', 'add');
		});
		fEventListen(oIdL, 'mouseout', function(){
			fCls(oIdL, 'loginFormIpt-over', 'remove');
		});
		fEventListen(oId, 'focus', function(){
			fCls(oId, 'formIpt-focus', 'add');
			fCls(oIdL, 'loginFormIpt-focus', 'add');
		});
		fEventListen(oId, 'blur', function(){
			fCls(oIdL, 'loginFormIpt-focus', 'remove');	
			if(oId.value == ''){
				fCls(oIdL, 'showPlaceholder', 'add');
				fCls(oId, 'formIpt-focus', 'remove');
			}
		});

		var sEventName = '';
		var bIsIe = false;
		if(document.body.onpropertychange === null){
			sEventName = 'propertychange';
			var bIsIe = true;
		}else{
			sEventName = 'input';
			me.checkInputAlways();
		}
		var el = document.createElement('div');
		el.setAttribute('oninput', 'return;')
		if(typeof el.oninput === 'function'){
			sEventName = 'input';
			if(bIsIe){
				me.checkInputAlways();
			}
		}
		//fEventListen(oId, sEventName, me.idInputEvent);
		//点击双击文字
		fEventListen(oIdLabel, 'dbclick', function(){
			oId.focus();
		});
		fEventListen(oIdLabel, 'click', function(){
			oId.focus();
		});

		//密码
		fEventListen(oPwL, 'mouseover', function(){
			fCls(oPwL, 'loginFormIpt-over', 'add');
		});
		fEventListen(oPwL, 'mouseout', function(){
			fCls(oPwL, 'loginFormIpt-over', 'remove');
		});
		fEventListen(oPw, 'focus', function(){
			fCls(oPw, 'formIpt-focus', 'add');
			fCls(oPwL, 'loginFormIpt-focus', 'add');
		});
		fEventListen(oPw, 'blur', function(){
			fCls(oPwL, 'loginFormIpt-focus', 'remove');
			if(oPw.value == ''){
				fCls(oPwL, 'showPlaceholder', 'add');
				fCls(oPwL, 'formIpt-focus', 'remove');
			}
		});
		fEventListen(oPw, sEventName, me.checkPw);
		//点击双击文字
		fEventListen(oPwLabel, 'dbclick', function(){
			oPw.focus();
		});
		fEventListen(oPwLabel, 'click', function(){
			oPw.focus();
		});
		//十天自动登录checkbox
		fEventListen(oAutoLoginCheckbox, 'click', function(){
			if(oRemAutoLogin.checked){
				fCls(oAutoLoginWrap, 'autoLogin-checked', 'remove');
				oRemAutoLogin.checked = false;
			}else{
				fCls(oAutoLoginWrap, 'autoLogin-checked', 'add');
				oRemAutoLogin.checked = true;
			}
		});
		fEventListen(oAutoLoginTxt, 'click', function(){
			if(oRemAutoLogin.checked){
				fCls(oAutoLoginWrap, 'autoLogin-checked', 'remove');
				oRemAutoLogin.checked = false;
			}else{
				fCls(oAutoLoginWrap, 'autoLogin-checked', 'add');
				oRemAutoLogin.checked = true;
			}
		});
		//十天自动登录文字提示
		fEventListen(oAutoLoginTxt, 'mouseover', function(){
			oAutoTips.style.display = 'block';
		});
		fEventListen(oAutoLoginTxt, 'mouseout', function(){
			oAutoTips.style.display = 'none';
		});
		//登录按钮
		fEventListen(oLo, 'mouseover', function(){
			fCls(oLo, 'btn-login-hover', 'add');
		});
		fEventListen(oLo, 'mouseout', function(){
			oLo.className = 'btn btn-main btn-login';
		});
		fEventListen(oLo, 'mousedown', function(){
			fCls(oLo, 'btn-login-active', 'add');
		});
		//注册按钮
		fEventListen(oRg, 'mouseover', function(){
			fCls(oRg, 'btn-reg-hover', 'add');
		});
		fEventListen(oRg, 'mouseout', function(){
			oRg.className = 'btn btn-side btn-reg';
		});
		fEventListen(oRg, 'mousedown', function(){
			fCls(oRg, 'btn-reg-active', 'add');
		});
		fEventListen(oRg, 'mouseup', function(){
			oRg.className = 'btn btn-side btn-reg';
		});
		//阻止事件触发
		function _fE(fFunc, oE, oThat){
			var e = oE,
			relatedTarget = e.toElement || e.relatedTarget;
			while(relatedTarget && relatedTarget != oThat){
				relatedTarget = relatedTarget.parentNode;
			}
			if(!relatedTarget){
				fFunc();
			}
		}
	}

	/**
	 * 输入框聚焦
	 */
	function fFocusInputBox(){
		try{
			if(oId.value != ''){
				/*if(ntabOn == 1){
					gMobileNumMail.getNumFromMail(oId.value);
				}else{
					gMobileNumMail.getMailFromNum(oId.value);
				}*/
				fCls(oIdL, 'showPlaceholder', 'remove');
				fCls(oId, 'formIpt-focus', 'add');
				if(ntabOn == 1){
					oPw.focus();
					fCls(oPwL, 'loginFormIpt-focus', 'add');
				}
			}else{
				oId.focus();
			}
		}catch(e){}
	}

	/**
	 * 检查密码输入框状态
	 */
	function fCheckPw(){
		if(oPw.value != ''){
			fCls(oPwL, 'showPlaceholder', 'remove');
			fCls(oPw, 'formIpt-focus', 'add');
		}else{
			fCls(oPwL, 'showPlaceholder', 'add');
		}
	}

	/**
	 * 持续检查输入框状态
	 */
	function fCheckInputAlways(){
		var me = this;
		window.oIntervalCheckInputAlways = setInterval(function(){
			if(oId.value != ''){
				fCls(oIdL, 'showPlaceholder', 'remove');
				fCls(oId, 'formIpt-focus', 'add');
			}else{
				fCls(oIdL, 'showPlaceholder', 'add');
			}
			me.checkPw();
		},500);
	}

	/**
	 * 字符转换（全角转半角，中文逗号转英文逗号）
	 * @param  {[type]} s [description]
	 * @return {[type]}   [description]
	 */
	function fHandleString(s){ 
		var result = "";
		for(var i = 0; i < s.length; i++){
			if(s.charCodeAt(i)==12288){
				result += String.fromCharCode(s.charCodeAt(i)-12256);
				continue;
			}
			if(s.charCodeAt(i)>65280 && s.charCodeAt(i)<65375){
				result += String.fromCharCode(s.charCodeAt(i)-65248);
			}else{
				result += String.fromCharCode(s.charCodeAt(i));
			}
		}
		result.replace(/。/g, '.');
		return result;
	}

	/**
	 * 绑定tab事件
	 */
	function fSwitchTab(){
		var me = this;
		var oTab = $id('loginBlock'),
			oTab1 = $id('lbNormal'),
			oTab2 = $id('lbDynPw'),
			oIdLabel = $id('idPlaceholder'),
			oNormalLg = $id('normalLogin'),
			oDynPwLg = $id('dynPwLogin');
		me.hideLayer();

		if(ntabOn == 1){
			// 加载动态密码登录js
			var oDynPwConf = {
				domain: '126.com'
			};
			if(!window.DynamicPassword){
				fGetScript('http://mimg.127.net/index/lib/scripts/dynamicpassword.js', function(){
					new DynamicPassword(oDynPwConf);
				});
			}
			oPw.name = '';
			sTmpPwd = oPw.value;
			oNormalLg.style.display = 'none';
			oDynPwLg.style.display = 'block';
			oTab.className = tab2Cls;
			ntabOn = 2;
			fEventUnlisten(oTab2, 'mouseover', me.switchTabTimeout);
			fEventUnlisten(oTab2, 'mouseout', me.setbSwitchTabTimeout);
			fEventListen(oTab1, 'mouseover', me.switchTabTimeout);
			fEventListen(oTab1, 'mouseout', me.setbSwitchTabTimeout);
			oPw.value = sTmpDynPwd;
			if( sTmpDynPwd == '' ){
				fCls(oPwL, 'showPlaceholder', 'add');
			}else{
				fCls(oPwL, 'showPlaceholder', 'remove');
			}
			if(window.bHTTPSDisabled){
				// 浏览器禁止了ssl
				alert('由于您在浏览器设置中禁止使用了ssl，所以无法使用动态密码登录！');
			}
		}else{
			oPw.name = 'password';
			sTmpDynPwd = oPw.value;
			oDynPwLg.style.display = 'none';
			oNormalLg.style.display = 'block';
			oTab.className = tab1Cls;
			ntabOn = 1;
			fEventUnlisten(oTab1, 'mouseover', me.switchTabTimeout);
			fEventUnlisten(oTab1, 'mouseout', me.setbSwitchTabTimeout);
			fEventListen(oTab2, 'mouseover', me.switchTabTimeout);
			fEventListen(oTab2, 'mouseout', me.setbSwitchTabTimeout);
			oPw.value = sTmpPwd;
			if(sTmpPwd == ''){
				fCls(oPwL, 'showPlaceholder', 'add');
			}else{
				fCls(oPwL, 'showPlaceholder', 'remove');
			}
		}
		me.focusInputBox();
	}

	function fSwitchTabTimeout(){
		setTimeout(function(){
			if(bSwitchTabTimeout){
				indexLogin.switchTab();
			}else{
				bSwitchTabTimeout = true;
			}
		}, 300);
	}

	function fSetbSwitchTabTimeout(){
		bSwitchTabTimeout = false;
	}

	/**
	 * 登录提交
	 * @return {Boolean}
	 */
	function fSubmitForm(){
		var me = this;

		var bDyn = ntabOn == 2;

		// 检查输入
		oId.value = fTrim(oId.value);
		if(oId.value == ''){
			oId.focus();
			me.showError(1);
			return false;
		}
		if(ntabOn == 1){
			if(oPw.value.length == ''){
				oPw.focus();
				me.showError(3);
				return false;
			}else if(!fTrim(oPw.value)){ // 特殊处理密码全空格
				me.showError(460);
				return false;
			}
		}

		//用户名、密码不标准字符处理
		oId.value = me.handleString(oId.value);
		oPw.value = me.handleString(oPw.value);

		$id('username').value = oId.value;
		/**
		//16位密码截断
		if(oPw.value.length > 16){
			oPw.value = oPw.value.substr(0,16);
		}
		*/
		//保存十天免登录
		if($id('remAutoLogin').checked){
			$id('savelogin').value = 1;
		}else{
			$id('savelogin').value = 0;
		}
		//登陆后锁定tab
		var oTabDisabled;
		if( ntabOn == 1 ){
			oTabDisabled = $id('lbDynPw');
		}else{
			oTabDisabled = $id('lbNormal');
		}
		fEventUnlisten(oTabDisabled, 'mouseover', me.switchTabTimeout);
		fEventUnlisten(oTabDisabled, 'mouseout', me.setbSwitchTabTimeout);

		var fReBindSwitchTab = setInterval(function(){
			try{
				//若有错误提示，则重新绑定切换tab事件
				if(window.frames["frameforlogin"].document.body.className == 'error'){
					fEventListen(oTabDisabled, 'mouseover', me.switchTabTimeout);
					fEventListen(oTabDisabled, 'mouseout', me.setbSwitchTabTimeout);
					clearInterval(fReBindSwitchTab);
				}
			}catch(e){}
		},500);

		//锁定登录键
		$id('loginBtn').disabled = true;

		//储存登录信息
		gUserInfo.username = oId.value;

		gVisitorCookie.saveInfo();
		//判断登录来源
		var sUrlDf = (function(){
				var sDf = fGetQueryHash('df');
				if(sDf == null){
						sDf = 'cpUser_letter';
				}
				fSetCookie('df',sDf,false);
				return sDf;
			})(),
			sUrlUid = oId.value + '@' + gOption.sDomain;
		//选择登录方式
		window.sHttpAction  = gOption.url+'&'
		+ fUrlP('df',sUrlDf,true)
		+ fUrlP('from','web')
		+ fUrlP('uid',sUrlUid)
		+ (bDyn ? fUrlP('passAuthType', '1'):'');
		loginRequest('fEnData');
		return false;
	}

	/**
	 * 错误信息提示
	 * @param  {Number} nCode 错误代码
	 */
	function fShowError(nCode){
		var me = this;
		var sErrType = '',
			nTarget = 0;
		var sTitle = '',
			sInfo = '',
			sTpl = '';

		if(!isNaN(nCode)){
	    	nCode = nCode - 0;
	    }
		switch(nCode){
			case 'Login_Timeout':
				sErrType = 'loginTimeout';
				nTarget = 0;
				break;
			case 1:
				sErrType = 'noId';
				nTarget = 1;
				break;
			case 2:
				sErrType = 'noPhone';
				nTarget = 1;
				break;
			case 3:
				sErrType = 'noPw';
				nTarget = 2;
				break;
			case 4:
				sErrType = 'noDynPw';
				nTarget = 2;
				break;
			case 5:
				sErrType = 'noDynPwByMob';
				nTarget = 2;
				break;
			case 6:
				sErrType = 'noDynPwByYX';
				nTarget = 2;
				break;
			case 1000:
				sErrType = 'noBindingMob';
				nTarget = 1;
				break;
			case 1001:
				sErrType = 'dynPwWrong';
				nTarget = 2;
				break;
			case 1002:
				sErrType = 'dynPwd2Much';
				nTarget = 0;
				break;
			case 1003:
				sErrType = 'mobLoginWrongDomain';
				nTarget = 1;
				break;
			case 420:
			case 422:
				sErrType = 'idLocked';
				nTarget = 1;
				break;
			case 414:
			case 415:
			case 416:
			case 417:
			case 418:
			case 419:
				sErrType = 'loginWrong';
				nTarget = 0;
				break;
			/*case 412:
				//已单独处理
				break;*/
			default:
				sErrType = 'systemBusy';
				nTarget = 0;
		}
		sTitle = gErrorInfo[sErrType].title,
		sInfo = gErrorInfo[sErrType].info,
		sTpl = [
			'<div class="error-tt">',
				'<p>' + sTitle + '</p>',
			'</div>',
			sInfo && sInfo != '' ?  
			['<div id="errorDetail" class="error-detail">',
				'<p>提示：</p>',
				'<p class="error-info">' + sInfo + '</p>',
			'</div>'].join('') : ''
		].join('');
		me.showLayer(sTpl, nTarget);

		//恢复登录键
		$id('loginBtn').disabled = false;
	}

	/**
	 * 显示气泡浮层
	 * @param  {String} sHtml 浮层内容
	 * @param  {Number} nTarget 浮层指向 0-通用 1-账号 2-密码
	 */
	function fShowLayer(sHtml, nTarget){
		var me = this;
		var oLayer = $id('bubbleLayer'),
			oLayerWrap = $id('bubbleLayerWrap'),
			oArr = $id('layerArr');
		var nBasePoint = 215;
		if(nTarget == 1){
			nBasePoint -= 30;
		}else if(nTarget == 2){
			nBasePoint += 30;
		}
		oLayerWrap.innerHTML = sHtml;
		$id('mainMask').style.display = 'block';
		fCls(oLayer, 'bubbleLayer-show', 'add');
		oLayer.style.top = nBasePoint - oLayer.offsetHeight/2 + 'px';
		oArr.style.top = (oLayer.offsetHeight - oArr.offsetHeight)/2 + 'px';

		fEventListen(document, 'click', me.hideLayer);
		if(!oLayer.__bindClick){
			fEventListen(oLayer, 'click', function(oEvt){
				try {
					oEvt.stopPropagation();
				} catch (e) {
					oEvt.cancelBubble = true;
				}
				oLayer.__bindClick = true;
			});
		}

		// 绑定手机号码增加参数
		var oBindMobBtn = $id('bindMobileBtn');
		if(oBindMobBtn){
			oBindMobBtn.href += '&username=' + oId.value + '&domain=' + gOption.sDomain;
			fEventListen(oBindMobBtn, 'click', indexLogin.hideLayer);
		}
	}

	/**
	 * 隐藏气泡浮层
	 */
	function fHideLayer(){
		fCls($id('bubbleLayer'), 'bubbleLayer-show', 'remove');
		$id('mainMask').style.display = 'none';
		fEventUnlisten(document, 'click', indexLogin.hideLayer);
	}

	/**
	 * 显示易信二维码登录
	 */
	function fInitYxLogin(){
		var me = this;
		var oEntryBtn = $id('yxLoginEntry'),
			oCloseEntryBtn = $id('closeYxLogin'),
			oYixinWrap = $id('loginByYX');
			
		fEventListen(oEntryBtn, 'click', function(){
			if(window.yixinLogin){
				_fShow();
			}else{
				fGetScript("http://mimg.127.net/index/lib/scripts/yxlogin_v2.js", function(){
					_fShow();
				});
			}
			return false;
		});

		fEventListen(oCloseEntryBtn, 'click', function(){
			window.yixinLogin && yixinLogin.clearPoll();
			me.zoomWrap(oYixinWrap, 'zoomOut', 245, 365);
		});

		function _fShow(){
			yixinLogin.init();
			me.zoomWrap(oYixinWrap, 'zoomIn', 245, 365);
		}
	}

	/**
	 * 放大缩小容器
	 */
	function fZoomWrap(oObj, sMethod, sWidth, sHeight){
		var n = 0,
			nOpa = 0,
			nMeasure = 35;
			nRatio = sHeight/sWidth,
			nOpaRatio = 1/(sWidth/nMeasure);
		if(bStartScale){
			return
		}
		fScaleInterval && clearInterval(fScaleInterval);
		switch(sMethod){
			case 'zoomIn' :
				bStartScale = true;
				oObj.style.display = 'block';
				fScaleInterval = setInterval(function(){
					if(n < sWidth){
						n = n + nMeasure;
						nOpa = nOpa + 1 * nOpaRatio;
						oObj.style.width = n + 'px';
						oObj.style.height = n * nRatio + 'px';
						oObj.style.opacity = nOpa;
					}else{
						clearInterval(fScaleInterval);
						bStartScale = false;
					}
				}, 30);
				break;
			case 'zoomOut' :
				bStartScale = true;
				n = sWidth;
				nOpa = 1;
				fScaleInterval = setInterval(function(){
					if(n > 0){
						n = n - nMeasure;
						nOpa = nOpa - 1 * nOpaRatio;
						oObj.style.width = n + 'px';
						oObj.style.height = n * nRatio + 'px';
						oObj.style.opacity = nOpa;
					}else{
						clearInterval(fScaleInterval);
						bStartScale = false;
						oObj.style.display = 'none';
					}
				}, 30);
				break;
		}
	}

	/**
	 * 设置垂直居中
	 */
	function fVericalAlignBody(){
		var nBodyHeight = 730;
		var nClientHeight = document.documentElement.clientHeight;
		if(nClientHeight >= nBodyHeight + 2){
			var nDis = (nClientHeight - nBodyHeight)/2;
			document.body.style.paddingTop = nDis + 'px';
		}else{
			document.body.style.paddingTop = '0px';
		}
	}

	/**
	 * 重写可信标识
	 */
	function fKX(){
		function RndNum_CNNIC(k){
			for (var rnd = "", i = k; i--; ){
				rnd += Math.floor( Math.random() * 10 );
			}
			return rnd;
		}
		var oKX = $id('KX_IMG');
		var oKXimg = oKX.getElementsByTagName('img')[0];
		var sHref = 'https://ss.knet.cn/verifyseal.dll?sn=e12052344010022026301459&ct=df&pa=';
		var sPa = RndNum_CNNIC(6);
		oKX.href = sHref + sPa;
	}
})(window);

/**
 * 头图接入个性化后台广告
 */
(function(window){
    window.themeHandler = {
        isOpen              : true,
        init                : fInit,
        initData            : fInitData,
        getData             : fGetData,
        callback            : fCallback,
		adGetUdData 		: fAdGetUdData,
		showThemes			: fShowThemes,
		showNext			: fShowNext,
		showPrev 			: fShowPrev,
		themeShowLog 		: fThemeShowLog,
        _data               : {},
        _interface          : 'http://id.719471.net/index.php?g=User&m=Public&a=ad&type=img',
        _param              : {
        	prod : 'wmail_lbp',
	        ver : 1,
	       	uid : (gUserInfo.username ? gUserInfo.username : 'nt') + '@' + gOption.sDomain,
	        domain : gOption.sDomain,
	        mobUser : 0, // temp
	        callback : 'themeHandler.callback'
        },
        _dftMaterial : [{
        	type : 0,
            bgColor : "303135",
            bgCnt : "http://mimg.127.net/index/163/themes/140604_anzhuo_cnt.jpg",
            bInitLink : true,
            bgLink : "http://mail.163.com/client/dl.html?from=mail6"
        }],
		_bSuc 			: false,
		_currIndex		: 0
    };

    function fInit(){
        var me = this;
        me.initData();
        me.getData(); 
    }

    function fInitData(){
        var me = this;

        me._data = {
            // 个性化后台开关
            switcher : true,
            // 默认数据
            materials : me._dftMaterial,
            pid : 0
        };

        // 3秒后判断广告返回，仍无返回，则出容灾推广
		setTimeout(function(){
			if(me._bSuc){
				return;
			}else{
		        if(me._data.materials.length > 1){
		        	$id('prevTheme').style.display = 'block';
		        	$id('nextTheme').style.display = 'block';
		        }
		        me._currIndex = me._data.pid;
		        me.showThemes(me._data.materials[me._data.pid]); 
			}
		}, 3000);
    }

    function fGetData(){
        var me = this;
        if(!me.isOpen){
            me.callback();
            return;
        }
        if(me._data.switcher){
			fJSONP(me._interface, me._param);
        }else{
            me.callback();
        }
    }

    function fCallback(o){
        var me = this;
        me._bSuc = true;

    	try{
        	var oData = window.gAdTemplate_lbp.parse(o);
        }catch(e){}

    	if(oData && oData.lbp){
            // 调用js转化广告模板
            me._data.materials = oData.lbp.material || me._dftMaterial;
            me._data.pid = oData.lbp.pid;
        }
        if(me._data.materials.length > 1){
        	$id('prevTheme').style.display = 'block';
        	$id('nextTheme').style.display = 'block';
        }
        me._currIndex = me._data.pid;
        me.showThemes(me._data.materials[me._data.pid]);
    }

	/**
	 * 获取个性化用户数据
	 * @return {Object} 个性化数据标志位组合对象
	 */
	function fAdGetUdData(){
		try {
			var oData = gAdUserPropertyData;
			if(oData){
				return oData;
			}else{
				oData = {};
			}
			// 读取cookie
			oData['all'] = fGetCookie('_mail_userattr_');
			if(oData['all'] && oData['all'].length > 0){
				oData['mobile'] = oData['all'].split("/")[0] - 0;
				oData['yixin'] = oData['all'].split("/")[1] - 0;
				oData['news'] = oData['all'].split("/")[2] - 0;
				oData['music'] = oData['all'].split("/")[3] - 0;
				oData['read'] = oData['all'].split("/")[4] - 0;
			}
			gAdUserPropertyData = oData;
			return oData;
		} catch (e) {return false;}
	}

	/**
	 * 主题图显示
	 * @param  {Object} oMaterial 素材对象
	 */
	function fShowThemes(oMaterial){
		var me = this;
		var oThemeWrap = $id('theme'),
			oBg = $id('mainBg'),
			oCnt = $id('mainCnt');
		// 重置oMaterial
		oThemeWrap.innerHTML = '';
		oThemeWrap.style.cssText = '';
		oBg.style.cssText = '';
		oCnt.style.cssText = '';
		if($id('themeIframe')){
			oCnt.removeChild($id('themeIframe'));
		}
		
		oMaterial.tempBgLink = oMaterial.bgLink || '';
		oMaterial.tempShowLink = oMaterial.showLink || '';
		
		// 为推广平台提供uid
		var sUid = (gUserInfo.username ? gUserInfo.username : 'nt') + '@' + gOption.sDomain;

		if(!oMaterial.bInitLink && oMaterial.bgLink && oMaterial.bgLink != ''){
			oMaterial.tempBgLink = oMaterial.bgLink + '&_r_ignore_uid=' + sUid;
		}
		if(!oMaterial.bInitShowLink && oMaterial.showLink && oMaterial.showLink != ''){
			oMaterial.tempShowLink = oMaterial.showLink + '&uid=' + sUid;
		}

		// 展示数据统计
		if(oMaterial.tempShowLink != ''){
			me.themeShowLog(oMaterial.tempShowLink);
		}

		// 第三方自定义iframe
		if(oMaterial.type == 2){
			var oThemeIframe = document.createElement("iframe");
			oThemeIframe.id = 'themeIframe';
			oThemeIframe.className = 'main-inner-iframe';
			oThemeIframe.src = oMaterial.iframeUrl;
			oThemeIframe.setAttribute('scrolling', 'no');
			oCnt.insertBefore(oThemeIframe, oThemeWrap);
			oThemeWrap.style.display = 'none';
			return
		}

		// 图片显示处理
		if(oMaterial.bgColor){
			oBg.style.backgroundColor = '#' + oMaterial.bgColor;
		}else{
			oBg.style.backgroundColor = '#fff';
		}
		if(oMaterial.bgCnt && oMaterial.bgCnt != ''){
			_fImgLoader(oMaterial.bgCnt, function(){
				oCnt.style.backgroundImage = 'url(' + oMaterial.bgCnt + ')';
			});
		}
		if(oMaterial.bgSrc && oMaterial.bgSrc != ''){
			_fImgLoader(oMaterial.bgSrc, function(){
				oBg.style.backgroundImage = 'url(' + oMaterial.bgSrc + ')';
			});
		}

		// 带链接主题图
		if(oMaterial.tempBgLink != ''){
			var oLink = document.createElement('a');
			oLink.style.cssText = 'position:absolute;width:605px;height:600px;left:0;top:0;cursor:pointer';
			oLink.href = oMaterial.tempBgLink;
			oLink.target = "_blank";
			oThemeWrap.appendChild(oLink);
			oLink.setAttribute('hideFocus', true);
		}

		// 带视频播放主题图
		if(oMaterial.type == 1 && oMaterial.video != ''){
			var aVideoPlayer = document.createElement('div');
			aVideoPlayer.style.cssText = 'position:absolute;overflow:hidden;width:'+oMaterial.videoWd+'px;height:'+oMaterial.videoHt+'px;top:'+oMaterial.videoTop+'px;left:'+oMaterial.videoLeft+'px';
			aVideoPlayer.innerHTML = '<embed width="' + oMaterial.videoWd + '" height="' + oMaterial.videoHt + '" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent" src="' + oMaterial.video + '" allowScriptAccess="always" />';
			oThemeWrap.appendChild(aVideoPlayer);
		}

		function _fImgLoader(imgSrc, fSuccCallBack, fErrorCallBack, nTimeout){
			window.bImgLoaderIsLoaded = false;
			var oImg = document.createElement('IMG');
			if(fSuccCallBack){
				oImg.onload = function(){
					fSuccCallBack();
					window.bImgLoaderIsLoaded = true;
				};
			}
			if(fErrorCallBack){
				oImg.onerror = function(){
					fErrorCallBack();
				};
			}
			var nTime = 0;
			if(nTimeout){
				nTime = nTimeout;
			}
			setTimeout(function(){
				oImg.src = imgSrc;
			}, nTime);
		}
	}

	function fShowNext(n){
		var me = this;
		n = n || 1;
		me._currIndex += n;

		if(me._currIndex < 0){
			me._currIndex = me._data.materials.length - 1;
		}else if(me._currIndex >= me._data.materials.length){
			me._currIndex = 0;
		}

		me.showThemes(me._data.materials[me._currIndex]);
	}

	function fShowPrev(){
		this.showNext(-1);
	}

	/**
	 * 主题图广告展现统计
	 * @param  {String} sLink 展示统计链接url
	 */
	function fThemeShowLog(sLink){
		var oImg = document.getElementById("AD__IMG");
		if(!oImg){
			oImg = document.createElement("IMG");
			oImg.id = 'AD__IMG';
			oImg.width = "1px";
			oImg.height = "1px";
			oImg.style.position = 'absolute';
			oImg.style.left = '-100px';
			oImg.style.top = '-100px';
			document.body.appendChild(oImg);
		}
		oImg.src = sLink + '&rnd=' + Math.random();
	}
})(window);


/**
 * 添加删除classname
 * @param  {Object} o     修改对象dom元素
 * @param  {String} sCls  classname
 * @param  {String} sFunc 修改classname方式：add/remove
 */
function fCls(o, sCls, sFunc){
	var oTar = o;
	var nRes = oTar.className.indexOf(sCls);
	if(sFunc == 'add'){
		if(nRes == -1){
			oTar.className = oTar.className + ' ' + sCls;
		}else{
			return;
		}
	}
	if(sFunc == 'remove'){
		if(nRes != -1){
			var sCls = '\\s' + sCls
			var rCls = new RegExp(sCls, 'g');
			oTar.className = oTar.className.replace(rCls, '');
		}else{
			return;
		}
	}
}

window.onload = function(){
	indexLogin.init();
	themeHandler.init();
	// fq统计
	fFQ();
	// 推广更新后台
	loginExtAD.init();
};

// 设置内容垂直居中
indexLogin.vericalAlignBody();
fEventListen(window, 'resize', function(){
	indexLogin.vericalAlignBody();
	fCls(document.body, 'move', 'add');
});
</script>

<script type="text/javascript">
(function() {
    window.gAdTemplate_lbp = {
        parse: function(oDatas) {
            try {
                var oData = this.getData(oDatas.userProperty, JSON.parse(oDatas.dataContext));
            } catch(e) {
                var oData = this.getData(oDatas.userProperty, eval("(" + oDatas.dataContext + ")"));
            }
            return oData;
        }
    };
})(); (function() {
    var d = {
        FlowLimitType: {
            TOTAL_AMOUNT_LIMIT: 1,
            DAILY_AMOUNT_LIMIT: 2,
            TOTAL_EFFECT_LIMIT: 3
        },
        Priority: {
            HIGHEST: 0,
            NONE: 8888,
            LOWEST: 9999
        },
        MailRegTime: {
            IGNORE: -1,
            LATEST_30DAY: 0,
            LATEST__60DAY: 1,
            LATEST_180DAY: 2
        },
        MailLiveness: {
            IGNORE: -1,
            LATEST_7DAY: 0,
            LATEST__14DAY: 1,
            LATEST_30DAY: 2
        },
        WapUserType: {
            IGNORE: -1,
            ALL: "0",
            IPHONE: 1,
            IPAD: 2,
            ANDROID: 3,
            OTHER_MOBILE: 4
        },
        BrowserType: {
            IGNORE: -1,
            HIGH: 0,
            LOW: 1
        },
        Version: {
            JS5: 0,
            JS6: 1
        },
        Sex: {
            IGNORE: -1,
            UNKNOW: 0,
            MALE: 1,
            FEMALE: 2
        }
    };
    function h(o) {
        if (o == null) {
            return true;
        }
        return o.mailRegTime == d.MailRegTime.IGNORE && o.mailLiveness == d.MailLiveness.IGNORE && o.wapUserType == "" && o.browserType == d.BrowserType.IGNORE && o.usedProdIds == "" && o.unusedProdIds == "" && o.interest == "" && o.lotteryType == "" && o.game == "" && o.bobo == "" && o.sex == "" && o.gameQnyh2 == "" && o.gameWync == "";
    }
    var n = 1;
    var c = 1;
    window.gAdTemplate_lbp.getData = function(s, p) {
        var o = {};
        o.ver = c;
        var q = l(s, p._163LbpAdUnitsList, p._163LbpAnchorAdUnitsList, p._126LbpAdUnitsList, p._126LbpAnchorAdUnitsList, p._yeahLbpAdUnitsList, p._yeahLbpAnchorAdUnitsList, p._emailLbpAdUnitsList, p._emailLbpAnchorAdUnitsList);
        if (q == null) {
            return o;
        }
        var r = {};
        r.pid = q.pid;
        r.material = b(s.mailVer, s.ver, s.uid, q.data);
        o.lbp = r;
        return o;
    };
    function l(A, w, p, r, D, F, o, C, u) {
        var E = {};
        var z = [];
        var y = [];
        var q = "" + A.domain;
        if (q == "163.com") {
            z = w;
            y = p;
        } else {
            if (q == "126.com") {
                z = r;
                y = D;
            } else {
                if (q == "yeah.net") {
                    z = F;
                    y = o;
                } else {
                    if (q == "email.com") {
                        z = C;
                        y = u;
                    } else {
                        z = w;
                        y = p;
                    }
                }
            }
        }
        var v = e(z, A);
        var s = y;
        if (v.length == 0) {
            if (s.length == 0) {
                return null;
            } else {
                E.pid = 0;
                E.data = s;
            }
        } else {
            var t = v[0];
            for (var G in z) {
                var B = z[G];
                if (B.taskLogic.number != t.taskLogic.number) {
                    s = m(s, B);
                }
            }
            var x = k(s, t);
            E.pid = x.pid;
            E.data = x.data;
        }
        return E;
    }
    function k(p, q) {
        var s = [];
        var w = false;
        var u = 0;
        var r = q.taskLogic.number;
        var t = 0;
        for (; t < p.length; t++) {
            var v = p[t];
            if (v.taskLogic.number >= r) {
                s.push(q);
                s = s.concat(p.slice(t));
                w = true;
                u = t;
                break;
            } else {
                s.push(v);
            }
        }
        if (!w) {
            s.push(q);
        }
        var o = {};
        o.pid = t;
        o.data = s;
        return o;
    }
    function m(s, p) {
        var o = false;
        for (var r = 0; r < s.length; r++) {
            if (s[r].taskLogic.number >= p.taskLogic.number) {
                for (var q = s.length; q > r; q--) {
                    s[q] = s[q - 1];
                }
                s[r] = p;
                o = true;
                break;
            }
        }
        if (!o) {
            s.push(p);
        }
        return s;
    }
    function g(q, r) {
        var s = [];
        if (q == null || q.length == 0) {
            return s;
        }
        for (var p in q) {
            var o = q[p];
            if (i(o.customConfig.taskCustProductProperty, r)) {
                s.push(o);
            }
        }
        return s;
    }
    function e(p, q) {
        var r = [];
        var o = j(p, q);
        if (o == null) {
            return r;
        }
        r.push(o);
        return r;
    }
    function b(q, t, s, w) {
        var u = [];
        if (w == null || w.length == 0) {
            return u;
        }
        for (var v in w) {
            var r = w[v];
            var x = r.ad;
            var p = r.taskLogic;
            var o = {};
            o.uid = "" + s;
            o.openUrl = x.openCountUrl + "&rnd=" + ((new Date()).valueOf());
            if (x.promResType == 4) {
                o.type = 2;
            } else {
                if (x.flashTag == 1) {
                    o.type = 1;
                } else {
                    o.type = 0;
                }
            }
            o.flag = x.flag;
            o.bgColor = x.bgColor;
            o.bgCnt = x.promPicUrl;
            o.bgSrc = x.bgPicUrl;
            if (x.clickCountTag == 0) {
                o.bInitLink = true;
                o.bgLink = x.promPicClickUrl;
            } else {
                o.bInitLink = false;
                o.bgLink = x.promPicClickCountUrl;
            }
            if (x.showCountTag == 0) {
                o.bInitShowLink = true;
                o.showLink = x.thirdpartyShowCountUrl;
            } else {
                o.bInitShowLink = false;
                o.showLink = x.openCountUrl;
            }
            if (x.flashTag == 1 && x.taskFlash != null) {
                o.video = x.taskFlash.flashUrl;
                o.videoWd = x.taskFlash.width;
                o.videoHt = x.taskFlash.height;
                o.videoTop = x.taskFlash.positionY;
                o.videoLeft = x.taskFlash.positionX;
            }
            if (x.promResType == 4) {
                o.iframeUrl = x.iframeUrl;
            }
            o.name = x.name;
            u.push(o);
        }
        return u;
    }
    function j(w, C) {
        var o = [];
        var B = [];
        var q = [];
        var s = [];
        var v = [];
        var A = 100;
        for (var z in w) {
            var p = w[z];
            if (p.taskLogic.priority == d.Priority.LOWEST) {
                v.push(p);
                continue;
            }
            if (p.taskLogic.priority == d.Priority.NONE) {
                if (!h(p.customConfig.taskCustProductProperty)) {
                    q.push(p);
                    continue;
                } else {
                    if (p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_EFFECT_LIMIT || p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_AMOUNT_LIMIT) {
                        s.push(p);
                        continue;
                    }
                    if (p.taskLogic.pvLimit != 0 || p.taskLogic.uvLimit != 0) {
                        s.push(p);
                        continue;
                    }
                }
                B.push(p);
                continue;
            }
            if (h(p.customConfig.taskCustProductProperty)) {
                if (p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_EFFECT_LIMIT || p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_AMOUNT_LIMIT) {
                    if (o.length > 0) {
                        o.push(p);
                        continue;
                    } else {
                        return p;
                    }
                }
                if (p.taskLogic.pvLimit != 0 || p.taskLogic.uvLimit != 0) {
                    if (o.length > 0) {
                        o.push(p);
                        continue;
                    } else {
                        return p;
                    }
                }
                if (p.taskLogic.idleFlowPercent > 0) {
                    o.push(p);
                    continue;
                }
                if (o.length > 0) {
                    o.push(p);
                    continue;
                } else {
                    var u = Math.max(p.taskLogic.totalFlowPercent, p.taskLogic.idleFlowPercent);
                    if (u > 0) {
                        if (A <= u) {
                            return p;
                        }
                        if (Math.floor(Math.random() * A) < u) {
                            return p;
                        } else {
                            A -= u;
                        }
                    }
                }
            } else {
                if (i(p.customConfig.taskCustProductProperty, C)) {
                    return p;
                }
            }
        }
        if (o.length != 0) {
            for (var z in o) {
                var y = o[z];
                if (y.taskLogic.pvLimit != 0 || y.taskLogic.uvLimit != 0) {
                    return y;
                }
                var u = Math.max(y.taskLogic.idleFlowPercent, y.taskLogic.totalFlowPercent);
                if (A <= u) {
                    return y;
                }
                if (Math.floor(Math.random() * A) < u) {
                    return y;
                } else {
                    A -= u;
                }
            }
        }
        if (q.length > 0) {
            var t = f(q, s, C);
            if (t != null) {
                return t;
            } else {
                B = B.concat(s);
            }
        } else {
            B = B.concat(s);
        }
        if (B.length > 0) {
            var x = a(A, B);
            if (x != null) {
                return x;
            }
        }
        var r = v.length;
        if (r == 0) {
            return null;
        } else {
            if (r == 1) {
                return v[0];
            } else {
                return v[Math.floor(Math.random() * r)];
            }
        }
        return null;
    }
    function f(t, r, v) {
        if (t.length == 0) {
            return null;
        }
        var u = false;
        var s = [];
        for (var q in t) {
            var p = t[q];
            if (!h(p.customConfig.taskCustProductProperty)) {
                if (i(p.customConfig.taskCustProductProperty, v)) {
                    u = true;
                    s.push(p);
                }
            }
        }
        if (u) {
            s = s.concat(r);
            var o = s.length;
            if (o == 1) {
                return s[0];
            }
            if (o > 1) {
                return s[Math.floor(Math.random() * o)];
            }
        } else {}
        return null;
    }
    function a(x, u) {
        if (u.length == 0) {
            return null;
        }
        var s = [];
        var r = [];
        var t = u.length;
        var q = x / t;
        for (var w in u) {
            var p = u[w];
            if (p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_EFFECT_LIMIT || p.taskLogic.flowLimitType == d.FlowLimitType.TOTAL_AMOUNT_LIMIT) {
                r.push(p);
                continue;
            }
            if (p.taskLogic.totalFlowPercent == 0 && p.taskLogic.idleFlowPercent == 0) {
                r.push(p);
                continue;
            }
            if (Math.max(p.taskLogic.totalFlowPercent, p.taskLogic.idleFlowPercent) > q) {
                r.push(p);
                continue;
            }
            s.push(p);
        }
        if (s.length != 0) {
            for (var w in s) {
                var o = s[w];
                var v = Math.max(o.taskLogic.totalFlowPercent, o.taskLogic.idleFlowPercent);
                if (v > 0) {
                    if (x <= v) {
                        return o;
                    }
                    if (Math.floor(Math.random() * x) < v) {
                        return o;
                    } else {
                        x -= v;
                    }
                }
            }
            return a(x, r);
        } else {
            return r[Math.floor(Math.random() * r.length)];
        }
    }
    function i(q, w) {
        if (q.mailRegTime != d.MailRegTime.IGNORE && q.mailRegTime != w.mailRegTime) {
            return false;
        }
        if (q.mailLiveness != d.MailLiveness.IGNORE && q.mailLiveness != w.mailLiveness) {
            return false;
        }
        if (q.usedProdIds != "") {
            var r = q.usedProdIds.split(",");
            for (var t = 0; t < r.length; ++t) {
                if (w.usedProdIds.indexOf(r[t]) == -1) {
                    return false;
                }
            }
        }
        if (q.unusedProdIds != "") {
            var r = q.unusedProdIds.split(",");
            for (var t = 0; t < r.length; ++t) {
                if (w.unusedProdIds.indexOf(r[t]) == -1) {
                    return false;
                }
            }
        }
        if (q.wapType != -1) {
            if ((w.wapUserType & q.wapType) == 0) {
                return false;
            }
        }
        if (q.browserType != d.BrowserType.IGNORE && q.browserType != w.browserType) {
            return false;
        }
        if (q.interest1 != 0 || q.interest2 != 0 || q.interest3 != 0) {
            var o = false;
            if (q.interest1 != 0 && ((q.interest1 & w.interest1) != 0)) {
                o = true;
            }
            if (q.interest2 != 0 && ((q.interest2 & w.interest2) != 0)) {
                o = true;
            }
            if (q.interest3 != 0 && ((q.interest3 & w.interest3) != 0)) {
                o = true;
            }
            if (!o) {
                return false;
            }
        }
        if (q.lotteryType != "") {
            if (q.lotteryType.indexOf(w.lotteryType + "") == -1) {
                return false;
            }
        }
        if (q.game1 != 0) {
            var s = false;
            if ((q.game1 & w.games) != 0) {
                s = true;
            }
            if (!s) {
                return false;
            }
        }
        var u = false;
        if (q.bobo1 != 0) {
            if ((q.bobo1 & w.bobos) != 0) {
                u = true;
            }
        }
        if (!u) {
            if (q.boboSelf > 0 && (q.boboSelf != w.boboSelf)) {
                u = false;
            } else {
                u = true;
            }
        }
        if (q.bobo1 != 0 || q.boboSelf > 0) {
            if (!u) {
                return false;
            }
        }
        if (q.sex != "") {
            if (q.sex.indexOf(w.sex + "") == -1) {
                return false;
            }
        }
        if (q.gameQnyh21 != 0) {
            var v = false;
            if ((q.gameQnyh21 & w.gameQnyh2s) != 0) {
                v = true;
            }
            if (!v) {
                return false;
            }
        }
        if (q.gameWync1 != 0) {
            var p = false;
            if ((q.gameWync1 & w.gameWyncs) != 0) {
                p = true;
            }
            if (!p) {
                return false;
            }
        }
        return true;
    }
})();
</script>

<!-- 预加载极速js -->
<!--<iframe src="http://mail.163.com/preload6.htm" style="display:none" id="frmJs6"></iframe>-->
<!--待修改结束-->
</body>
</html>