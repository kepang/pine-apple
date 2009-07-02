<?php
/* Filename:	getclasslist.php
 * Author:		Kelly Pang
 * Team:		Group 2 - PineApple		
 * Date:		06.29.2009
 * Purpose:		Return a students class list
 * 
 * Input:		student number
 * Output:		[ClassID, Class] list in CSV
 * 				eg. "1,CMPT 275,2,CMPT 363" etc..
 */

include_once ("header-nocss.php");

$sn = $_REQUEST['sn'];
$str = "";

$sql_str = "SELECT classtable.ID, classtable.Class
			FROM studentinclasstable
			INNER JOIN studenttable ON studenttable.ID = studentinclasstable.StudentID
			INNER JOIN classtable ON classtable.ID = studentinclasstable.ClassID
			WHERE studenttable.StudentNumber = $sn;";
$result = mysql_query($sql_str);
$first_loop = true;
while ($row = mysql_fetch_array($result)) {
	if (!$first_loop) {
		$str.= ",";
		$first_loop = false;
	}
	$str.= $row['ID'];
	$str.= ",";
	$str.= $row['Class'];	
}

echo $str;

?>