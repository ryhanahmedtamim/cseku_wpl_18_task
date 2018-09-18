<?php
	
include_once UTILITY.'class.util.inc';
include_once MODULES_TASK.'dao/class.assigndao.inc';

class AssignBAO{

	private $_AssignDao;

	public function __construct(){

		$this->_AssignDao = new AssignDAO();

	}


	public function assignTask($assign)
	{
		$Result = new Result();	
		$Result = $this->_AssignDao->assignTask($assign);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in AssignDAO.assignTask($assign)");		

		return $Result;
	}
	
	


}
?>