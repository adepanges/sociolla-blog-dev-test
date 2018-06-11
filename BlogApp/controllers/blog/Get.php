<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Get extends Blog_Controller {

    public function byid($id = 0)
    {
        $data = (object) [];
        $id = (int) $id;

        if($id)
        {
            $this->load->model('blogs_model');
            $data = $this->blogs_model->get_byid($id);
            $data->content = html_entity_decode($data->content);
        }

        $this->_response_json($data);
    }
}
