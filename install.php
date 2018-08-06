<?php

ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);

include_once 'path.php';

include_once UTILITY.'class.util.inc';
include_once UTILITY.'class.xml.inc';


$db = new XMLtoPermission(CONFIG."xml/permission.xml");
$db->saveInDB($db->load()); // loading and then saving in the database tbl_permission
?>