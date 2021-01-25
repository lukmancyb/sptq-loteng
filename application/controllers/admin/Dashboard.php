<?php
class Dashboard extends MY_Controller{
	function __construct(){
		parent::__construct();
		// if($this->session->userdata('masuk') !=TRUE){
        //     $url=base_url('administrator');
        //     redirect($url);
		// };
		$this->cekLogin();
		$this->load->model('m_pengunjung');
	}
	function index(){
		// var_dump($this->session->userdata('masuk'));die;
		// 
			$x['visitor'] = $this->m_pengunjung->statistik_pengujung();
			$this->load->view('admin/v_dashboard',$x);
	}
	
}