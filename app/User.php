<?php 
class User{
  private $db;
    public function __construct() {
        $this->db = new Database;
    }
    public function profile($id) {
      $this->db->query('SELECT * FROM users WHERE userAltName = :userAltName');
      $this->db->bind(':userAltName', $id);
      $row = $this->db->single();
      return $row;
  }

} 
?>