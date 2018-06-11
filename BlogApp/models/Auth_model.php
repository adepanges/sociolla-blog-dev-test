<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends Blog_Model {
    protected
        $datatable_param = NULL,
        $table = 'user';

    function get_byid($user_id)
    {
        return $this->db->where('user_id', ((int) $id))->get($this->table)->row();
    }

    function login_validate($params)
    {
        $sql = "SELECT *
        FROM {$this->table}
        WHERE (username = ? OR email = ?)
        AND password = ?";
        return $this->db->query($sql, [
            $params['username_email'], $params['username_email'], md5($params['password'])
        ]);
    }
}
