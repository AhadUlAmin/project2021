<?php
   class UniqueMaster{
    private $db;
    public function __construct() {
        $this->db = new Database;
    }

    public function uniqueMaster() {
        $this->db->query('SELECT * FROM uniquemaster WHERE uniqueMasterAudience = :uniqueMasterAudience and uniqueMasterType = :uniqueMasterType Order by uniqueMasterId desc');
        $this->db->bind(':uniqueMasterAudience', "Public");
        $this->db->bind(':uniqueMasterType', "Article");
        
        $row = $this->db->resultSet();
        return $row;
    }
    public function article($uniqueMaster) {
        $this->db->query('SELECT * FROM articlei WHERE articleUniqueId = :articleUniqueId ');
        $this->db->bind(':articleUniqueId',$uniqueMaster);
        $row = $this->db->single();
        return $row;
    }

   }

