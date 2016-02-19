<?php
header('Content-Type: text/html; charset=utf-8');
	error_reporting(E_ALL);
	ini_set('display_errors', 1);

// include the items class
include_once('classes/RecipesClass.php');

// response
$response = array(
);
$encoded;

$recipes = new Recipes();
$allRecipes = $recipes->all();

if(isset($allRecipes)){
	$response['data'] = $allRecipes;
}

// response
echo json_encode($response,JSON_PRETTY_PRINT);