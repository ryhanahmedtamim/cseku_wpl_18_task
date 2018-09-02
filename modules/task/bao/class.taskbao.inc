<?php
	
include_once UTILITY.'class.util.inc';
include_once MODULES_TASK.'dao/class.taskdao.inc';

class TaskBAO{

	private $_TaskDao;

	public function __construct(){

		$this->_TaskDao = new TaskDAO();

	}
	
	public function addNewTask($task){

		$Result = new Result();	
		$Result = $this->_TaskDao->addTask($task);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CategoryDAO.addTask()");		

		return $Result;

	}

	public function findByUser($user)
	{
		$Result = new Result();	
		$Result = $this->_TaskDao->findByUser($user);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CategoryDAO.addTask()");		

		return $Result;
	} 	


}
?>