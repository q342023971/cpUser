<?php
//帐号信息
class InfoAction extends UserGlobalAction
{
	//用户信息
	public function index()
	{
		$this->display();
	}
	//修改用户信息
	public function edit()
	{
		$this->display();
	}
	//修改密码
	public function editPassword()
	{
		if($this->isPost())
		{
			$old_password=trim($_POST["old_password"]);
			$new_password=trim($_POST["new_password"]);
			$confirm_password=trim($_POST["confirm_password"]);
			if(!$old_password) $this->error("旧密码不能为空");
			if(!$new_password) $this->error("新密码不能为空");
			if(!$confirm_password) $this->error("确认密码不能为空");
			if($new_password!=$confirm_password) $this->error("新密码与确认密码不相同");
			$db=M('SystemLogs');
			$where['username']=C('userNAME');
			$data['count']=$db->where($where)->count();
		}else{
			$this->display();
		}
	}
	//用户等级
	public function editGrade()
	{
		$this->display();
	}
	//账户日志
	public function logs()
	{
		import("@.ORG.Page");
		$db=M('SystemLogs');
		if(C('SubUser'))
		{
			$where['username']=C('mainID').':'.C('userNAME');
		}else{
			$where['username']=C('userNAME');
		}
		$data['count']=$db->where($where)->count();
		if($data['count'])
		{
			$p=new Page($data['count'],15);
			$data['list']=$db->limit($p->firstRow.','.$p->listRows)->where($where)->order('time desc')->select();
			$data['page']=$p->show();
		}
		$this->assign('data',$data);
		$this->display();
	}
}
?>