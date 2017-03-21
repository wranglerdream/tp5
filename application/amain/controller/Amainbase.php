<?php
namespace app\amain\controller;
use think\Controller;
use think\Session;
class Amainbase extends Controller
{   
	public function _initialize()
	{     
		if(!Session::get('mname')){$this->redirect('Login/login_show');}
	}
}
