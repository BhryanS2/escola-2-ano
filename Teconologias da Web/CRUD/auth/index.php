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
      $sql = "SELECT * FROM users WHERE id = $id";
      $result = $db->query($sql);
      $user = $result->fetch_assoc();
      unset($user['id']);
    ?>
    <h1>Editar Usuário</h1>
    <?php 
        echo "<form action='./alterUser.php?id=$id' method='post' class='z-depth-3'>"; 
      ?>
    <?php
      $nameInput = array(
        "name" => 'Nome',
        "birthdate"=> 'Data de Nascimento',
        "Cpf"=> 'CPF',
        "avatar"=> 'Avatar',
      );
      foreach($user as $key => $value) {
        $name= $key;
        $type= 'text';
        $placeholder = $nameInput[$key];
        $required = true;
        $idHtml = $key;
        $isShow = true;
        $showImage = false;
        switch ($key) {
          case 'birthdate':
            $type = 'date';
            break;
          case 'email':
            $type = 'email';
            break;
  
          case 'avatar':
            $type = 'url';
            $showImage = true;
            break;
          case 'admin':
            $isShow = false;
            break;
          default:
            break;
        }
        
        $input = "<input type='$type' name='$name' required='$required' class='validate' value='$value'>";
        $label = "<label for='$idHtml'>$placeholder</label>";
        if ($isShow && !$showImage) echo  "<div class='input-field'>$input$label</div>";
        else if ($isShow && $showImage) echo  "
        <div class='avatar'>
          <img src='$value'>
          <div class='input-field'>
            <input type='$type' name='$name' required='$required' class='validate' value='$value' onchange='handleChangeImage()'>
            $label
          </div>
        </div>";
      }
    ?>
    <div class="ButtonsContainer">
      <button class="btn green waves-effect waves-light left-align" type="submit" name="button">Alterar
        <i class="material-icons right">send</i>
      </button>
      <?php echo "<a href='./secret.php?id=$id'>" ?>
      <button class="btn blue waves-effect waves-light left-align" type="button" name="button">Alterar
        Email/senha
        <i class="material-icons right">arrow_upward</i>
      </button>
      </a>
      <?php 
        $isShow = false;
        if($user['admin']) $isShow = true;
        if($isShow) {
          echo "
          <a href='./admin.php'>
            <button class='btn light-green waves-effect waves-light left-align' type='button' name='button-Cad'>
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
  <script>
  function handleChangeImage() {
    const input = document.querySelector('input[name="avatar"]');
    const img = document.querySelector('img');
    img.src = input.value;
  }
  </script>
</body>

</html>