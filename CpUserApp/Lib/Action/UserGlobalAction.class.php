<?php
//后台全局类
class UserGlobalAction extends Action {
	public function _initialize()
	{
		C('userID',cookie('userID'));
		if(!C('userID')) $this->redirect('Public/login');
	}
}
?>