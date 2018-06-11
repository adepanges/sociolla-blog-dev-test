<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends Blog_Controller {

    function __construct()
    {
        parent::__construct();
    }

	public function index($key = '', $val = '')
	{
        $this->load->model('blogs_model');
        $page = 1;

        if(empty($key)) $key = 'page';

        if($key == 'page') $page = (!empty($val) && $val != 0)?$val:$page;

        $this->_set_data([
            'current_page' => $page,
            'max_page' => ceil($this->blogs_model->get_total_records() / 3),
            'blog' => $this->blogs_model->get([
                'page' => $page,
                'limit' => 3
            ])->result()
        ]);

        $this->blade->view('inc/blog/app', $this->data);
	}

    function tag_filter($tag = '')
    {
        $this->session->set_userdata('blog_tag_filter', trim(base64_decode($tag)));
        redirect('blog');
    }
}
