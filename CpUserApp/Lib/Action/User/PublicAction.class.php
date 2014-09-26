<?php
//会员公共事务
class PublicAction extends Action
{
	//注册
	public function register() {
		if($this->isPost())
		{
			$usertype=trim($_POST["usertype"]);
			if($usertype=='TEXT')
			{
				$username=trim($_POST["username"]);
			}elseif($usertype=='MOBILE'){
				$username=trim($_POST["mobile"]);
			}elseif($usertype=='EMAIL'){
				$username=trim($_POST["email"]);
			}
			
			//验证帐号是否存在
			$UserBind=D('UserBind');
			$user_id=$UserBind->isUser($username,$usertype);
			if($user_id===false)
			{
				$this->error($UserBind->getError());
			}
			$_POST["username"]=$username;
			//验证会员信息
			$User=D('User');
			if($User->create())
			{
				$user_id=$User->add();
				C("USER_ID",$user_id);
				if($user_id)
				{
					Session::set('UserID',$user_id);
					//判断是否需要绑定后才可登陆
					if(C('USER_NAME_MUST_BIND'))
					{
						//跳转到绑定页面
						$this->redirect('Security/bind?type='.$usertype);
					}else{
						if($_SESSION['back'])
						{
							redirect($_SESSION['back']);
						}else{
							$this->redirect('Index/index');
						}
					}
				}else{
					$this->error("注册失败");
				}
			}else{
				$this->error(L('MODEL_USER_'.$User->getError()));
			}
		}else{
			$this->display();
		}
	}
	//登录
	public function login() {
		$api=trim($_GET['api']);
		$id=trim($_GET['id']);
		if($api) cookie('api',$api);
		if($id) cookie('api_id',$id);
		$this->display();
	}
	public function logins()
	{
		$jsonp=$_GET['jsonp'];
		$rnd=$_GET['rnd'];
		if($rnd)
		{
			//dump(base64_decode($rnd));
			//dump(base64_decode('8BAC5C0A6C6F3ABA4176C41A7C1CE1AA4D9634499F15ABB1C87B189EC9C3FABED2020D0E8B3BC2422CB05D604A0F81B6AE57AC6F05B4D7320DC169AFB46C737C9CA696932037738DB9F7E292FA974D951DA8E2BABFF6B61C52866E8E5159D08CC0ECBA06F6541C27D8B8FC68916B4C128D29EFE93832D76C766148BD56617787'));
			//$this->setPublic('8BAC5C0A6C6F3ABA4176C41A7C1CE1AA4D9634499F15ABB1C87B189EC9C3FABED2020D0E8B3BC2422CB05D604A0F81B6AE57AC6F05B4D7320DC169AFB46C737C9CA696932037738DB9F7E292FA974D951DA8E2BABFF6B61C52866E8E5159D08CC0ECBA06F6541C27D8B8FC68916B4C128D29EFE93832D76C766148BD56617787','10001');
			echo $jsonp.'("200\n10001\n8BAC5C0A6C6F3ABA4176C41A7C1CE1AA4D9634499F15ABB1C87B189EC9C3FABED2020D0E8B3BC2422CB05D604A0F81B6AE57AC6F05B4D7320DC169AFB46C737C9CA696932037738DB9F7E292FA974D951DA8E2BABFF6B61C52866E8E5159D08CC0ECBA06F6541C27D8B8FC68916B4C128D29EFE93832D76C766148BD56617787")';
			//http://id.719471.net/index.php?g=User&m=Public&a=logins&rnd=MTUxMTIxMDU0NDU=&jsonp=fEnData
		}
		//echo '<html><head><script type="text/javascript">window.location.href = "http://mail.126.com/errorpage/error126.htm?errorType=460&errorUsername=q342023971@126.com";</script></head><body></body></html>';
	}
	public function loginNwe()
	{
		if($this->isPost())
		{
			$rcode=trim($_POST['rcode']);
			$savelogin=trim($_POST['savelogin']);
			$username=trim($_POST['username']);
			$bDyn=trim($_POST['bDyn']);
			if($bDyn==1){
				$User=D('User');
			}else{
				$User=D('SubUser');
			}
			$user=$User->login($username,$rcode);
			if($user)
			{
				$time=time();
				cookie('userKEY',md5($user['id'].C('USER_C_KEY').$time));
				if($savelogin) C('COOKIE_EXPIRE',864000);
				if($bDyn==1)
				{
					cookie('mainID',$user['id']);
				}else{
					cookie('mainID',$user['user_id']);
				}
				cookie('userID',$user['id']);
				cookie('userNAME',$user['username']);
				cookie('lastloginip',$user['lastloginip']);
				cookie('lastlogindate',$user['lastlogindate']);
				cookie('head',$user['head']);
				cookie('grade_id',$user['grade_id']);
				cookie('nickname',$user['nickname']);
				$User->where('id='.$user['id'])->save(array('lastloginip'=>get_client_ip(),'lastlogindate'=>$time));
				systemLogs($username,'SUCCESS','userLogin','success');
				$api=cookie('api');
				if($api)
				{
					$api_id=cookie('api_id');
					if($api_id)
					{
						$redirect=U($api.'/gotoAdmin?id='.$api_id);
					}else{
						$redirect=U($api.'/index');
					}
				}else{
					$redirect=U('Index/index');
				}
				if($this->isAjax())
				{
					$this->success($redirect,true);
				}else{
					redirect($redirect);
				}
			}else{
				systemLogs($username,$User->getError(),'userLogin','error');
				if($this->isAjax())
				{
					$this->error($User->getError(),$this->isAjax());
				}else{
					$this->error(L('MODEL_USER_'.$User->getError()));
				}
			}
		}else{
			$this->error('页面不存在');
		}
	}
	//找回密码
	public function retakePassword() {
		$this->display();
	}
	//外部会员共享登录
	public function loginApi() {
		$this->display();
	}
	public function ad()
	{
		if($_GET['type']=='text')
		{
			$uid=!empty($_GET['uid'])?$_GET['uid']:'0';
			$list=M('UserAdText')->limit(2)->order('id desc')->where('state=1')->select();
			if($list)
			{
				$ad='loginExtAD.callback({"ver":4,"templateUrl":"'.C('WEB_URL').'/Public/Skin/web/js/login/bLoginTpl.js","lt":[';
				foreach($list as $key=>$value)
				{
					$ad_l[$key]='{"uid":"'.$uid.'","pid":'.($key+1).',"tpl":"'.$value['tpl'].'","openUrl":"'.U('adpmt?statId=1_1_1_'.$value['id']).'","promTextClickCountUrl":"'.U('ad_url?url='.urlencode($value['url']).'&ad_statId=1_1_1_'.$value['id']).'","promText":"'.$value['text'].'"}';
				}
				$ad.=implode(',',$ad_l);
				$ad.=']});';
				echo $ad;
			}
		}elseif($_GET['type']=='img'){
			$uid=!empty($_GET['uid'])?$_GET['uid']:'0';
			//生成返回数据
			$data='themeHandler.callback({';
			//用户属性
			$data.='"userProperty":{"boboSelf":0,"bobos":0,"browserType":-1,"companySender":"","domain":"126.com","gameFootball":0,"gameQnyh2s":0,"gameWyncs":0,"games":0,"interest1":0,"interest2":0,"interest3":0,"lotteryType":0,"mailLiveness":-1,"mailPropertyIds":"","mailRegTime":-1,"mailVer":0,"mod":"","ph":-1,"prod":"wmail_lbp","sex":0,"uid":"nt@126.com","unusedProdIds":"1","usedProdIds":"","ver":1,"wapUserType":-1},';
			//广告数据列表
			$data.='"dataContext":"{\"_126LbpAdUnitsList\":[';			
			
			$list=M('UserAdImg')->limit(10)->order('id desc')->where('state=1')->select();
			if($list)
			{
				foreach($list as $key=>$value)
				{
					$ad_l[$key]='{\"ad\":{\"bgColor\":\"'.$value['bgColor'].'\",\"bgMusicTag\":0,\"bgPicFilePath\":\"'.$value['bgPicFilePath'].'\",\"bgPicUrl\":\"'.$value['bgPicUrl'].'\",\"bgPicVersionNO\":'.$value['bgPicVersionNO'].',\"clickCountTag\":1,\"flag\":\"\",\"flashTag\":0,\"iframeUrl\":\"\",\"name\":\"'.$value['name'].'\",\"openCountUrl\":\"'.U('adpmt?statId=1_1_2_'.$value['id']).'\",\"promPicClickCountUrl\":\"'.U('ad_url?url='.urlencode($value['url']).'&ad_statId=1_1_2_'.$value['id']).'\",\"promPicClickUrl\":\"'.$value['url'].'\",\"promPicFilePath\":\"'.$value['promPicFilePath'].'\",\"promPicUrl\":\"'.$value['promPicUrl'].'\",\"promPicVersionNO\":'.$value['promPicVersionNO'].',\"promResType\":'.$value['promResType'].',\"showCountTag\":1,\"taskFlash\":null,\"taskMusic\":null,\"thirdpartyShowCountUrl\":\"\"},';
					$ad_l[$key].='\"customConfig\":{\"taskCustProductProperty\":{\"bobo\":\"\",\"bobo1\":0,\"boboSelf\":0,\"browserType\":-1,\"consumeLevel\":\"\",\"game\":\"\",\"game1\":0,\"gameDhwzxp\":\"\",\"gameDhwzxp1\":0,\"gameDhxy3Clsc\":\"\",\"gameDhxy3Clsc1\":0,\"gameDhxy3Free\":\"\",\"gameDhxy3Free1\":0,\"gameDtws2\":\"\",\"gameDtws21\":0,\"gameFootball\":\"\",\"gameFootball1\":0,\"gameMhxy\":\"\",\"gameMhxy1\":0,\"gameQnyh2\":\"\",\"gameQnyh21\":0,\"gameQnyh22\":0,\"gameQnyh23\":0,\"gameTx3\":\"\",\"gameTx31\":0,\"gameWh\":\"\",\"gameWh1\":0,\"gameWync\":\"\",\"gameWync1\":0,\"gameWync2\":0,\"gameWync3\":0,\"gameXdhxy2\":\"\",\"gameXdhxy21\":0,\"gameYxsg\":\"\",\"gameYxsg1\":0,\"gameZgmh\":\"\",\"gameZgmh1\":0,\"interest\":\"\",\"interest1\":0,\"interest2\":0,\"interest3\":0,\"lotteryType\":\"\",\"mailLiveness\":-1,\"mailPropertyIds\":\"\",\"mailRegTime\":-1,\"sex\":\"\",\"totalCompanySender\":\"\",\"unusedProdIds\":\"\",\"usedProdIds\":\"\",\"wapType\":-1,\"wapUserType\":\"\"}},';
					$ad_l[$key].='\"taskLogic\":{\"flowLimitType\":2,\"idleFlowPercent\":0,\"number\":\"'.$value['number'].'\",\"onlineTimePeriods\":\"[]\",\"priority\":'.$value['priority'].',\"pvLimit\":0,\"showByNumberTag\":0,\"totalFlowPercent\":'.$value['totalFlowPercent'].',\"uvLimit\":0,\"verticalFlowLimitType\":-1,\"verticalIdleFlowPercent\":0,\"verticalTotalFlowPercent\":'.$value['verticalTotalFlowPercent'].'}}';
				}
				$data.=implode(',',$ad_l);
			}

			$data.='],';
			$data.='\"_126LbpAnchorAdUnitsList\":[],\"_163LbpAdUnitsList\":[],\"_163LbpAnchorAdUnitsList\":[],\"_emailLbpAdUnitsList\":[],\"_emailLbpAnchorAdUnitsList\":[],\"_yeahLbpAdUnitsList\":[],\"_yeahLbpAnchorAdUnitsList\":[]}"});';
			echo $data;

			/*
			$list=M('UserAdImg')->limit(10)->order('id desc')->where('state=1')->select();
			if($list)
			{
				$ad='themeHandler.callback({"userProperty":{"boboSelf":0,"bobos":0,"browserType":-1,"companySender":"","domain":"126.com","gameFootball":0,"gameQnyh2s":0,"gameWyncs":0,"games":0,"interest1":0,"interest2":0,"interest3":0,"lotteryType":0,"mailLiveness":-1,"mailPropertyIds":"","mailRegTime":-1,"mailVer":0,"mod":"","ph":-1,"prod":"wmail_lbp","sex":0,"uid":"nt@126.com","unusedProdIds":"1","usedProdIds":"","ver":1,"wapUserType":-1},"dataContext":"{\"_126LbpAdUnitsList\":[{';
				foreach($list as $key=>$value)
				{
					$ad_l[$key]='{"uid":"'.$uid.'","pid":'.($key+1).',"tpl":"'.$value['tpl'].'","openUrl":"'.U('adpmt?statId=1_1_1_'.$value['id']).'","promTextClickCountUrl":"'.U('ad_url?url='.urlencode($value['url']).'&ad_statId=1_1_1_'.$value['id']).'","promText":"'.$value['text'].'"}';
				}
				$ad.=implode(',',$ad_l);
				$ad.=']});';
				echo $ad;
			}
			*/
		}
	}
	public function ad_url()
	{
		$url=$_GET['url'];
		$data['statid']=$_GET['ad_statId'];
		$data['uid']=$_GET['_r_ignore_uid'];
		$data['type']='click';
		$data['stat_time']=time();
		M('user_ad_stat_statistics')->add($data);
		redirect($url);
	}
	public function adpmt()
	{
		$data['statid']=$_GET['statId'];
		$data['uid']=$_GET['uid'];
		$data['type']='show';
		$data['stat_time']=time();
		M('user_ad_stat_statistics')->add($data);
		header("Content-type: image/png");
		$im = @imagecreate(1, 1)
			or die("Cannot Initialize new GD image stream");
		$background_color = imagecolorallocate($im, 255, 255, 255);
		imagepng($im);
		imagedestroy($im);
	}
	public function loginOut()
	{
		cookie('userKEY',null);
		cookie('userID',null);
		cookie('userNAME',null);
		cookie('lastloginip',null);
		cookie('lastlogindate',null);
		cookie('head',null);
		cookie('grade_id',null);
		cookie('nickname',null);
		$this->success("退出登录成功");
	}
}
?>