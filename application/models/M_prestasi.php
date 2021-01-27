<?php


class M_prestasi extends CI_Model
{
    public $table = 'tbl_prestasi';


    public function get()
    {
        // Jalankan query
        $query = $this->db->get($this->table);

        // Return hasil query
        return $query;
    }

    public function get_where($where)
    {
        // Jalankan query
        $query = $this->db
            ->where($where)
            ->get($this->table);

        // Return hasil query
        return $query;
    }

    public function insert($data)
    {
        // Jalankan query
        $query = $this->db->insert($this->table, $data);

        // Return hasil query
        return $query;
    }

    public function update($id, $data)
    {
        // Jalankan query
        $query = $this->db
            ->where('id', $id)
            ->update($this->table, $data);

        // Return hasil query
        return $query;
    }

    public function delete($id)
    {
        // Jalankan query
        $query = $this->db
            ->where('id', $id)
            ->delete($this->table);

        // Return hasil query
        return $query;
    }
    function prestasi_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_prestasi  limit $offset,$limit");
		return $hsl;
	}

}