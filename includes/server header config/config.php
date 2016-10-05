<?php
/**
* @Author Virat Gaywala
* Created on 12-JAN-2016
* Purpose: Configuration file for iValuation
* Last Modifed By: Virat Gaywala
* Last Modified date: 12-JAN-2016
*/

//http server path
define('HTTP_SERVER', 'http://redcarpet.prabandhak.co.in/');
define('DIR_INCLUDES', HTTP_SERVER.'includes/');
define('DIR_CSS',HTTP_SERVER.'css/');
define('DIR_JAVASCRIPTS',HTTP_SERVER.'javascript/');
define('DIR_IMAGES',HTTP_SERVER.'images/');


// document root
define('DIR_WS_DOCUMENT_ROOT', '/home/siliconbrain/public_html/prabandhak.co.in/redcarpet.prabandhak.co.in/');

// user section directory structure
define('DIR_WS_IMAGES', DIR_WS_DOCUMENT_ROOT.'images/');
define('DIR_WS_INCLUDES', DIR_WS_DOCUMENT_ROOT.'includes/');
//define('DIR_WS_FPDF', DIR_WS_DOCUMENT_ROOT.'fpdf\\');
define('DIR_WS_FUNCTIONS', DIR_WS_INCLUDES . 'functions/');
define('DIR_WS_CLASSES', DIR_WS_INCLUDES . 'classes/');
define('DIR_WS_LANGUAGES', DIR_WS_INCLUDES . 'languages/');
define('DIR_WS_FPDF', DIR_WS_DOCUMENT_ROOT.'fpdf/');
define('DIR_WS_INV', DIR_WS_DOCUMENT_ROOT . 'upload/invoice/');
define('DIR_WS_MPDF', DIR_WS_DOCUMENT_ROOT.'mpdf/');
define('DIR_WS_MINV', DIR_WS_DOCUMENT_ROOT . 'upload/minvoice/');

//user uploads
//define('DIR_USER_DOC',DIR_WS_DOCUMENT_ROOT.'uploads/userDoc/');

//database configuration


define('TNS','localhost');
define('DB_SERVER_USERNAME', 'pb_redcarpet');
define('DB_SERVER_PASSWORD','pb_r3dcarp3t');
define('DB_NAME','pb_redcarpet');
?>