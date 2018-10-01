<?php

include_once 'blade/view.my_task.blade.inc';
include_once COMMON.'class.common.inc';

?>

<div class="panel panel-default">
    
    <div class="panel-heading">Task Information</div>
    <table class="table table-bordered">

	<?php
	
	
	//$Result = $_CategoryBAO->getAllCategory();

	//if DAO access is successful to load all the Roles then show them one by one
	if($my_task->getIsSuccess()){

		$tasks = $my_task->getResultObject();
	?>
		<tr>
			<th>Task Name</th>
			<th>Task Category</th>
			<th>Creation Date</th>
			<th>Finish Date</th>
			<th>Last Update Date</th>
			<th>Progress</th>
		</tr>
		<?php

			

			for($i = 0; $i < sizeof($tasks); $i++) {

			$task = $tasks[$i];

			?>
		    <tr>
			    <td> <?php echo $task->getTitle(); ?></td>
			    <td> <?php echo $task->getCategory(); ?></td>
			    <td> <?php echo $task->getAssignDate(); ?></td>	
			    <td> <?php echo $task->getLastDateOfFinish(); ?></td>
			    <td><?php echo $task->getLastDateOfUpdate();$progress =$task->getProgress();
			     ?></td>
			    <td> 
			    <button style="float:left;margin-left:1px;" 
			    	<?php if($progress==0){?>
			    		disabled
			    		<?php
			    		} ?>
			     >-</button>
			    
			    <progress style="height:25px;vertical-align: middle; margin-left: 1px; " value="<?php 
			    				echo  $progress;
			    				?>" max="10">
							</progress>
							

							<button style="float: right;display: inline-block; position:absolute;margin-left: 1px;"
							<?php if($progress==10){?>
			    		disabled
			    		<?php
			    		} ?>>+</button> 


				</td>
			     <td><a href="http://localhost/dgted/create_task.php?assignTo=<?php echo $task->getID(); ?>" >Assign Task</a></td>
			    <td><a href="http://localhost/dgted/create_task.php?details=<?php echo $task->getID(); ?>" >Details</a></td>
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
