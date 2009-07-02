<?php
/* Filename:	functions.php
 * Author:		Kelly Pang		
 * Team:		Group 2 - PineApple
 * Date:		06.17.2009
 * Purpose:		Common Functions
 * 
 */

include_once("config.php");

/*
 * Port out Debug Messages when debug mode is on
 */
function debugMsg($str) {
	global $_DEBUG;
	$debug = $_DEBUG['mode'];
	if ($debug) {
		echo "<div class='debug'>[debug: " . $str . "]</div>";
	}
}
/*
 * Connect to Database
 */
function connectDB() {
	global $con, $_DB;	

	$con = mysql_connect($_DB['server'], $_DB['username'], $_DB['password']);
	$source = mysql_select_db($_DB['source'], $con);
	
	if (!$con) {
		debugMsg("db connection error");
	}
	else {
		debugMsg("db connected");
	}
	
	if (!$source) {
		debugMsg("source connection error");
	}
	else {
		debugMsg("source connected");
	}
}

/*
 * Inserts attendance record into attendance table in DB
 * lecid = lectureID
 * sicid = studentinclassID
 */
function take_attendance($lecid, $sicid) {
	// Check for Duplicate record
	$sql_str = "SELECT *
				FROM attendancetable
				WHERE StudentInClassID = $sicid AND LectureID = $lecid;";
	$result = mysql_query($sql_str);
	
	// Create new record if no duplicate
	if (!mysql_num_rows($result)) {
		$sql_str = "INSERT INTO attendancetable (StudentInClassID, LectureID, Attended) 
					VALUES($sicid, $lecid, 1)";
		mysql_query($sql_str);
	}
}

/*
 * Shortcut query if only expecting one record
 */
function quick_query ($sql_str) {
	$result = mysql_query($sql_str);
	$row = mysql_fetch_array($result);
	return $row;
}

/*
 * Auto Redirect to another HTML page
 */
function redirect($url, $refresh=0) {
	global $_DEBUG;
	$debug = $_DEBUG['mode'];
	if (!$debug) { 
		echo "<meta HTTP-EQUIV='REFRESH' content='$refresh; url=$url'>";
	}
	else {
		echo "<a href='$url'>link</a>";
	}	
}




?>