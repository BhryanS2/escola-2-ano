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
    <!-- 
    navbar = classe padrão para a barra de navegação
    navbar-expand-lg = só expande a barra de navegação no tamanho lg
    navbar-light = cores de contraste
    bg-light = cor de funda da barra de navegação

    navbar-brand = nome de destaque do lado esquerdo
    navbar-toggler = recolhe e expande a barra de navegação
    O atributo data-target aponta para o ID da DIV que contém o menu a ser recolhido/expandido
    navbar-toggler-icon = icone

    Há classes com o nome do elemento (ex: h1)
    Há novas classes para margens e espaçamento: mb-x / mt-x / ml-x / mr-x

    Para alinhar o menu junto com o conteúdo, deve-se criar uma div com a class container
    
    mr-auto = alinha a esquerda 
    ml-auto = alinha a direita
    dropdown = classe para li com dropdown
    dropdown-toggle = classe para link com efeito dropdown
    dropdown-menu = classe para DIV com os links do dropdwon
    dropdown-item = classe para cada item do menu dropdown

    form-inline = altera o display do elemento para "em linha"

    navbar-fixed-top = Fixa a navbar no Topo

    Cores -> https://getbootstrap.com/docs/4.5/components/navbar/
    -->
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
                <?php                    
                    for($i=1;$i<10;$i++){
                     echo "<div class='card mt-2'>
                     <div class='card-body'>
                         <h3>Viagem  ". $i ."</h3>
                     </div>
                 </div>"; 
                    }
                ?>
          
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