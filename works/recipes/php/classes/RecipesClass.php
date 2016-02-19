<?php
	error_reporting(E_ALL);
	ini_set('display_errors', 1);

require_once('DatabaseClass.php');

/**
* @class recipes
* @description class for recipes
*/
class Recipes extends Database{

	/**
	* Get all recipes
	* @return {array} recipes getted from the database
	*/
	function all(){

		// get all recipes 
		$query = $this->connection->prepare('SELECT category, image, favorite, name, description, ingr.ingredients, steps, portions FROM recipes rec INNER JOIN ingredients ingr ON rec.ingredients = ingr.id');

		// execute the query
		if($query->execute()){

			// query result
			return $query->fetchAll();
		}
		return false;
	}

	/**
	* Get an item
	* @param {int} id
	* @return {array|boolean} data or false in case fails
	*/
	function get($id){

		// get the item
		$query = $this->connection->prepare('SELECT * FROM recipes WHERE id = :id');

		// bind data
		$bind = array(
			':id' => $id
		);

		// execute the query
		if($query->execute($bind)){

			// query result
			return $query->fetch();
		}
		return false;
	}
}
?>