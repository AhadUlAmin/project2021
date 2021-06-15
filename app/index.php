<?php
// Union Type Declarations
class calculator{

public function add( int|string $x, int|string $y): int|string{
  if(is_integer($x) && is_integer($y)){
    return $x + $y;
  }elseif(is_string($x) && is_string($y)){
    return $x.$y;
  }
}
}



$cal = new calculator();
echo $cal->add(5, 3);  // output 8
echo $cal->add("Coding", "Status"); // output CodingStatus

// PHP Named argument 
function profile(string $fullName, int $age, string $emailAddress){
    $full_Name= $fullName;
    $age = $age;
    $email_address = $emailAddress;
    echo $full_Name ."is ".$age."years old.<br>";
}
// profile("Noor Khan", 25, "codingstatus@gmail.com"); before php 8
profile(fullName: "Noor Khan", age: 25, emailAddress: "codingstatus@gmail.com");

echo match (8.0) {
    '8.0' => "Oh no!",
    8.0 => "This is what I expected",
  };
  //> This is what I expected

 // Next, it's possible to use array spreading in combination with named arguments:

 // it's also an example of construct property promotion


class Users{
  public function __construct(
    protected string $fullName,
    protected int $age,
    protected string $emailAddress
        ){
    echo $fullName ."is ".$age."years old.";
  }
  }
$data =[
    'fullName'=>'Aminul',
    'age'=>25,
    'emailAddress'=>'mdahadaminul@gmail.com'
];
$u = new Users(...$data);
//nullsafe 
$country =  null;
 
if ($session !== null) {
    $user = $session->user;
 
    if ($user !== null) {
        $address = $user->getAddress();
 
        if ($address !== null) {
            $country = $address->country;
        }
    }
}

 $country = $session?->user?->getAddress()?->country;
 echo $country;
// do something with $country

// do something with $country
?>