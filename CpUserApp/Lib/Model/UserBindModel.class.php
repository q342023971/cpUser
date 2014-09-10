<?php
/**
  * @author nanze
  * @link 
  * @todo 
  * @copyright 811046@qq.com
  * @version 1.0
  * @lastupdate 2010-11-23
*/ 
class UserBindModel extends Model{
	protected $_auto=array(
		array('bind_date',0),
		array('user_id','USER_ID',1,'callback'),
	);
	protected $_validate=array(
		array('type','require','用户类型不能为空'),
		array('data','require','用户名不能为空'),
		array('type',array('mobile','email'),'用户类型不可用',1,'in'),
	);
	protected function USER_ID()
	{
		return C("USER_ID");
	}
	public function isUser($username,$usertype)
	{
		if(!$this->getUserNameType($username,$usertype)) return false;
		$data["type"]=$usertype;
		$data["data"]=$username;
		
		$user_id=$this->where($data)->getField('user_id');
		if($user_id)
		{
			$this->error="用户名已存在";
			return false;
		}else{
			return true;
		}
	}
	public function getUserId($username,$usertype)
	{
		if(!$this->getUserNameType($username,$usertype)) return false;
		$data["type"]=$usertype;
		$data["data"]=$username;
		
		$user_id=$this->where($data)->getField('user_id');
		if($user_id)
		{
			return $user_id;
		}else{
			$this->error="用户名不存在";
			return false;
		}
	}
	//获取用户名格式类型
	public function getUserNameType($username,$type)
	{
		//判断用户名类型是否可用
		if(!C('USER_NAME_TYPE_'.$type))
		{
			$this->error="用户名格式可用";
			return false;
		}
		//验证用户名格式
		if($type=='MOBILE')
		{
			if(!preg_match("/^\d{11}$/",$username))
			{
				$this->error="手机号码不正确";
				return false;
			}
		}
		if($type=='EMAIL')
		{
			if(!ereg("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+",$username))
			{
				$this->error="邮箱地址不正确";
				return false;
			}
		}
		return true;
	}
}
?>