<?php
namespace app\amain\controller;
use think\Controller;
class Index extends Amainbase
{   
    public function index()
    {   
        return view();
    }

    public function pass_update(){
    	return view();
    }

    public function info(){
    	//dump($_SERVER);exit;
    	return view();
    }

    public function main_list(){
    	return view();
    }
}
