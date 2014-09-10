<?php
//信息管理
class SmsAction extends AdminGlobalAction {
	public function index() {
		import("ORG.Util.Page");
		$db=M('Sms');
		$data['count']=$db->count();
		if($data['count'])
		{
			$p=new Page($data['count'],15);
			$data['list']=$db->limit($p->firstRow.','.$p->listRows)->order('create_date desc')->select();
			$data['page']=$p->show();
		}
		$this->assign('data',$data);
		$this->display();
	}
}
?>