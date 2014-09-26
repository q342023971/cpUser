<?php
//后台全局类
class UserGlobalAction extends Action {
	public function _initialize()
	{
		C('mainID',cookie('mainID'));
		C('userID',cookie('userID'));
		if(!C('mainID') || !C('userID')) $this->redirect('Public/login');
		if(C('mainID')!=C('userID'))
			C('SubUser',true);
		else
			C('SubUser',false);
		
		C('userNAME',cookie('userNAME'));
		
		//获取扩展信息
		$expansion_list = get_dir(CONFIG_PATH);
		$expansion=get_expansion_dir($expansion_list);
		$this->assign('expansion',$expansion);
	}
}
?>