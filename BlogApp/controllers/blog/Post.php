<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends Blog_Controller {

    function __construct()
    {
        parent::__construct();
    }

	public function index($id = 0)
	{
        $this->_set_data([
            'blog_id' => (int) $id
        ]);

        $this->blade->view('inc/blog/post', $this->data);
	}

    public function save()
    {
        if(empty($this->profile)) $this->_response_json([
               'status' => 0,
               'message' => 'you have not access'
           ]);
           
        $blog_id = (int) $this->input->post('blog_id');
        $this->load->model('blogs_model');

        $data = [
            'slug' => $this->input->post('slug'),
            'title' => $this->input->post('title'),
            'content' => htmlentities($this->input->post('content')),
            'tag' => $this->input->post('tag'),
            'updated_at' => date('Y-m-d H:i:s'),
            'updated_by' => $this->profile['user_id'],
            'status' => $this->input->post('status'),
        ];

        if($this->blogs_model->check_unique_data([
            'slug' => $data['slug'],
        ], $blog_id) > 0)
        {
            $this->_response_json([
                'status' => 0,
                'message' => 'Slug sudah ada'
            ]);
        }

        if(!$blog_id)
        {
            // tambah
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = $this->profile['user_id'];
            $res = $this->blogs_model->add($data);
            $blog_id = $this->db->insert_id();
        }
        else
        {
            // ubah
            $res = $this->blogs_model->upd($data, $blog_id);
        }

        if($res)
        {
            $this->_response_json([
                'status' => 1,
                'message' => 'Berhasil menyimpan data',
                'blog_id' => $blog_id
            ]);
        }
        else
        {
            $this->_response_json([
                'status' => 0,
                'message' => 'Gagal menyimpan data',
                'blog_id' => $blog_id
            ]);
        }
    }
}
