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


	$globalUser = $_SESSION["globalUser"];

	$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); //reading the user 
	$userDetails = $_UserBAO->readUserDetails($globalUser)->getResultObject();
	$ID = $userPositions->getUniversityID();
	$User = new User();
	$User->setID($ID);

	$my_task = $_TaskBAO->findMyTask($User);




	if(isset($_POST['addTask'])){
		$_Task->setId (null);
		$_Task->setTitle ($_DB->secureInput($_POST['taskName']));
		$_Task->setCategory ($_DB->secureInput($_POST['Category']));
		$_Task->setDetails ($_DB->secureInput($_POST['taskDetails']));
		$_Task->setLastDateOfFinish ($_DB->secureInput($_POST['date']));



		$_Task->setAssignDate ($_DB->secureInput(date("Y-m-d")));

		//print_r( $globalUser);
		$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); //reading the user 
		$userDetails = $_UserBAO->readUserDetails($globalUser)->getResultObject();


		$userEmail = $_POST['email'];
		$result = $_UserBAO->findUserDetailsByEmail($userEmail);
		//$_Task->setAssignTo($userPositions->getUniversityID());
		$userDetails = $result->getResultObject();

		$_Task->setAssignTo($userDetails->getUniversityID());

		$_Task->setAssignBy($userPositions->getUniversityID());	

		

		$Result = $_TaskBAO->addNewTask($_Task);		

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:assign_task.php");	
		}
			

	}


	if(isset($_POST['updateTask'])){
		$_Task->setID ($_GET['editTask']);
		$_Task->setTitle ($_DB->secureInput($_POST['taskName']));
		$_Task->setCategory ($_DB->secureInput($_POST['Category']));
		$_Task->setDetails ($_DB->secureInput($_POST['taskDetails']));
		$_Task->setLastDateOfFinish ($_DB->secureInput($_POST['date']));



		$_Task->setAssignDate ($_DB->secureInput(date("Y-m-d")));

		//print_r( $globalUser);
		$userPositions = $_UserBAO->readUserRolesPositions($globalUser)->getResultObject(); //reading the user 
		$userDetails = $_UserBAO->readUserDetails($globalUser)->getResultObject();


		$userEmail = $_POST['email'];
		$result = $_UserBAO->findUserDetailsByEmail($userEmail);
		//$_Task->setAssignTo($userPositions->getUniversityID());
		$userDetails = $result->getResultObject();

		$_Task->setAssignTo($userDetails->getUniversityID());

		$_Task->setAssignBy($userPositions->getUniversityID());	

		

		$Result = $_TaskBAO->updateTask($_Task);	

//		print_r($_Task);	

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:assign_task.php");	
		}
			

	}


	if(isset($_GET['editTask']))
	{
		$Task = new Task();
		$Task->setId($_GET['editTask']);

		$Result = $_TaskBAO->findTask($Task);

		$_Task = $Result->getResultObject();

		//print_r($_Task);

	}

	if(isset($_GET['deleteTask']))
	{
		$Task = new Task();
		$Task->setId($_GET['deleteTask']);
		$Result=$_TaskBAO->deleteTask($Task);

		if($Result->getIsSuccess()){
	  		 
	  		 header("Location:assign_task.php");	
		}
	}

?>