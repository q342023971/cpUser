<?php
//程序管理
class ProgramAction extends UserGlobalAction
{
	//程序列表
	public function index()
	{
		import("@.ORG.Page");
		$db=M('Program');
		$where['user_id']=C('mainID');
		$data['count']=$db->where($where)->count();
		if($data['count'])
		{
			$p=new Page($data['count'],15);
			$data['list']=$db->limit($p->firstRow.','.$p->listRows)->where($where)->order('buy_date desc')->select();
			$data['page']=$p->show();
		}
		$this->assign('data',$data);
		$this->display();
	}
	//进入程序管理页面
	public function gotoAdmin()
	{
		$id=trim($_GET["id"]);
		if(!$id) $this->error("参数错误");
		$db=M('Program');
		$where['user_id']=C('mainID');
		$where['id']=$id;
		$data=$db->where($where)->find();
		$pid=$data['id'];
		if(C('userID')==C('mainID'))
		{
			$uid=C('userID');
		}else{
			$uid='s'.C('userID');
		}
		$time=time();
		$key=md5($pid.$uid.$data['key'].$time);
		$adminUrl=$data['adminUrl'];
		$match = array();
		preg_match_all('/{\$(.*?)}/', $adminUrl, $match);
		foreach($match[1] as $key => $value)
		{
			if(isset($$value))
			{
				$adminUrl = str_replace($match[0][$key], $$value, $adminUrl);
			}
		}
		redirect($adminUrl);
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