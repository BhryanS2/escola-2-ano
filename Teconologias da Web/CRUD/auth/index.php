<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <link rel="stylesheet" href="../css/Auth.css">
  <link rel="stylesheet" href="../css/form.css">
  <title>CRUD</title>
</head>

<body>
  <main class="container" id="Main">
    <?php 
      require("../utils/connection.php");
      $id = isset($_GET['id']) ? $_GET['id'] : '';
      $id = $id == '' ? '' : preg_replace('/\D/', '', $id);
      $sql = "SELECT * FROM users WHERE id = $id";
      $result = $db->query($sql);
      $user = $result->fetch_assoc();
      unset($user['password']);
      unset($user['id']);
      unset($user['admin']);
      
    ?>
    <h1>Editar Usuário</h1>
    <form action="" method="post" class="z-depth-3">
      <?php
        // Array ( 
        //   [id] => 1 
        //   [name] => Bhryan Stepenhen 
        //   [email] => teste@gmail.com 
        //   [birthdate] => 2021-11-03 
        //   [Cpf] => 08815513094 
        //   [avatar] => https://www.github.com/bhryanS2.png 
        //   [admin] => 0 
        // ) 
        foreach($user as $key => $value) {
          $name= $key;
          $type= 'text';
          $placeholder = $key;
          $required = true;
          $id = $key;

          if($key == 'birthdate') {
            $value = date('d/m/Y', strtotime($value));
            $type = 'date';
          }

          if($key == 'email') {
            $type = 'email';
          }

          if($key == 'avatar') {
            $type = 'url';
          }

          $input = "<input type='$type' name='$name' required='$required' class='validate' value='$value'>";
          $label = "<label for='$id'>$placeholder</label>";
          echo  "<div class='input-field'>$input$label</div>";
        }
      ?>
    </form>
  </main>
</body>

</html>