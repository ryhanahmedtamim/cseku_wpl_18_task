

<?php

if(!(isset($_GET['showtask'])))
{
 ?>

<div>

	     <?php
		 if(isset($_GET['day']))
		 {  
	        $day=$_GET['day'];
		 }
		 else
		 {
		    $day=date("j");
		 }
		 if(isset($_GET['month']))
		 {  
	        $month=$_GET['month'];
		 }
		 else
		 {
		    $month=date("n");
		 }
		 if(isset($_GET['year']))
		 {  
	        $year=$_GET['year'];
		 }
		 else
		 {
		    $year=date("Y");
		 }
		
			//calender variable
			$currentTimeStamp=strtotime("$year-$month-$day");
			$monthName=date("F",$currentTimeStamp);
			$numDays=date("t",$currentTimeStamp);
			$counter=0;
		 ?>
	        <table border='2'>
			       <tr>
				         <td><input style='width:50px;' type='button' value='<' name='previousbutton' onclick="goLastMonth(<?php echo $month.",".$year?>)"></td>
						 <td colspan='5'><?php echo $monthName.", ".$year;?></td>
						 <td><input style='width:50px;' type='button' value='>' name='nextbutton' onclick="goNextMonth(<?php echo $month.",".$year?>)"></td>
				   </tr>
				   <tr>
				         <td width='250px' height='50px'>Sun</td>
						 <td width='250px' height='50px'>Mon</td>
						 <td width='250px' height='50px'>Tue</td>
						 <td width='250px' height='50px'>Wed</td>
						 <td width='250px' height='50px'>Thu</td>
						 <td width='250px' height='50px'>Fri</td>
						 <td width='250px' height='50px' >Sat</td>
				   </tr>
				   <?php
				       echo "<tr>";
				       $day1=date("j");
					   for($i=1;$i<$numDays+1;$i++,$counter++)
					   {
						   $timeStamp=strtotime("$year-$month-$i");
						   if($i==1)
						   {
							   $firstDay=date("w",$timeStamp);
						       for($j=0;$j<$firstDay;$j++,$counter++)
							   {
							   echo "<td>&nbsp;</td>"; //blank space
							   }
						   }
						   if($counter %7==0)
						   {
							   echo "</tr><tr>";
						   }

						   if($i == $day1)
						   {?>
						   	<td width='250px' height='50px' align='center' bgcolor = 'green'>
						   	<a href="?showtask=<?php echo strtotime("$year-$month-$i"); ?>" > <?php echo $i;?> </a>
						   </td>
						<?php
						   }
						   else
						   {
						   	?>
						   	<td width='250px' height='50px' align='center' >
						   		<a href="?showtask=<?php echo strtotime("$year-$month-$i"); ?>" onclick="return confirm('sure to edit !'); " > <?php echo $i ;?> </a>
						   		</td>
						   <?php
						   }

						   
					   }
					   
					   echo "</tr>";
				   ?>
			</table>
	 
</div>

<?php
}
else
{
?>

<div>
	hello
</div>


<?php

}
?>