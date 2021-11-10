<?php
  require("../utils/password.php");
  require("../utils/connection.php");
  
  function getFieldValue($fieldName) {
    return (isset($_POST[$fieldName])) ? $_POST[$fieldName] : "";
  }
  $id = isset($_GET['id']) ? $_GET['id'] : '';
  $id = $id == '' ? '' : preg_replace('/\D/', '', $id);
  $Email = getFieldValue('email');
  $PasswordField = getFieldValue('password');
  if ($Email && $PasswordField){
    $PasswordHash = base64_encode($PasswordField);
    $sql_update = "UPDATE users_login SET password = '$PasswordHash', email = '$Email' WHERE id = $id";
    
    $result = mysqli_query($db, $sql_update);
    if ($result) {
      echo "
      <div>
        <h1>Usuário alterado com sucesso!</h1>
        <a href='./index.php?id=$id'>Voltar</a>
      </div>
      ";
    } else {
      echo "<h1>Erro ao alterar usuário!</h1>";
    }
  } else {
    echo "<h1>Erro ao alterar dados!</h1>";
  }