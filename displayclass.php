<?php
/* Filename:	displayclass.php
 * Author:		Kelly Pang
 * Team:		Group 2 - PineApple		
 * Date:		06.27.2009
 * Purpose:		List Class Details: Attendance and Lecture Details
 * 
 * Input:		classid
 * 
 */

include_once ("header.php");

//$classid = $_REQUEST['id'];
$classid = 1;

// Class Title
$sql_str = "SELECT Class FROM classtable WHERE ID = $classid";
$row = quick_query($sql_str);

echo $row['Class'];

// Student Attendance
$sql_str = "SELECT studentinclasstable.ID, studenttable.Name, studenttable.StudentNumber, studenttable.Email
			FROM studentinclasstable
			INNER JOIN studenttable ON studenttable.id = studentinclasstable.studentid
			WHERE studentinclasstable.classid = $classid";
$student_result = mysql_query($sql_str);

// Lecture Details
$sql_str = "SELECT LectureTable.ID, Number, Password, Active
			FROM classtable
			INNER JOIN lecturetable ON classtable.id = lecturetable.classid
			WHERE classtable.id = $classid";
$lec_result = mysql_query($sql_str);

$num_lectures = mysql_num_rows($lec_result);
$num_students = mysql_num_rows($student_result);

// Student Attendance UI
echo "<br><br>";
echo "<table>";
echo "<tr><td colspan=2>";
echo "Student Attendance";
echo "</td></tr>";

while ($row = mysql_fetch_array($student_result)) {
	$sicID = $row['ID'];
	$sn = $row['StudentNumber'];
	$attended = get_student_attendance($sicID);
	echo "<tr>";
	echo "<td>$sn</td>";
	echo "<td>$attended/$num_lectures</td>";
	echo "</tr>";
	
}
echo "</table>";

// Lecture UI

echo "<br>";
echo "<form name=active_lecture action='updatelecture.php?classid=$classid' method=post>";
echo "<table>";
echo "<tr>";
echo "<td>Lecture</td>";
echo "<td>Attendance</td>";
echo "<td>Password</td>";
echo "<td>Active?</td>";
echo "</tr>";
$none_active = "checked";
while ($row = mysql_fetch_array($lec_result)) {
	$ln = $row['Number'];
	$lid = $row['ID'];
	$pw = $row['Password'];
	$active = $row['Active'];
	$attended = get_lec_attendance($lid);
	echo "<tr>";
	echo "<td>$ln</td>";
	echo "<td>$attended/$num_students</td>";
	echo "<td><input type=password name='lecpw_$lid' value='$pw'/></td>";
	echo "<td><input type=radio name='lecon' value='$lid' ";
	if ($active) {
		echo "checked";
		$none_active = "";
	}
	echo "></td>";
	echo "</tr>";
}
echo "<tr><td></td><td></td><td></td><td><input type=radio name='lecon' value='0' $none_active>all off</td></tr>";
echo "<tr><td colspan=3 align=right><input type=submit value=Submit></td></tr>";
echo "</table>";

echo "</form>";


/*							*
 * 		LOCAL FUNCTIONS		*
 *							*/						

function get_student_attendance($sicID) {
	$sql_str = "SELECT COUNT(ID) count
				FROM attendancetable
				WHERE StudentInClassID = $sicID";
	$row = quick_query($sql_str);
	return $row['count'];
}

function get_lec_attendance($lecID) {
	$sql_str = "SELECT COUNT(ID) count
				FROM attendancetable
				WHERE LectureID = $lecID";
	$row = quick_query($sql_str);
	return $row['count'];
}

?>