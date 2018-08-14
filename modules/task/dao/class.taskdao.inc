<?php

include_once COMMON.'class.common.inc';
include_once UTILITY.'class.util.inc';
include_once COMMON.'class.common.task.inc';

	class TaskDAO{
	private $_DB;
	private $_Task;
	



	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_Task = new Task();
	}


	public function addTask($task){
		$_Task = $task;

		$id = $_Task->getID();
		$title = $_Task->getTitle();
		$details = $_Task->getDetails();
		$lastDateOfFinish = $_Task->getLastDateOfFinish();
		$assignDate = $_Task->getAssignDate();
		$assignTo = $_Task->getAssignTo();
		$assignBy = $_Task->getAssignBy();
		$category = $_Task->getCategory();

		$SQL = "INSERT INTO `tms_task` (`id`, `task_name`, `task_category`, `assign_to`, `assign_by`, `date_of_assign`, `date_of_submission`, `details`) VALUES (NULL, '$title', '$category', '$assignTo', '$assignBy', '$assignDate', '$lastDateOfFinish', '$details');";

		//beginning a transaction 	
		$this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);
		//creating task
		$SQL = $this->_DB->doQuery($SQL);





		$this->_DB->getConnection()->commit();



	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function findByUser($user)
	{
		$List = array();
		$Task = new Task();
		$id = $user->getID();

		$SQL = "SELECT * FROM `tms_task` WHERE `tms_task`.`assign_to` = '$id'";

		$SQL = $this->_DB->doQuery($SQL);

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$task = new Task_Category();

		    $Task->setID ( $row['id']);
		    $Task->setTitle($row['task_name']);
		    $Task->setDetails($row['details']);
		    $Task->setLastDateOfFinish($row['date_of_submission']);
		    $Task->setAssignDate($row['date_of_assign']);
		    $Task->setAssignTo($row['assign_to']);
		    $Task->setAssignBy($row['assign_by']);	
		    $Task->setCategory($row['task_category']);	   

		    $List[]=$Task;
   
		}


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($List);

		return $Result;

	}

	}

?>