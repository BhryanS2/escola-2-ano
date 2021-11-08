<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    <title>Exemplo PHP</title>
  </head>
  <body>
  <!-- navbar -->
    <?php
        include("navbar.php");
    ?>
    <div class="container">
        <div class="row" id='msg_boas_vindas'>
            <div class="col-12">
        </div>
    </div>

        <div class="row">
            <div class="col-12">
                <div class="jumbotron mt-2">
                    <h1 class="display-4">Olá!</h1>
                    <p class="lead">Seja bem vindo ao site Viagens Brasil!</p>
                    <hr class="my-4">
                    <p>Acompanhe nossas dicas para você aproveitar a sua viagem ao máximo!</p>
                    <a class="btn btn-primary btn-lg" href="#" role="button">Leia mais</a>
                    <br>

                    <?php
                        $nome = "<h2>Ramon Gustavo Silva</h2>";
                        echo $nome;

                        $pagina = "http://www.google.com";
                        echo "<a href=' " . $pagina . "'>Google.com</a>";

                        $salario = 1500;

                        $situacao = true;

                        $vetor = array('cidade1'=>'Muzambinho','cidade2'=>'Monte Belo','cidade3'=>'Cabo Verde','cidade4'=>'Guaxupé');
                        echo "<h2>" . $vetor['cidade3'] . "</h2>";


                    ?>

                </div>
            </div>
        </div>

    </div>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="script.js"></script>
  </body>
</html>