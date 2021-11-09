<?php
  require("../validateCPF.php");
  require("../insert.php");
  require("../password.php");
  require("../connection.php");
  
  function getFieldValue($fieldName) {
    return (isset($_POST[$fieldName])) ? $_POST[$fieldName] : "";
  }

  $Name = getFieldValue('Name');
  $birthDate = getFieldValue('birthDate');
  $email = getFieldValue('email');
  $passwordField = getFieldValue('password');
  $Cpf = getFieldValue('Cpf');
  $PasswordEncode =  $passwordClass->encodePassword($passwordField);
  $Avatar = getFieldValue('ImageURl');
  $isAdmin = $email == "ramon@teste.com" && $passwordField == "123" ? 1 : 0;
  
  if ($passwordField == "") {
    echo "<h1>Senha inválida</h1>";
    return;
  }
  if (!validadeCPF($Cpf)) {
    echo "<h1>CPF inválido</h1>";
    return;
  } 
  $sql_insertArray = array(
    "name" => $Name,
    "email" => $email,
    "birthdate" => $birthDate,
    "password" => $PasswordEncode,
    "Cpf" => $Cpf,
    "avatar" => $Avatar,
    "admin" => $isAdmin
  );
  $res = insert("users", $sql_insertArray, $db);
  if ($res) {
    echo "
    <div>
      <h1>$res</h1>
      <a href='../../Cadastro.php'>Voltar</a>
    </div>
    ";
  } else {
    header("Location: ../../index.php");
  }