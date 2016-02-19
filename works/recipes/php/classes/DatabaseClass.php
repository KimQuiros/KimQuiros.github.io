<?php 
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
/*
	- Connect to the database
*/
class Database{	
	private 	$username = 	'root';
	private 	$password = 	'';
	private 	$host = 		'localhost';
	private 	$database = 	'recipes';
	private 	$charset = 		array(
		'charset' => 'utf8'
	);
	protected 	$connection =	NULL;

	function __construct(){
		try{
			// creates the connection
			$this->connection = new PDO(
				"mysql:host=".$this->host.";dbname=".$this->database,
				$this->username,
				$this->password,
				$this->charset
			);

			$this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$this->connection->query("SET CHARACTER SET utf8");
		}catch(PDOException $error){
			die();
		}
	}

	function __destruct(){
		$this->connection = NULL;
	}
}