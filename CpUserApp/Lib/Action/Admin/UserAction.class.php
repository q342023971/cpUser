<?php
//会员管理
class UserAction extends AdminGlobalAction {
	public function setting() {
		if($this->isPost())
		{
			$_POST['USER_REGISTER_AGREEMENT_STATE']=getCheckboxValue($_POST['USER_REGISTER_AGREEMENT_STATE']);
			$_POST['USER_NAME_TYPE_TEXT']=getCheckboxValue($_POST['USER_NAME_TYPE_TEXT']);
			$_POST['USER_NAME_TYPE_MOBILE']=getCheckboxValue($_POST['USER_NAME_TYPE_MOBILE']);
			$_POST['USER_NAME_TYPE_EMAIL']=getCheckboxValue($_POST['USER_NAME_TYPE_EMAIL']);
			$_POST['USER_NAME_TYPE_API']=getCheckboxValue($_POST['USER_NAME_TYPE_API']);
			$_POST['USER_NAME_MUST_BIND']=getCheckboxValue($_POST['USER_NAME_MUST_BIND']);
			$_POST['EMAIL_SMTP_SSL']=getCheckboxValue($_POST['EMAIL_SMTP_SSL']);
			$_POST['EMAIL_URL_LOGIN']=getCheckboxValue($_POST['EMAIL_URL_LOGIN']);
			$_POST['EMAIL_REGISTER_SUCCESS']=getCheckboxValue($_POST['EMAIL_REGISTER_SUCCESS']);
			$_POST['EMAIL_PASSWORD_SUCCESS']=getCheckboxValue($_POST['EMAIL_PASSWORD_SUCCESS']);
			$_POST['EMAIL_PAY_SUCCESS']=getCheckboxValue($_POST['EMAIL_PAY_SUCCESS']);
			$_POST['EMAIL_GROUP_SUCCESS']=getCheckboxValue($_POST['EMAIL_GROUP_SUCCESS']);
			$_POST['EMAIL_GRADE_SUCCESS']=getCheckboxValue($_POST['EMAIL_GRADE_SUCCESS']);
			$_POST['EMAIL_BIND_SUCCESS']=getCheckboxValue($_POST['EMAIL_BIND_SUCCESS']);
			F('cp.config.inc',$_POST,CPWEB_ROOT);
			F('~runtime',NULL,RUNTIME_PATH);
			$this->success('修改成功');
		}else{
			$this->display();
		}
	}
	public function userList()
	{
		import("ORG.Util.Page");
		$db=M('User');
		$data['count']=$db->count();
		if($data['count'])
		{
			$p=new Page($data['count'],15);
			$data['list']=$db->limit($p->firstRow.','.$p->listRows)->order('createdate desc')->select();
			$data['page']=$p->show();
		}
		$this->assign('data',$data);
		$this->display();
	}
	public function userInfo()
	{
		if($this->isPost())
		{
			
		}else{
			$user_id=$_GET['user_id'];
			if(!$user_id) $this->error("用户不存在");
			$info=D('User')->where()->find();
			if(!$info) $this->error("用户不存在");
			$this->assign('info',$info);
			$this->display();
		}
	}
	public function logs()
	{
		import("ORG.Util.Page");
		$db=M('SystemLogs');
		$data['count']=$db->count();
		if($data['count'])
		{
			$p=new Page($data['count'],15);
			$data['list']=$db->limit($p->firstRow.','.$p->listRows)->order('time desc')->select();
			$data['page']=$p->show();
		}
		$this->assign('newLogs',F('newSystemLogs'));
		F('newSystemLogs',NULL);
		$this->assign('data',$data);
		$this->display();
	}
	public function ad()
	{
		$type=!empty($_GET['type'])?$_GET['type']:'text';
		if($type=='text')
		{
			import("ORG.Util.Page");
			$db=M('UserAdText');
			$data['count']=$db->count();
			if($data['count'])
			{
				$p=new Page($data['count'],15);
				$data['list']=$db->limit($p->firstRow.','.$p->listRows)->order('id desc')->select();
				$data['page']=$p->show();
			}
			$this->assign('data',$data);
			$this->display();
		}elseif($type=='img'){
			import("ORG.Util.Page");
			$db=M('UserAdImg');
			$data['count']=$db->count();
			if($data['count'])
			{
				$p=new Page($data['count'],15);
				$data['list']=$db->limit($p->firstRow.','.$p->listRows)->order('id desc')->select();
				$data['page']=$p->show();
			}
			$this->assign('data',$data);
			$this->display();
		}else{
			$this->error("广告类型不存在");
		}
		
	}
}
?>