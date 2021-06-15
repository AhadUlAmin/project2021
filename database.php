<?php

     session_start();

     define('BASE_PATH','http://localhost/msv1/');

	 define('APP_NAME','TheMornStar');

     $host = "localhost";

     $dbname = "msv1";

     $user = "root";

     $pass = "";

     try{

         $db = new PDO("mysql:host=$host;dbname=$dbname",$user,$pass);

         $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

     }catch(PDOException $e){

        echo $e->getMessage();

        

     }







    function isLoggedIn() {

        if (isset($_SESSION['uniqueSessionId'])) {

            return true;

        } else {

            return false;

        }

    }

	

	  function generateUniqueId($strength = 16) {

    $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

    $input_length = strlen($permitted_chars);

    $random_string = '';

    for($i = 0; $i < $strength; $i++) {

        $random_character = $permitted_chars[mt_rand(0, $input_length - 1)];

        $random_string .= $random_character;

    }

 

    return $random_string;

    }



	

     class Database {
      
         private $dbHost = "localhost";

         private $dbUser = "root";

         private $dbPass = "";

         public $dbName = "msv1";

 

         public $statement;

         public $dbHandler;

         public $error;

 

         public function __construct() {

             $conn = 'mysql:host=' . $this->dbHost . ';dbname=' . $this->dbName;

             $options = array(

                 PDO::ATTR_PERSISTENT => true,

                 PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION

             );

             try {

                 $this->dbHandler = new PDO($conn, $this->dbUser, $this->dbPass, $options);

                // echo "Database Connected Successfully.";

             } catch (PDOException $e) {

                 $this->error = $e->getMessage();

                 echo $this->error;

             }

         }

 

         //Allows us to write queries

         public function query($sql) {

             $this->statement = $this->dbHandler->prepare($sql);

         }

 

         //Bind values

         public function bind($parameter, $value, $type = null) {

             switch (is_null($type)) {

                 case is_int($value):

                     $type = PDO::PARAM_INT;

                     break;

                 case is_bool($value):

                     $type = PDO::PARAM_BOOL;

                     break;

                 case is_null($value):

                     $type = PDO::PARAM_NULL;

                     break;

                 default:

                     $type = PDO::PARAM_STR;

             }

             $this->statement->bindValue($parameter, $value, $type);

         }

 

         //Execute the prepared statement

         public function execute() {

             return $this->statement->execute();

         }

 

         //Return an array

         public function resultSet() {

             $this->execute();

             return $this->statement->fetchAll(PDO::FETCH_OBJ);

         }

 

         //Return a specific row as an object

         public function single() {

             $this->execute();

             return $this->statement->fetch(PDO::FETCH_OBJ);

         }

 

         //Get's the row count

         public function rowCount() {

             return $this->statement->rowCount();

         }

     }

     





    