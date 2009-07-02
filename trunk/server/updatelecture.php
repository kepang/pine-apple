<?php
/* Filename:	updatelecture.php
 * Author:		Kelly Pang
 * Team:		Group 2 - PineApple		
 * Date:		06.27.2009
 * Purpose:		Update Lecture - change passwords, turn on/off lecture
 * Input:		classid
 * 
 */

include_once ("header.php");

$classid = $_REQUEST['classid'];
$leconid = $_REQUEST['lecon'];

echo $leconid;
echo "<br>";
echo $classid;

// Get Lecture List for class
$sql_str = "SELECT ID
			FROM lecturetable
			WHERE classid = $classid";
$lec_result = mysql_query($sql_str);

debugMsg($sql_str);

// Update Lecture Details
while ($row = mysql_fetch_array($lec_result)) {
	$lecid = $row['ID'];
	$lecpw = $_REQUEST["lecpw_$lecid"];
	if ($leconid == $lecid) {
		$lecon = 1;
	}
	else {
		$lecon = 0;
	}
	
	debugMsg("lecid = $lecid; lecpw = $lecpw ; lecon = $lecon;");
	
	$sql_str = "UPDATE lecturetable SET Password='$lecpw', 
				Active='$lecon' WHERE ID = $lecid";
	
	debugMsg($sql_str);
	
	if ($result = mysql_query($sql_str)) {
		debugMsg("DB UPDATE OK");
	}
	else {
		debugMsg("DB UPDATE ERROR");
	}
}

redirect("displayclass.php?classid=$classid");

?>