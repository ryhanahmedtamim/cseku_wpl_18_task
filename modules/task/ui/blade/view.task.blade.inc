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


	

?>