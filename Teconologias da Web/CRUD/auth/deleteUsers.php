<?php
  require("../utils/connection.php");
  
  $id = isset($_GET['id']) ? $_GET['id'] : '';

  // alter users
  $sql_delete = "DELETE FROM users WHERE id = $id";
  $result = mysqli_query($db, $sql_delete);
  if ($result) {
    echo "
    <div>
      <h1>Usuário deletado com sucesso!</h1>
      <a href='./index.php?id=$id'>Voltar</a>
    </div>
    ";
    header("Location: ./admin.php");
  } else {
    echo "
    <div>
      <h1>Erro ao deletar usuário!</h1>
      <a href='./admin.php?id=$id'>Voltar</a>
    </div>
    ";
  }