<?php
/**
  * @author nanze
  * @link 
  * @todo 
  * @copyright 811046@qq.com
  * @version 1.0
  * @lastupdate 2010-11-23
*/ 
class SubUserModel extends Model{
	protected $_auto=array(
		array('password','md5',1,'function'),
		array('lastloginip','get_client_ip',1,'function'),
		array('createdate','time',1,'function'),
		array('lastlogindate','time',1,'function'),
		array('state',1),
		array('grade_id',0),		//默认用户组
	);
	protected $_validate=array(
		array('user_id','require','USERID_NO_NULL'),
		array('username','require','USERNAME_NO_NULL'),
		array('username','','USERNAME_EXISTENCE',0,'unique',1),
		array('password','require','PASSWORD_NO_NULL'),
		array('confirm_password','password','PASSWORD_CONFIRM_PASSWORD_ERROR',0,'confirm'),
	);
	public function login($user,$password)
	{
		if(!$user)
		{
			$this->error='USERNAME_NO_NULL1';
			return false;
		}
		$u_l=explode(':',$user);
		$user_id=$u_l[0];
		$username=$u_l[1];
		if(!$user_id)
		{
			$this->error='USERID_NO_NULL';
			return false;
		}
		if(!$username)
		{
			$this->error='USERNAME_NO_NULL2';
			return false;
		}
		if(!$password)
		{
			$this->error='PASSWORD_NO_NULL';
			return false;
		}
		$loginTime=time();
		$UserLoginWrong=M('UserLoginWrong');
		$UserLoginWrong->add(array('username'=>$user,'times'=>$loginTime,'ip'=>get_client_ip()));
		if($UserLoginWrong->where(array('username'=>$user,'times'=>array('gt',$loginTime-86400)))->count()>10)
		{
			$this->error='USERNAME_LOGIN_WRONG';
			return false;
		}
		if($UserLoginWrong->where(array('username'=>$user,'times'=>array('gt',$loginTime-3600),'ip'=>get_client_ip()))->count()>5)
		{
			$this->error='USERNAME_LOGIN_WRONG';
			return false;
		}
		$user=$this->where(array('user_id'=>$user_id,'username'=>$username))->find();
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