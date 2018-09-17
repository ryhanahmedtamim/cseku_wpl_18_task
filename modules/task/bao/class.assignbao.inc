<?php
	
include_once UTILITY.'class.util.inc';
include_once MODULES_TASK.'dao/class.categorydao.inc';

class AssignBAO{

	private $_AssignDao;

	public function __construct(){

		$this->_AssignDao = new AssignDAO();

	}
	
	


}
?>