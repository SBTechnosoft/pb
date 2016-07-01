<?php

/**

* @Author Virat Gaywala

* Created on 19-JAN-2016

* Purpose: Common header file for iValuation

* Last Modified By: Virat Gaywala

* Last Modified Date: 19-JAN-2016

*/

// check support for register_globals & disable register_globals

if (function_exists('ini_get') && (ini_get('register_globals') == true) && (PHP_VERSION < 4.3) ) 

{

    ini_get('register_globals') == false;

} 

include_once('/home/siliconbrain/public_html/beta.prabandhak.co.in/includes/config.php');

//include the filenames 

include_once(DIR_WS_INCLUDES.'configFilename.php');

// include the list of project database tables

include_once(DIR_WS_INCLUDES.FILENAME_TABLENAMES);

// include application parameters

include_once(DIR_WS_LANGUAGES.FILENAME_ENGLISH);	

// include the database class

include_once(DIR_WS_CLASSES.FILENAME_DATABASE_CONNECTION);


// define our general functions used application-wide

include_once(DIR_WS_FUNCTIONS.FILENAME_GENERAL);

// define how the session functions will be used

//include_once(DIR_WS_FUNCTIONS.FILENAME_SESSION);

//including the database function file

include_once(DIR_WS_FUNCTIONS.'dataInsertion.fn.php');

include_once(DIR_WS_FUNCTIONS.'dataFetch.fn.php'); 
include_once(DIR_WS_FUNCTIONS.'dataDelete.fn.php');

$conn = new mysqlDb();

session_start();


?>