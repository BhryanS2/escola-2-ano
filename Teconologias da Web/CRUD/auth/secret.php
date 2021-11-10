<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <link rel="stylesheet" href="../css/styles.css">
  <title>CRUD</title>
</head>

<body>
  <main class="container">
    <?php 
      require("../utils/connection.php");
      $id = isset($_GET['id']) ? $_GET['id'] : '';
      $id = $id == '' ? '' : preg_replace('/\D/', '', $id);
      $sql = "SELECT * FROM users_login WHERE user_id = $id";
      $result = $db->query($sql);
      $user = $result->fetch_assoc();
      unset($user['id']);
      unset($user['user_id']);
    ?>
    <h1>Editar Senha</h1>
    <form action='./alterSecret.php?<?php echo "id=$id"?>' method='post' class='z-depth-3'>
      <?php
        $nameInput = array(
          "email" => 'E-mail',
          "password"=> 'Senha'
        );
        foreach($user as $key => $value) {
          $name= $key;
          $type= 'text';
          $placeholder = $nameInput[$key];
          $required = true;
          $idHtml = $key;
          if ($key == 'password') {
            $type = 'password';
            // decode password
            $value = base64_decode($value);
          }
          if ($key == 'email') {
            $tyoe = 'email';
          }
          
          $input = "<input type='$type' name='$name' required='$required' class='validate' value='$value'>";
          $label = "<label for='$idHtml'>$placeholder</label>";
          echo  "<div class='input-field'>$input$label</div>";
        }
      ?>
      <div class="ButtonsContainer">
        <a href="./index.php?id=<?php echo $id?>">
          <button class="btn indigo waves-effect waves-light left-align" type="button" name="button">Voltar
            <i class="material-icons left">arrow_back</i>
          </button>
        </a>
        <button class="btn green waves-effect waves-light left-align" type="submit" name="button">Alterar
          <i class="material-icons right">send</i>
        </button>
      </div>
    </form>
  </main>
  <script>
  function handleChangeImage() {
    const input = document.querySelector('input[name="avatar"]');
    const img = document.querySelector('img');
    img.src = input.value;
  }
  </script>
</body>

</html>