<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Scoute extends CI_Controller {

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
	    
	    $this->load->model('Scout_model');
	    $array = $this->Scout_model->teste();
	    var_dump($array);
	    
        //  $this->load->view('Head');
        // $this->load->view('Menu');
        //  $this->load->view('Scoute');
        // $this->load->view('Footer');
        
	}

    
    
}
