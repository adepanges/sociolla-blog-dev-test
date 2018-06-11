<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Init extends Blog_Controller {
    public function index($q = '', $param_q = '')
    {
        // not any role to init
        redirect('/');
    }
}
