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
	
	?>
		<tr>
			<th>Task Name</th>
			<th>Creation Date </th>
			<th>Assign Date</th>
			<th>Finish Date</th>
			<th>Last Updated Date</th>
			<th>Task Creator</th>
			<th>Task Category</th>
			<th>Assign By</th>
			<th>Progress</th>

		</tr>
		<?php
		for($i = 0; $i < sizeof($tasks); $i++) {

			$task = $tasks[$i];

			?>
		    <tr>
		    	<center>
			    <td> <?php echo $task->getTitle(); ?></td>
			    <td> <?php echo $task->getAssignDate(); ?></td>
			    <td> <?php echo $task->getDate(); ?></td>
			    <td> <?php echo $task->getLastDateOfFinish(); ?></td>
			    <td><?php echo $task->getLastDateOfUpdate();?></td>
			    <td> <?php echo $task->getTaskCreator(); ?></td>
			    <td><?php echo $task->getCategory(); ?></td>			   
			    <td> <?php echo $task->getAssignBy(); ?></td>
			    <td> <?php echo $task->getProgress(); ?></td>


			    <td><a href="http://localhost/dgted/create_task.php?assignTo=<?php echo $task->getID(); ?>" >Assign Task</a></td>
			    <td><a href="http://localhost/dgted/create_task.php?details=<?php echo $task->getID(); ?>" >Details</a></td>
			    </center>
		    </tr>

	    <?php
		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>
	</table>
	</div>