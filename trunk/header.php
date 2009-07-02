<?php
/* Filename:	header.php
 * Author:		Kelly Pang		
 * Team:		Group 2 - PineApple
 * Date:		06.17.2009
 * Purpose:		Inserted at the top of every page
 * 
 */

include_once("config.php");
include_once("functions.php");

if ($_DEBUG['mode']) {
	error_reporting(E_ERROR);
}
else {
	error_reporting(0);
}

connectDB();


?>

<link rel="stylesheet" type="text/css" href="iclicky.css" />
