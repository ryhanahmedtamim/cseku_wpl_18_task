<?php
include_once MODULES_TASK.'bao/class.taskbao.inc';
include_once MODULES_USER.'bao/class.userbao.inc';
include_once MODULES_USER.'bao/class.rolebao.inc';
include_once MODULES_USER.'bao/class.positionbao.inc';

	$_DB = DBUtil::getInstance();
	$_Log= LogUtil::getInstance();
	$_Task = new Task();
	$_UserBAO = new UserBAO();
	$_TaskBAO = new TaskBAO();

	$globalUser = $_SESSION["globalUser"];

	$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); //reading the user 
	$userDetails = $_UserBAO->readUserDetails($globalUser)->getResultObject();
	$ID = $userPositions->getID();
	$User = new User();
	$User->setID($ID);
	$result;


	if(isset($_GET['showtask']))
	{
		$result = $_TaskBAO->findMyByDate($User,$_GET['showtask']);
	}


	

?>