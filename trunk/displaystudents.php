<?php
/* Filename:	displaystudents.php
 * Author:		Kelly Pang
 * Team:		Group 2 - PineApple		
 * Date:		06.27.2009
 * Purpose:		List Student Details
 * 
 * 
 */

include_once ("header.php");




$sql_str = "SELECT * FROM studenttable";
$result = mysql_query($sql_str);

echo "<table>";
echo "<tr>";
echo "<td>Name</td><td>Student Number</td><td>Email</td>";
echo "</td>";	

while ($row = mysql_fetch_array($result)) {
	$id = $row['ID'];
	$name = $row['Name'];
	$sn = $row['StudentNumber'];
	$email = $row['Email'];
	
	echo "<tr>";
	echo "<td>$name</td>";
	echo "<td>$sn</td>";
	echo "<td>$email</td>";
	echo "</tr>";
}

echo "</table>";
















?>