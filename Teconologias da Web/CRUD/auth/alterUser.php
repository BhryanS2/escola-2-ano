<?php
  require("../utils/validateCPF.php");
  require("../utils/insert.php");
  require("../utils/password.php");
  require("../utils/connection.php");
  
  function getFieldValue($fieldName) {
    return (isset($_POST[$fieldName])) ? $_POST[$fieldName] : "";
  }
  $id = isset($_GET['id']) ? $_GET['id'] : '';
  $id = $id == '' ? '' : preg_replace('/\D/', '', $id);
  $Name = getFieldValue('name');
  $birthDate = getFieldValue('birthdate');
  $Cpf = getFieldValue('Cpf');
  $Avatar = getFieldValue('avatar');
  
  if (!validadeCPF($Cpf)) {
    echo "<h1>CPF inválido</h1>";
    return;
  }
  
  // alter users
  $sql_update = "UPDATE users SET name = '$Name', birthdate = '$birthDate', Cpf = '$Cpf', avatar = '$Avatar' WHERE id = $id";
  
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