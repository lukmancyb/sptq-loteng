<?php
class Page extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_pages');
//		$this->m_pengunjung->count_visitor();
	}



	public function detail($slug){
        $slug = htmlspecialchars($slug, ENT_QUOTES);

        $data = $this->m_pages->get_where(array('slug' => $slug))->row();

        if ($data){
//            var_dump($data);die;
            $d['data'] = $data;
            $this->load->view('depan/page/v_page', $d);
        }else{
            show_404();
        }

    }
}
