<?php
/**
  * @author nanze
  * @link 
  * @todo 
  * @copyright 811046@qq.com
  * @version 1.0
  * @lastupdate 2010-11-23
*/ 
class UserModel extends Model{
	protected $_auto=array(
		array('password','md5',1,'function'),
		array('lastloginip','get_client_ip',1,'function'),
		array('createdate','time',1,'function'),
		array('lastlogindate','time',1,'function'),
		array('points',0),
		array('balance',0.00),
		array('grade_id',1),		//默认用户组
	);
	protected $_validate=array(
		array('username','require','用户名不能为空'),
		array('username','','用户名已存在',0,'unique',1),
		array('password','require','密码不能为空'),
		array('confirm_password','password','密码与确认密码一致',0,'confirm'),
	);
	public function loginAdmin($username,$password)
	{
		$user=$this->login($username,$password);
		if(!$user)
		{
			return false;
		}
		//查询管理员权限
		
		return $user;
	}
	public function login($username,$password)
	{
		if(!$username)
		{
			$this->error='用户名不能为空';
			return false;
		}
		if(!$password)
		{
			$this->error='密码不能为空';
			return false;
		}
		$user=$this->where(array('username'=>$username))->find();
		if(!$user)
		{
			$this->error='用户不存在';
			return false;
		}
		if(md5($password)!=$user['password'])
		{
			$this->error='密码错误';
			return false;
		}
		unset($user['password']);
		return $user;
	}
}
?>