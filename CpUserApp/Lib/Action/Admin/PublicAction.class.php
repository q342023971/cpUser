<?php
//公共页面
class PublicAction extends Action {
	public function login()
	{
		if($this->isPost())
		{
			$username=trim($_POST["username"]);
			$password=trim($_POST["password"]);
			$User=D('User');
			$admin=$User->loginAdmin($username,$password);
			if($admin)
			{
				systemLogs($username,'SUCCESS','adminLogin','success');
				Session::set('adminID',$admin['id']);
				Session::set('adminNAME',$admin['username']);
				Session::set('lastloginip',$admin['lastloginip']);
				Session::set('lastlogindate',$admin['lastlogindate']);
				Session::set('head',$admin['head']);
				Session::set('grade_id',$admin['grade_id']);
				Session::set('nickname',$admin['nickname']);
				$User->where('id='.$admin['id'])->save(array('lastloginip'=>get_client_ip(),'lastlogindate'=>time()));
				$this->redirect('Index/index');
			}else{
				systemLogs($username,$User->getError(),'adminLogin','error');
				$this->error(L('MODEL_USER_'.$User->getError()));
			}
		}else{
			$this->display();
		}
	}
	public function loginOut() {
		Session::clear(); 
		$this->redirect('login');
	}
}
?>