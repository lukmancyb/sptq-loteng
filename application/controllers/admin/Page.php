<?php

class Page extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->isAdmin();
        $this->load->model('m_pages');
    }


    function index()
    {
//        var_dump("Pages");die;
        $query = $this->m_pages->get()->result();
        $d['pages'] = $query;
        $this->load->view('admin/pages/v_pages', $d);
    }

    public function add_page()
    {
        $this->load->view('admin/pages/v_add_page');
    }

    public function edit_page()
    {
        $uri = $this->uri->segment(4);
        $query = $this->m_pages->get_where(array('id' => $uri))->row();
        $d['page'] = $query;
        $this->load->view('admin/pages/v_edit_page', $d);
    }

    public function simpan_page()
    {
        $post = $this->input->post();
        $judul = $post['menu'];
        $string = preg_replace('/[^a-zA-Z0-9 \&%|{.}=,?!*()"-_+$@;<>\']/', '', $judul);
        $trim = trim($string);
        $slug = strtolower(str_replace(" ", "-", $trim));

        $data = array(
            'menu' => $post['menu'],
            'content' => $post['content'],
            'slug' => $slug,
            'created_at' => date('Y:m:d h:m:s')
        );
        $query = $this->m_pages->insert($data);
        if ($query) {
            echo $this->session->set_flashdata('msg', 'success');
            redirect('admin/page');
        } else {
            echo $this->session->set_flashdata('msg', 'error');
            redirect('admin/page');
        }
    }

    public function update_page()
    {
        $post = $this->input->post();
        $judul = $post['menu'];
        $string = preg_replace('/[^a-zA-Z0-9 \&%|{.}=,?!*()"-_+$@;<>\']/', '', $judul);
        $trim = trim($string);
        $slug = strtolower(str_replace(" ", "-", $trim));

        $data = array(
            'menu' => $post['menu'],
            'content' => $post['content'],
            'slug' => $slug,
            'is_active' => 1
        );
        $query = $this->m_pages->update($post['id'], $data);
        if ($query) {
            echo $this->session->set_flashdata('msg', 'success');
            redirect('admin/page');
        } else {
            echo $this->session->set_flashdata('msg', 'error');
            redirect('admin/page');
        }
    }

    function hapus_page()
    {
        $kode = $this->input->post('id');
        $query = $this->m_pages->delete($kode);

        if ($query) {
            echo $this->session->set_flashdata('msg', 'success-hapus');
            redirect('admin/page', 'refresh');
        } else {
            echo $this->session->set_flashdata('msg', 'error');
            redirect('admin/page', 'refresh');

        }

    }


}
