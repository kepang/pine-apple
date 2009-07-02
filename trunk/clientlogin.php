<?php
/* Filename:	clientlogin.php
 * Author:		Kelly Pang
 * Team:		Group 2 - PineApple		
 * Date:		06.18.2009
 * Purpose:		Record attendance of student and sends result to client
 * 
 * Input:		Student username, class, password
 * Output:		OK, ERROR
 * 
 * 06.29.2009	Kelly Pang		Added queries
 */

include_once ("header-nocss.php");

$classid = $_REQUEST['classid'];
$pass = $_REQUEST['pass'];
$sn = $_REQUEST['sn'];

$registered = false;
$activelec = false;

// Is the student registered in that class?
$sql_str = "SELECT studenttable.ID sid, studentinclasstable.ID sicid
			FROM studentinclasstable
			INNER JOIN studenttable ON studenttable.ID = studentinclasstable.StudentID
			INNER JOIN classtable ON classtable.ID = studentinclasstable.ClassID
			WHERE studenttable.StudentNumber = $sn AND classtable.ID = $classid";
$result = mysql_query($sql_str);
if ($row = mysql_fetch_array($result)) {
	$registered = true;
	$sid = $row['sid'];
	$sicid = $row['sicid'];
} 

// Is there an active lecture in that class?
$sql_str = "SELECT lecturetable.ID lecid, lecturetable.Password
			FROM classtable
			INNER JOIN lecturetable ON lecturetable.ClassID = classtable.ID
			WHERE classtable.ID = $classid AND lecturetable.Active = 1;";
$result = mysql_query($sql_str);
if ($row = mysql_fetch_array($result)) {
	$activelec = true;
	$lecid = $row['lecid'];
	$lecpw = $row['Password'];
}

// Check password and Mark Attendance
// Return result
if ($registered AND $activelec AND $pass == $lecpw) {
	echo "OK";
	take_attendance($lecid, $sicid);
}
else {
	echo "ERROR";	
}



?>