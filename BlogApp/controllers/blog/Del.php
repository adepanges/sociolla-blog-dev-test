<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Del extends Blog_Controller {
    public function index($id = 0)
    {
        if(empty($this->profile)) $this->_response_json([
               'status' => 0,
               'message' => 'you have not access'
           ]);

        $id = (int) $id;
        if(!$id) $this->_response_json([
            'status' => 0,
            'message' => 'id must be set in uri'
        ]);

        $this->load->model('blogs_model');

        if($this->blogs_model->del($id))
        {
            $this->_response_json([
                'status' => 1,
                'message' => 'Berhasil menghapus data'
            ]);
        }
        else
        {
            $this->_response_json([
                'status' => 0,
                'message' => 'Gagal menghapus data'
            ]);
        }
    }
}
