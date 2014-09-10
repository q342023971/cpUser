<?php
//后台全局类
class AdminGlobalAction extends Action {
	public function _initialize()
	{
		if(ADMIN_APP!==true) exit('Page error, can not access');
		C('adminID',Session::get('adminID'));
		
		if(!C('adminID')) $this->redirect('Public/login');
		
		$this->assign('newSystemLogs',getSystemLogs());
	}
}
?>