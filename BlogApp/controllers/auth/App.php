<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends Blog_Controller {

	public function index()
	{
        if($this->_is_sso_signed()){
            redirect('blog');
        }
        else
        {
            redirect('auth/log/out');
        }
	}
}
