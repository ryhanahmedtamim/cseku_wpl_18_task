<?php	

include_once MODULES_USER.'bao/class.userbao.inc';
include_once MODULES_USER.'bao/class.rolebao.inc';
include_once MODULES_USER.'bao/class.positionbao.inc';


	$_UserBAO = new UserBAO();

	if(isset($_GET['searchName']))
	{
		$userEmail = $_GET['searchName'];
		$result = $_UserBAO->findUserDetailsByEmail($userEmail);
		//print_r($userDetails);

		if($result->getIsSuccess()){

			$userDetails = $result->getResultObject();
			echo $userDetails->getFirstName()." ".$userDetails->getMiddleName()." " . $userDetails->getLastName();
	}
	else
	{
		echo "Searching...";
	}
	}



?>
