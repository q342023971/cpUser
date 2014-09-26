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
		array('state',1),
		array('points',0),
		array('balance',0.00),
		array('grade_id',1),		//默认用户组
	);
	protected $_validate=array(
		array('username','require','USERNAME_NO_NULL'),
		array('username','','USERNAME_EXISTENCE',0,'unique',1),
		array('password','require','PASSWORD_NO_NULL'),
		array('confirm_password','password','PASSWORD_CONFIRM_PASSWORD_ERROR',0,'confirm'),
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
			$this->error='USERNAME_NO_NULL';
			return false;
		}
		if(!$password)
		{
			$this->error='PASSWORD_NO_NULL';
			return false;
		}
		$loginTime=time();
		$UserLoginWrong=M('UserLoginWrong');
		$UserLoginWrong->add(array('username'=>$username,'times'=>$loginTime,'ip'=>get_client_ip()));
		if($UserLoginWrong->where(array('username'=>$username,'times'=>array('gt',$loginTime-86400)))->count()>10)
		{
			$this->error='USERNAME_LOGIN_WRONG';
			return false;
		}
		if($UserLoginWrong->where(array('username'=>$username,'times'=>array('gt',$loginTime-3600),'ip'=>get_client_ip()))->count()>5)
		{
			$this->error='USERNAME_LOGIN_WRONG';
			return false;
		}
		$user=$this->where(array('username'=>$username))->find();
		if(!$user)
		{
			$this->error='USERNAME_NO_EXISTENCE';
			return false;
		}
		if($user['state']==2)
		{
			$this->error='USERNAME_LOCKED';
			return false;
		}
		if(md5($password)!=$user['password'])
		{
			$this->error='PASSWORD_ERROR';
			return false;
		}
		unset($user['password']);
		return $user;
	}
}
?>