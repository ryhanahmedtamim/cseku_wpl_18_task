<?php
	
include_once UTILITY.'class.util.inc';
include_once MODULES_TASK.'dao/class.categorydao.inc';

class CategoryBAO{

	private $_CategoryDao;

	public function __construct(){

		$this->_CategoryDao = new CategoryDAO();

	}
	
	public function getAllCategory(){

		$Result = new Result();	
		$Result = $this->_CategoryDao->getAllCategory();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CategoryDAO.getAllCategory()");		

		return $Result;

	} 	


}
?>