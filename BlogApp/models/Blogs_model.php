<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blogs_model extends blog_Model {
    protected
        $datatable_param = NULL,
        $table = 'blog',
        $orderable_field = [],
        $fillable_field = ['slug','title','content','tag','created_by','created_at','updated_by','updated_at','status'],
        $searchable_field = [];

    function get($params = [])
    {
        if(!isset($params['page'])) $page['page'] = 1;
        if(!isset($params['limit'])) $page['limit'] = 3;

        $start = ($params['page'] != 0)?(($params['page'] - 1) * $params['limit']):0;
        $params['tag'] = $this->db->escape_like_str($this->session->userdata('blog_tag_filter'));

        $sql = "SELECT
            	a.*,
            	b.user_id AS created_by_user_id, b.username AS created_by_username, b.full_name AS created_by_full_name,
            	c.user_id AS updated_by_user_id, c.username AS updated_by_username, c.full_name AS updated_by_full_name
            FROM blog a
            LEFT JOIN `user` b ON a.created_by = b.user_id
            LEFT JOIN `user` c ON a.updated_by = c.user_id
            WHERE a.tag LIKE '%{$params['tag']}%'
            ORDER BY blog_id DESC
            LIMIT ?, ?";

        return $this->db->query($sql, [
            $start, $params['limit']
        ]);
    }

    function get_byid($id)
    {
        return $this->db->get_where($this->table, [
            'blog_id' => (int) $id
        ])->first_row();
    }

    function del($id)
    {
        return $this->db->delete($this->table, ['blog_id' => ((int) $id)]);
    }

    function upd($data, $blog_id)
    {
        $this->db->where('blog_id', $blog_id);
        return $this->db->update($this->table, $this->_sanity_field($data));
    }

    function add($data)
    {
        return $this->db->insert($this->table, $this->_sanity_field($data));
    }

    function get_total_records()
    {
        return $this->db->query('SELECT count(*) AS total_records FROM blog')->first_row()->total_records;
    }

    function check_unique_data($data, $self_id = 0)
    {
        if(!empty($data))
        {
            $this->db->or_where($this->_sanity_field($data, ['slug']));
            if($self_id) $this->db->where('blog_id <>', $self_id);
            $this->db->from($this->table);
            return $this->db->count_all_results();
        }
        else
        {
            return 0;
        }
    }
}
