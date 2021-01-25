<?php

class Slider extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->cekLogin();
        $this->isAdmin();
        $this->load->model('m_slider');
        $this->load->library('upload');
    }


    function index()
    {

        // var_dump("Slider");die;
        $query = $this->m_slider->get()->result();

        $d['sliders'] = $query;

        // var_dump($query); die;

        $this->load->view('admin/slider/v_slider', $d);
    }


    public function add_slider()
    {
        $this->load->view('admin/slider/v_add_slider');
    }

    public function simpan_slider()
    {
        $config['upload_path'] = './assets/images/slider'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/images/slider/' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '60%';
                $config['width'] = 710;
                $config['height'] = 460;
                $config['new_image'] = './assets/images/slider/' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar = $gbr['file_name'];
                $title = strip_tags($this->input->post('title'));
                $desc = $this->input->post('description');

                $data = array(
                    'title' => $title,
                    'description' => $desc,
                    'img_url' => $gambar,
                    'created_at' => date('Y:m:d h:m:s')
                );

                $query = $this->m_slider->insert($data);

                if ($query) {
                    echo $this->session->set_flashdata('msg', 'success');
                } else {
                    echo $this->session->set_flashdata('msg', 'error');

                }


                redirect('admin/slider');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/slider');
            }

        } else {
            redirect('admin/slider');
        }
    }

    public function edit_slider()
    {
        $uri = $this->uri->segment(4);
        $query = $this->m_slider->get_where(array(
            'id' => $uri
        ))->row();
        $data['slider'] = $query;


//        var_dump($data);die;
        $this->load->view('admin/slider/v_edit_slider', $data);
    }

    function update_slider()
    {

        $config['upload_path'] = './assets/images/slider'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = './assets/images/slider' . $gbr['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = FALSE;
                $config['quality'] = '60%';
                $config['width'] = 710;
                $config['height'] = 460;
                $config['new_image'] = './assets/images/slider' . $gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $gambar = $gbr['file_name'];
                $id = $this->input->post('id');
                $title = strip_tags($this->input->post('title'));
                $desc = $this->input->post('description');
                $old_img = $this->input->post('old_img');

                $data = array(
                    'id' => $id,
                    'title' => $title,
                    'description' => $desc,
                    'img_url' => $gambar
                );

                $query = $this->m_slider->update($id, $data);
                if ($query) {
                    $path = './assets/images/slider/' . $old_img;
                    unlink($path);
                    echo $this->session->set_flashdata('msg', 'success');
                    redirect('admin/slider');
                } else {
                    echo $this->session->set_flashdata('msg', 'error');
                    redirect('admin/slider');
                }

            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('admin/slider');
            }

        } else {

            $id = $this->input->post('id');
            $title = strip_tags($this->input->post('title'));
            $desc = $this->input->post('description');

            $data = array(
                'id' => $id,
                'title' => $title,
                'description' => $desc,
            );
            $query = $this->m_slider->update($id, $data);
            if ($query) {
                echo $this->session->set_flashdata('msg', 'success');
                redirect('admin/slider');
            } else {
                echo $this->session->set_flashdata('msg', 'error');
                redirect('admin/slider');
            }
        }

    }

    function hapus_slider()
    {
        $kode = $this->input->post('id');
//        var_dump($kode);die;
        $gambar = $this->input->post('gambar');
        $path = './assets/images/slider/' . $gambar;
        unlink($path);
        $this->m_slider->delete($kode);
        echo $this->session->set_flashdata('msg', 'success-hapus');
        redirect('admin/slider', 'refresh');
    }


}