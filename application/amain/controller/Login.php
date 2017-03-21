<?php
namespace app\amain\controller;
use think\Controller;
use think\Session;
class Login extends Controller
{
	public function login_show()
	{   
		return view();
	}

	public function check_captcha(){

	}

	public function login_run(){
		$data_info = input('post.');
		if(!captcha_check($data_info['mcode'])){
			return $this->error('验证码不正确');
		}
        
        $wher_member['mName'] = $data_info['mname'];
        $wher_member['mPass'] = md5($data_info['mpass']);
        
		$member_data = db('member')->where($wher_member)->field('mName')->find();
		
		if($member_data){
           Session::set('mname',$member_data['mName']);
           return $this->redirect('Index/index');
		}else{
			return $this->error('登录失败');
		}
	}

	public function login_out(){
		Session::delete('mname');
		return $this->redirect('Index/index');
	}
}