<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <link rel="stylesheet" href="css/styles.css">
  <title>login</title>
</head>

<body>
  <!-- Componnets requireds -->
  <?php 
    require('./components/inputConponent/index.php');
  ?>

  <main class="container">
    <h1>Bem-vindo</h1>
    <form action="./utils/getFormFields/login.php" method="post" class="z-depth-3">
      <?php
        input_component("email", "email", "Entre com o nome", true, "");
        input_component("password", "password", "Entre com a sua senha", true, "");
      ?>
      <div class="ButtonsContainer">
        <button class="btn green waves-effect waves-light left-align" type="submit" name="button">Login
          <i class="material-icons right">send</i>
        </button>
        <a href="./cadastro.php">
          <button class="btn blue waves-effect waves-light left-align" type="button" name="button-Cad">
            Cadastro
            <i class="material-icons right">arrow_forward</i>
          </button>
        </a>
      </div>
    </form>
  </main>

</body>

</html>