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
          $isShow = true;
          switch ($key) {
            case 'birthdate':
              $type = 'date';
              break;
            case 'email':
                $type = 'email';
                break;
    
            case 'avatar':
                $type = 'url';
                break;
            case 'admin':
                $isShow = false;
                break;
            default:
              
              break;
          }
          
          $input = "<input type='$type' name='$name' required='$required' class='validate' value='$value'>";
          $label = "<label for='$id'>$placeholder</label>";
          if ($isShow) echo  "<div class='input-field'>$input$label</div>";
        }
      ?>
      <div class="ButtonsContainer">
        <button class="btn blue waves-effect waves-light left-align" type="submit" name="button">Alterar
          <i class="material-icons right">send</i>
        </button>
        <?php 
        $isShow = true;
        if($user['admin']) $isShow = false;
        if($isShow) {
          echo "
          <a href='./admin.php'>
            <button class='btn blue waves-effect waves-light left-align' type='button' name='button-Cad'>
              Entrar na Administração
              <i class='material-icons right'>arrow_forward</i>
            </button>
          </a>
        ";
        }
        ?>
      </div>
    </form>
  </main>
</body>

</html>