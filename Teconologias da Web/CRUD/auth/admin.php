<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script defer src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <title>Admin</title>
  <style>
  .avatar-img {
    width: 48px;
    height: 48px;
    border-radius: 50%;
    object-fit: cover;
  }
  </style>
</head>

<body>
  <main class="container">
    <?php 
      require("../utils/connection.php");
      $sql_query = "SELECT * FROM users
      inner join users_login on user_id = users.id";
      $result = mysqli_query($db, $sql_query);
      $users = mysqli_fetch_all($result, MYSQLI_ASSOC);
      unset($user['password']);
    ?>
    <div class="CardContainer">
      <div class="card">
        <div class="card-content">
          <span class="card-title">Usuários</span>
          <table class="striped">
            <thead>
              <tr>
                <th>ID</th>
                <th>Foto</th>
                <th>Nome</th>
                <th>Idade</th>
                <th>Email</th>
                <th>Ações</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach($users as $user): ?>
              <tr>
                <td><?php echo $user['id']; ?></td>
                <td><img class="avatar-img tooltipped" src='<?php echo $user['avatar']; ?>' data-position="top"
                    data-tooltip="<?php echo $user['name']; ?>"></td>
                <td><?php echo $user['name']; ?></td>
                <td>
                  <?php 
                    $birthdate = new DateTime($user['birthdate']);
                    $today = new DateTime('today');
                    $age = $birthdate->diff($today)->y;
                    echo $age;
                  ?>
                </td>
                <td><?php echo $user['email']; ?></td>
                <td>
                  <a href="./index.php?id=<?php echo $user['id']; ?>"
                    class="btn-floating btn-small waves-effect waves-light blue tooltipped" data-position="top"
                    data-tooltip="Alterar">
                    <i class="material-icons">edit</i>
                  </a>
                  <a href="./deleteUsers.php?id=<?php echo $user['id']; ?>"
                    class="btn-floating btn-small waves-effect waves-light red tooltipped" data-position="top"
                    data-tooltip="Deletar"><i class="material-icons">delete</i></a>
                </td>
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
      var elems = document.querySelectorAll('.tooltipped');
      var instances = M.Tooltip.init(elems);
    });
    </script>
  </main>
</body>

</html>