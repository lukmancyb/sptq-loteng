<?php
class Prestasi extends MY_Controller{
	function __construct(){
		parent::__construct();
		// if($this->session->userdata('masuk') !=TRUE){
        //     $url=base_url('administrator');
        //     redirect($url);
		// };
		$this->cekLogin();
		$this->load->model('m_prestasi');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){

		// var_dump($this->session->userdata('idadmin'));die;
		// $x['data']=$this->m_siswa->get_all_siswa();
		$d['prestasi'] = $this->m_prestasi->get();
		
		// var_dump($d['prestasi']->result_array());die;

		// var_dump($d);die;
		$this->load->view('admin/v_prestasi', $d);
	}
	
	function simpan_prestasi(){
				$config['upload_path'] = './assets/images/prestasi'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/prestasi/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/prestasi/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $photo=$gbr['file_name'];
							$nama=strip_tags($this->input->post('nama_prestasi'));
							$keterangan_prestasi = strip_tags($this->input->post('keterangan_prestasi'));
							$tahun_prestasi = strip_tags($this->input->post('tahun_prestasi'));

							$data = array(
								'nama_prestasi' => $nama,
								'keterangan_prestasi' => $keterangan_prestasi,
								'tahun_prestasi' => $tahun_prestasi,
								'img_url' => $photo,
								'created_at' => date('Y:m:d h:i:s'),
								'created_by' => $this->session->userdata('idadmin')
							);
				
							// var_dump($data); die;	
							// $this->m_siswa->simpan_siswa($nis,$nama,$jenkel,$kelas,$photo);
							$query = $this->m_prestasi->insert($data);
							if($query){
							
								echo $this->session->set_flashdata('msg','success');
								redirect('admin/prestasi');
							}else{
								echo $this->session->set_flashdata('msg','warning');
								redirect('admin/prestasi');
							}
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/prestasi');
	                }
	                 
	            }else{
	            	
					$nama=strip_tags($this->input->post('nama_prestasi'));
					$keterangan_prestasi = strip_tags($this->input->post('keterangan_prestasi'));
					$tahun_prestasi = strip_tags($this->input->post('tahun_prestasi'));

					$data = array(
						'nama_prestasi' => $nama,
						'keterangan_prestasi' => $keterangan_prestasi,
						'tahun_prestasi' => $tahun_prestasi,
						'created_at' => date('Y:m:d h:i:s'),
						'created_by' => $this->session->userdata('idadmin')

					);
		
					// var_dump($data); die;	

					// $this->m_siswa->simpan_siswa_tanpa_img($nis,$nama,$jenkel,$kelas);
					$query = $this->m_prestasi->insert($data);
					if($query){
						echo $this->session->set_flashdata('msg','success');
						redirect('admin/prestasi');
					}else{
						echo $this->session->set_flashdata('msg','warning');
						redirect('admin/prestasi');
					}
				
				}
				
	}
	
	function update_prestasi(){
				
	            $config['upload_path'] = './assets/images/prestasi'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/prestasi/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/prestasi/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
							$this->image_lib->resize();
							
	                        $old_gambar=$this->input->post('img_url');
							$id=$this->input->post('id');
	                        $photo=$gbr['file_name'];
							$nama=strip_tags($this->input->post('nama_prestasi'));
							$keterangan_prestasi = strip_tags($this->input->post('keterangan_prestasi'));
							$tahun_prestasi = strip_tags($this->input->post('tahun_prestasi'));

							$data = array(
								'nama_prestasi' => $nama,
								'keterangan_prestasi' => $keterangan_prestasi,
								'tahun_prestasi' => $tahun_prestasi,
								'img_url' => $photo,
								'created_by' => $this->session->userdata('idadmin')

							);


							$query = $this->m_prestasi->update($id, $data);
							if($query){
								$path='./assets/images/prestasi/'.$old_gambar;
								unlink($path);
								echo $this->session->set_flashdata('msg','info');
								redirect('admin/prestasi');
							}else{
								echo $this->session->set_flashdata('msg','warning');
								redirect('admin/prestasi');
							}
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/prestasi');
	                }
	                
	            }else{
					$old_gambar=$this->input->post('img_url');
					$id=$this->input->post('id');
					$nama=strip_tags($this->input->post('nama_prestasi'));
					$keterangan_prestasi = strip_tags($this->input->post('keterangan_prestasi'));
					$tahun_prestasi = strip_tags($this->input->post('tahun_prestasi'));

					$data = array(
						'nama_prestasi' => $nama,
						'keterangan_prestasi' => $keterangan_prestasi,
						'tahun_prestasi' => $tahun_prestasi,
						'created_by' => $this->session->userdata('idadmin')
					);

					$query = $this->m_prestasi->update($id, $data);
					if($query){
						echo $this->session->set_flashdata('msg','info');
						redirect('admin/prestasi');
					}else{
						echo $this->session->set_flashdata('msg','warning');
						redirect('admin/prestasi');
					}
	            } 

	}

	function hapus_prestasi(){
		$kode=$this->input->post('id');
		$gambar=$this->input->post('img_url');
		$path='./assets/images/prestasi/'.$gambar;
		unlink($path);
		$this->m_prestasi->delete($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/prestasi');
	}

}