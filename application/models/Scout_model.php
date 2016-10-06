<?php 

/**
* 
*/
class Scout_model extends CI_Model
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function readMasterTable(){
		
		$sucesso = true;
		$erro = 'tabela_001';

		 $this->db->select('*');
         $this->db->from('tabela');
         $this->db->join('clube','clube.id_clube = tabela.clube');
         $this->db->join('liga','liga.id_liga = tabela.liga');
         $this->db->where('tabela.liga', 1);
         $this->db->order_by('pontos DESC , gol_pro DESC ');
         $query = $this->db->get();



		if(count($query->num_rows() > 0)){
			return array($sucesso,$erro,$query->result());	
		}
      else{
         $sucesso = $false;
         return array($sucesso,$erro,$query->result());
      }
		
	}

    public function teste(){
        
        $this->db->select('*');
        $this->db->from('infojogador');
        $this->db->join('jogador','infojogador.id_info = jogador.infojogador');
        $this->db->join('clube' , 'jogador.clube = clube.id_clube');
        $query = $this->db->get();
        
        return array($query->result());
    }

  

}