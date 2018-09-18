<?php

include_once COMMON.'class.common.inc';
include_once UTILITY.'class.util.inc';
include_once COMMON.'class.common.task.inc';

	class AssignDAO{

	private $_DB;

	public function __construct(){

		$this->_DB = DBUtil::getInstance();
	}


	public function assignTask($assign)
	{
		$taskId=$assign->getTaskId();
		$assignTo = $assign->getAssignTo();
		$assignBy = $assign->getAssignBy();
		$date = $assign->getDate();
		$comment = $assign->getComment();

		//print_r($assign);

		$SQL = "INSERT INTO `tms_assign` (`id`, `assign_to`, `assign_by`, `assing_date`, `comment`) VALUES ('$taskId', '$assignTo', '$assignBy', '$date', '$comment');";

		$this->_DB->getConnection()->begin_transaction(MYSQLI_TRANS_START_READ_WRITE);
		//creating task
		$SQL = $this->_DB->doQuery($SQL);

		$this->_DB->getConnection()->commit();

	 	$Result = new Result();
		$Result->setIsSuccess(1);	

		return $Result;
	}


	
	}

?>