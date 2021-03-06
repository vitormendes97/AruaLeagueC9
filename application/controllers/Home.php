<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct(){
         parent::__construct();
    }
    
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function main()
	{
		/*$this->load->view('welcome_message');*/
       
        
        $this->load->view('Head');
        $this->load->view('Menu_2');
        $this->load->view('home');
        $this->load->view('Footer');
        
	}
/*    
    public function liga(){
       
        $this->load->model('Liga_model');
        list($sucesso,$erro,$liga) = $this->Liga_model->read();
        $dados = array();
        $dados['sucesso'] = $sucesso;
        $dados['liga'] = $liga;
        
        $this->load->view('Head');
        $this->load->view('Menu');
        $this->load->view('Footer');
        
    }*/
    
    public function novomenu(){
        $this->load->view('HeadNovo');
        $this->load->view('Menu');
    }
    
    
    public function boot(){
        
        $this->load->model('Scout_model');
	    list($jogadores) = $this->Scout_model->teste();
	    $array['jogadores'] = $jogadores;
        
        $this->load->view('HeadNovo');
        $this->load->view('Menu');
        $this->load->view('home',$array);
    }
}
