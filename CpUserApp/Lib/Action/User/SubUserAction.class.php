<?php
//子会员公共事务
class SubUserAction extends Action
{
	public function loginNwe()
	{
		if($this->isPost())
		{
			$rcode=trim($_POST['rcode']);
			$username=trim($_POST['username']);
			$SubUser=D('SubUser');
			$user=$User->login($username,$rcode);
			if($user)
			{
				$time=time();
				cookie('subuserKEY',md5($user['id'].C('USER_C_KEY').$time));
				cookie('subuserID',$user['id']);
				cookie('subuserNAME',$user['username']);
				cookie('sublastloginip',$user['lastloginip']);
				cookie('sublastlogindate',$user['lastlogindate']);
				cookie('subnickname',$user['nickname']);
				$User->where('id='.$user['id'])->save(array('lastloginip'=>get_client_ip(),'lastlogindate'=>$time));
				systemLogs($username,'SUCCESS','userLogin','success');
				if($this->isAjax())
				{
					$this->success(U('Index/index'),true);
				}else{
					$this->redirect('Index/index');
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