<?php
  // insert data in database

  function insert($table, $data, $db) {
    $fields = implode(", ", array_keys($data));
    $values = "'" . implode("', '", array_values($data)) . "'";
    $sql = "INSERT INTO $table ($fields) VALUES ($values)";
    $email = "";
    if ($data['email']){
      $email = $data['email'];
    } 

    if ($email != ""){
      $result = mysqli_query($db, "SELECT COUNT(*) FROM ${table} WHERE email = '{$email}'");
      $row = $result->fetch_row();
      
      if ($row[0] > 0) {
        return "email já cadastrado";
      }
    }

    return !mysqli_query($db, $sql);
    // return $sql;
  }