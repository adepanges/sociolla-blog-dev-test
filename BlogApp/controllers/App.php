<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends Blog_Controller {

    function __construct()
    {
        parent::__construct();

    }

	public function index()
	{
        redirect('blog');
	}
}
