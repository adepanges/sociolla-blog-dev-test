<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(FCPATH.'configuration/routes.php');

// custom in here

$route['blog/page/(:num)'] = 'blog/app/index/page/$1';
$route['blog/post/(:num)'] = 'blog/post/index/$1';
$route['blog/tag_filter/(:any)'] = 'blog/app/tag_filter/$1';
