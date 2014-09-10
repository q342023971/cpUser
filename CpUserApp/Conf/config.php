<?php
$config	=require CPWEB_ROOT.'cp.config.inc.php';
$array=array(
	//URL模式,1=>pathinfo模式,2=>隐藏index.php
	'URL_MODEL'=>0,
	//'TMPL_SWITCH_ON'			=>	true,
	'TMPL_DETECT_THEME'     => true,
	'TMPL_ACTION_ERROR'=>'Public:success',
	'TMPL_ACTION_SUCCESS'=>'Public:success',
	'TMPL_EXCEPTION_FILE'=>THINK_PATH.'/Tpl/ThinkException.tpl.php',
	'ERROR_MESSAGE'=>'你正在浏览的网页暂时错误发生！请稍后再试~',
	'TMPL_TEMPLATE_SUFFIX'=>'.tpl',
	'TMPL_L_DELIM'=>'{cp:',
	'APP_DEBUG'=>true,
	//'THINK_PLUGIN_ON' =>true,
	/*'URL_ROUTER_ON'=>true,
	'URL_ROUTE_RULES'=>array(
		
	),*/
	//自动加载类库的路径
	//'APP_AUTOLOAD_PATH'=>'ORG.Util',
	//多语言
	'LANG_SWITCH_ON'=>true,
	'LANG_AUTO_DETECT'=>true,
	'DEFAULT_LANG'   =>	'zh-cn',
	'LANG_LIST'=>'en-us,zh-cn',
	'LANG_en-us'=>'English',
	'LANG_zh-cn'=>'简体中文',
	
	//日志记录
	'LOG_RECORD' => true,
	'LOG_RECORD_LEVEL'     =>   array('EMERG','ALERT','CRIT','ERR','INFO'),
	
	//数据库设置
	'DB_CHARSET'=>'utf8',
	'DB_TYPE'=>'mysql',
	'DB_HOST'=>'localhost',
	'DB_NAME'=>'root',
	'DB_USER'=>'root',
	'DB_PWD'=>'123456',
	'DB_PORT'=>'3306',
	'DB_PREFIX'=>'cp_',
	
	//允许上传的文件类型
	//'FILE_UPLOAD_ALLOWEXTS'=>'jpg,jpeg,bmp,png,gif,tif,zip,rar,doc,xls,7z,rtf,csv',
	
	
	//'URL_HTML_SUFFIX'=>'.html',
	'DEFAULT_THEME'=>'default',
	//'URL_PATHINFO_DEPR'=>'-',
	
	
	//分组
	'APP_GROUP_LIST'=>'Admin,Home,Wap,User,Ajax',
	'DEFAULT_GROUP'=>'Home',
	'TMPL_FILE_DEPR'=>"-",
	
	//权限
	'USER_AUTH_ON'=>true,
	'USER_AUTH_TYPE'			=>2,		// 默认认证类型 1 登录认证 2 实时认证
	'USER_AUTH_KEY'			=>'authId',	// 用户认证SESSION标记
	'ADMIN_AUTH_KEY'			=>'administrator',
	'USER_AUTH_MODEL'		=>'User',	// 默认验证数据表模型
	'AUTH_PWD_ENCODER'		=>'md5',	// 用户认证密码加密方式
	'USER_AUTH_GATEWAY'	=>'/AdminPublic-adminlogin',	// 默认认证网关
	'NOT_AUTH_MODULE'		=>'AdminPublic',		// 默认无需认证模块
	'REQUIRE_AUTH_MODULE'=>'',		// 默认需要认证模块
	'NOT_AUTH_ACTION'		=>'',		// 默认无需认证操作
	'REQUIRE_AUTH_ACTION'=>'',		// 默认需要认证操作
	'GUEST_AUTH_ON'          => false,    // 是否开启游客授权访问
	'GUEST_AUTH_ID'           =>    0,     // 游客的用户ID
	'RBAC_ROLE_TABLE'=>'role',
	'RBAC_USER_TABLE'	=>	'role_user',
	'RBAC_ACCESS_TABLE' =>	'access',
	'RBAC_NODE_TABLE'	=> 'node',
	'TOKEN_ON'=>true,
	
	//附件
	'UPLOAD_PATH' => CPWEB_ROOT.'Uploads/',
	'UPLOAD_URL'=>'./Uploads/',
	
	//系统功能配置
	'WEB_NAME'=>'齐耀科技',
	'WEB_LTD'=>'齐耀科技',
	'COMPANY_NAME'=>'广州市齐耀科技有限公司',
	'WEB_URL'=>'http://id.719471.net',
	'WEB_DOMAIN'=>'id.719471.net',
	'WEB_KEYWORDS'=>'齐耀会员,微信营销会员',
	'WEB_DESCRIPTION'=>'齐耀科技会员中心，一个账户管理所有齐耀科技几旗下产品的会员。',
	'USER_REGISTER_AGREEMENT_STATE'=>'0',
	'USER_REGISTER_AGREEMENT'=>'本服务条款中所指的媒介网站是指下述符合要求的网站所有人：
1.个人网站：网站的所有人应拥有中华人民共和国公民资格，具有完全的民事行为能力，并能够独立承担法律责任。
2.商业网站：商业网站是指除个人网站之外的，从事商务行为的企业法人、实体、组织机构等所拥有的网站。商业网站的所有人应为在中华人民共和国领域内合法登记注册的企业法人或实体、组织机构。
3.对网站的要求：网站的经营严格遵守相关法律法规，网站所进行的市场开拓、广告宣传及相关经营活动合法。网站不得包含下列内容(以下简称"违法内容")：
⑴反对宪法所确定的基本原则的；
⑵危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；
⑶损害国家荣誉和利益的；
⑷煽动民族仇恨、民族歧视，破坏民族团结的；
⑸破坏国家宗教政策，宣扬邪教和封建迷信的；
⑹散布谣言，扰乱社会秩序，破坏社会稳定的；
⑺散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；
⑻侮辱或者诽谤他人，侵害他人合法权益的；
⑼侵犯他人知识产权的，包括但不限于专利权、商标权、著作权；
⑽侵犯他人商业秘密的；
⑾含有法律、行政法规禁止的其他内容的。
无论媒介网站是个人还是公司，网站的所有人对自己的主页应具有完全的所有权、使用权、决策权等相应权利，并确保其网站的网页能够在 800X600 的解析度下正常显示。
4. 媒介网站的所有人必须拥有一个固定的常住地址或办公地址，并具有经常上网收发电子邮件的能力。
★媒介网站注册、投放广告程序
1.媒介网站注册 -> 填写注册信息并验证网站。PHPADU广告联盟采取媒介会员审核机制，当媒介会员网站涉及违法 信息或不能正常运作时，PHPADU广告联盟保留取消其会员资格的权力。
2. 媒介网站通过审核后即可登陆PHPADU广告联盟平台获取广告代码。
3.将代码放到网站的网页上，PHPADU广告联盟将根据PHPADU广告联盟广告效果跟踪系统的统计结果和广告主返回的确认数据作为媒介网站的结算依据。
★媒介网站的权利
1.媒介网站注册、验证，通过审核后，正式成为PHPADU广告联盟的联盟会员。
2.广告费用结算：PHPADU广告联盟将按合约中规定的实际产生的广告业绩进行结算 。
3.付费方式：
⑴按照在媒介网站网站上广告的实际投放数量及实际广告效果，生成广告统计报表，供媒介网站在登录界面中查看。
⑵按照上述报表反映的实际数据与广告模式的单价，来确定网站的广告发布收入，按照实际结果向会员支付费用。
⑶支付费用的最低数额为人民币五十元整。
★媒介网站的义务
1.媒介网站必须保证其网站的所有网页不包含任何违法内容，并保证不连接到含有违法内容的网页。
2.如果媒介网站提供给PHPADU广告联盟的资料、信息等发生变化，包括姓名、联系电话等，应及时登陆PHPADU广告联盟平台修改个人资料修改或网站信息。
3.会员应保管好自己的用户名和密码，不得透露给第三方。如果自己的账号被盗用，请及时通知PHPADU广告联盟，否则后果自负。
4.如果发现有不符合PHPADU广告联盟或广告主指定的规范所投放的广告，PHPADU广告联盟有权要求会员修正。
5.对于注册后三个月内无任何广告效果的会员，PHPADU广告联盟保留删除其账户内所有佣金，暂停或终止其帐户的权利。
6.PHPADU广告联盟有权随时单方面决定更改本服务条款。如服务条款有任何变更，PHPADU广告联盟将及时刊载公告，通知媒介网站。经修订的须知自公布时开始生效。
7.本服务条款变更后，如媒介网站继续使用PHPADU广告联盟提供的服务，则表示媒介网站接受经修订的服务条款。
★违约责任
(1)严禁通过设备、程序以及其他不合法的手段提高个人收入。一经发现，PHPADU广告联盟有权立即取消其媒介网站资格，撤回正在投放的广告，并追回已经支付的全部广告发布费用，PHPADU广告联盟保留进一步追索责任的权利；同时，该媒介网站必须承担因此给PHPADU广告联盟带来的所有损失。
(2)媒介网站承诺其向PHPADU广告联盟平台提交的任何资料，包括但不限于其注册信息、网页地址，联系方式等的真实性。PHPADU广告联盟不承担对上述资料的真实性的审查责任。但是，一旦PHPADU广告联盟发现媒介网站提供虚假信息或采取其它欺骗手段，有权暂停或终止媒介网站的账户，删除其账户内所有佣金，并保留追究媒介网站责任的权利。
(3)媒介网站承诺其在PHPADU广告联盟平台中的任何行为均不会使PHPADU广告联盟公司、PHPADU广告联盟平台的其它媒介网站、PHPADU广告联盟的任何其它用户、向PHPADU广告联盟提供服务的第三方网站、公司，或与PHPADU广告联盟有合作关系的第三方承担任何法律责任和处罚。
(4)媒介网站同意因媒介网站违反本服务条款或在本服务条款中提及的应遵守的其他文件，或因媒介网站违反了法律或侵害了第三方的权利，而使第三方对PHPADU广告联盟及其子公司、分公司、董事、职员、代理人提出索赔要求(包括但不限于司法费用和其他专业人士的费用)，媒介网站必须全额赔偿给PHPADU广告联盟。
★免责声明
除PHPADU广告联盟提供的网络广告之外，媒介网站的网站内容包含或涉及色情、暴力、反动及任何违反中华人民共和国国家法律的内容，PHPADU广告联盟不承担任何责任。相关责任完全由媒介网站承担。
★不可抗力
对于因PHPADU广告联盟合理控制范围以外的原因，包括但不限于自然灾害、罢工、骚乱、物质短缺或定量配给、暴动、战争行为、政府行为、通讯或其他设施故障或严重伤亡事故等，致使新PHPADU广告联盟延迟或未能履约的，PHPADU广告联盟不对加盟成员承担任何责任。',
	//用户设置
	'USER_NAME_TYPE_TEXT'=>0,
	'USER_NAME_TYPE_MOBILE'=>1,
	'USER_NAME_TYPE_EMAIL'=>1,
	'USER_NAME_TYPE_API'=>0,
	'USER_NAME_MUST_BIND'=>1,
	//邮箱设置
	'EMAIL_TYPE'=>'phpmail',
	'EMAIL_SMTP_HOST'=>'smtp.gmail.com',
	'EMAIL_SMTP_PORT'=>'465',
	'EMAIL_SMTP_SSL'=>0,
	'EMAIL_URL_LOGIN'=>0,
	'EMAIL_REGISTER_SUCCESS'=>1,
	'EMAIL_PASSWORD_SUCCESS'=>1,
	'EMAIL_PAY_SUCCESS'=>1,
	'EMAIL_GROUP_SUCCESS'=>0,
	'EMAIL_GRADE_SUCCESS'=>0,
	'EMAIL_BIND_SUCCESS'=>1,
);
return array_merge($array,$config);
?>