<?php
//安全中心
class SecurityAction extends Action
{
	//安全中心首页
	public function index()
	{
		$this->display();
	}
	public function bind()
	{
		$type=$_GET['type'];
		if($type=='TEXT')
		{
			
		}elseif($type=='MOBILE'){
			
		}elseif($type=='EMAIL'){
			//获取用户邮箱地址
			
			//加载邮件发送类
			
			//生成验证码
			
			//加载邮件模板
			
			//替换内容
			
			//发送邮件
		}
	}
	/*
	//邮箱绑定
	public function mailBind()
	{
		$this->display();
	}
	//手机绑定
	public function mailBind()
	{
		$this->display();
	}
	//微信绑定
	public function weixinBind()
	{
		$this->display();
	}
	*/
}
?>