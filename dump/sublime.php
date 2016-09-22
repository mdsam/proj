<?php


$db = new PDO ('mysql:host=localhost; dbname=php_test', 'root', 'wss');

$query = $db->query("SELECT * FROM heros");

class User {

	public $firstname;
	public $lastname;
	public $fullname;

	public function __Construct(){

			$this->fullname = $this->firstname. ''.$this->lastname;

	}


}

//$row =$query->fetch();


/*
echo "<pre>";
$query->setFetchMode(PDO::FETCH_CLASS, 'User');
while($row = $query->fetch()) { 

	echo $row->fullname , '<br>';
	//echo $row->firstname;
	//print_r($row);

	//echo $row->firstname,   '<br/>';
	//echo $row->firstname. ' ' . $row->lastname;
}

*/


$query = $db->query("INSERT INTO heros (firstname, lastname) values ('sat', 'san')");

//$query = $db->query("UPDATE heros set firstname= 'anothername', lastname='anotherlastname' where id=6");

//$query = $db->query("DELETE FROM heros where lastname='makhija'");

//echo $db->lastInsertId();
//echo $query->rowcount();

