<?php
/* Filename:	index.php
 * Author:		Kelly Pang		
 * Team:		Group 2 - PineApple
 * Date:		06.17.2009
 * Purpose:		Start Page
 * 
 */

include_once ("header.php");

$sql_str = "SELECT * FROM StudentTable";
//$result = mysql_query($sql_str);
//$row = mysql_fetch_array($result);
$row = quick_query($sql_str);
echo "result = " . $row['StudentNumber'];
echo "<br>";
echo "<a href='displaystudents.php'>display students</a>";
echo "<br>";
echo "<a href='displayclass.php'>display class</a>";
echo "<br>";
?>

