<?php

include_once COMMON.'class.common.inc';
include_once UTILITY.'class.util.inc';
include_once COMMON.'class.common.task.inc';

	class CategoryDAO{
	private $_DB;
	private $_TaskCategory;
	



	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_TaskCategory = new Task_Category();
	}


	public function getAllCategory(){
		$CategoryList = array();

		$this->_DB->doQuery("SELECT * FROM tms_task_category");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_TaskCategory = new Task_Category();

		    $this->_TaskCategory->setID ( $row['id']);
		    $this->_TaskCategory->setCategory ( $row['task_type'] );   
		   

		    $CategoryList[]=$this->_TaskCategory;
   
		}


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($CategoryList);

		return $Result;

	}

	}

?>