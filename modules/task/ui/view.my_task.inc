<?php

include_once 'blade/view.my_task.blade.inc';
include_once COMMON.'class.common.inc';

?>

<div class="panel-body">


	<table class="table table-bordered">

	<?php
	

	
	//if DAO access is successful to load all the Roles then show them one by one
	if($my_task->getIsSuccess()){

		$tasks = $my_task->getResultObject();
		//print_r($tasks);

		// $id = $_Task->getID();
		// $title = $_Task->getTitle();
		// $details = $_Task->getDetails();
		// $lastDateOfFinish = $_Task->getLastDateOfFinish();
		// $assignDate = $_Task->getAssignDate();
		// $assignTo = $_Task->getAssignTo();
		// $assignBy = $_Task->getAssignBy();
		// $category = $_Task->getCategory();
	?>
		<tr>
			<th>Task Name</th>
			<th>Details</th>
			<th>Finish Date</th>
			<th>Assign Date</th>
		</tr>
		<?php
		for($i = 0; $i < sizeof($tasks); $i++) {

			$task = $tasks[$i];

			?>
		    <tr>
			    <td> <?php echo $task->getTitle(); ?></td>
			    <td> <?php echo $task->getDetails(); ?></td>
			    <td> <?php echo $task->getLastDateOfFinish(); ?></td>
			    <td> <?php echo $task->getAssignDate(); ?></td>			    
	    <?php
		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>
	</table>
	</div>