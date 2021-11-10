<?php
  require("../password.php");
  require("../connection.php");
  
  function getFieldValue($fieldName) {
    return (isset($_POST[$fieldName])) ? $_POST[$fieldName] : "";
  }

  $email = getFieldValue('email');
  $passwordField = getFieldValue('password');
  
  if ($passwordField == "") {
    echo "<h1>Senha inválida</h1>";
    return;
  }

  $sql_insert = "SELECT * FROM users_login WHERE email = '$email'";
  $result = mysqli_query($db, $sql_insert);
  $row = mysqli_fetch_array($result);
  // save user in session
  $email = $row['email'];
  if ($email == null) {
    echo "
    <div>
      <h1>E-mail ainda não cadastrado</h1>
      <a href='../../cadastro.php'>fazer o cadastro</a>
      <a href='../../index.php'>fazer o login novamente</a>
    </div>";
    return;
  }
  $passowrdDb = base64_decode($row['password']);

  if ($passwordField == $passowrdDb) {
    if (session_status() !== PHP_SESSION_ACTIVE) {
      session_start();
    }

    $id = $row['user_id'];
    
    header("Location: ../../auth/index.php?id=$id");
    return;
  } 
  
  echo "<h1>Senha inválida</h1>";
  
  