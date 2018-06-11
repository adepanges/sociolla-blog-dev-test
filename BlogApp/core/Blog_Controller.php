<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog_Controller extends CI_Controller {
    protected $data = [];

    function __construct()
    {
        parent::__construct();
        $this->load->helper('uranus');

        $this->data = [
            'title' => $this->config->item('app_name'),
            'profile' => $this->session->userdata('profile'),
            'blog_tag_filter' => $this->session->userdata('blog_tag_filter'),
            'logout_link' => 'auth/log/out'
        ];

        $this->profile = $this->session->userdata('profile');
    }

    protected function _sso_profile()
    {
        return $this->session->userdata('profile');
    }

    protected function _is_sso_signed()
    {
        return (!empty($this->_sso_profile()) && $this->session->userdata('sso') == 1);
    }

    protected function _restrict_access($channel = 'web')
    {

        if(!$this->_is_sso_signed())
        {
            switch ($channel) {
                case 'rest':
                    # rest
                    $this->_response_json([
                        'status' => 0,
                        'message' => 'Anda tidak memiliki hak akses'
                    ]);
                    break;

                default:
                    # web
                    redirect('auth/log/out');
                    break;
            }
            exit;
        }
    }

    protected function _set_data($data)
    {
        if(!empty($data) && is_array($data))
        {
            $this->data = array_merge($this->data, $data);
        }
    }

    protected function _check_active_user()
    {
        if(!empty($this->profile))
        {
            $res = $this->db->limit(1)->get_where('sso_user', [
                'user_id' => $this->profile['user_id'],
                'status' => 1
            ])->first_row();
            if(empty($res))
            {
                $this->session->set_userdata('profile', []);
                redirect($this->data['logout_link']);
            }
        }
    }

    protected function _response_json($resp)
    {
        if(is_object($resp)) $resp->system_process_time = (microtime(true) - URANUS_LAUNCH);
        else if(is_array($resp)) $resp['system_process_time'] = (microtime(true) - URANUS_LAUNCH);

        header('Content-Type: application/json');
        echo json_encode($resp);

        exit;
    }
}
