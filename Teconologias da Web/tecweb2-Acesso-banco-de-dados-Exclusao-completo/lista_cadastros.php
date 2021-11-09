<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    
    <title>Exemplo PHP</title>
  </head>
  <body>
  <!-- navbar -->
    <?php
        include("navbar.php");
    ?>     

    <div class='row'>
        <div class='col-12'>
            <div class='container'>
            <?php 
                //Criando e abrindo a conexão com o BD tecweb2
                require("conexao.php");
                //Criando a variável com a SQL de recuperação
                $sql = "SELECT * FROM mensagens_contato ORDER BY id_contato DESC";
                //Executando a SQL e recuperando bloco de conteúdo
                $res = mysqli_query($con, $sql);
                //Criando cabeçalho da tabela HTML para listar os dados
                echo "<table class='table'>
                <thead>
                    <tr>
                    <th scope='col'>Nome</th>
                    <th scope='col'>Cidade</th>
                    <th scope='col'>Mensagem</th> 
                    <th scope='col'>Opções</th>     
                    </tr>
                </thead>
                <tbody>";
                //Armazena na variável PHP a quantidade de linhas do bloco de conteúdo
                $num_rows = mysqli_num_rows($res);
                //Teste para verificar se há pelo menos 1 registro retorno no bloco de contéudo
                if($num_rows > 0){
                    //Acessando o bloco de conteúdo $res, linha por linha, até a última linha do bloco de conteúdo.
                    while($dados = mysqli_fetch_assoc($res)){
                        //Escrevendo as linhas do bloco de conteúdo na tabela
                        echo "<tr>   
                                <td>".$dados['nome']."</td>   
                                <td>".$dados['cidade']." - ".$dados['estado']."</td>
                                <td>".$dados['mensagem']."</td> 
                                <td><a class='btn btn-success' href='altera_contato.php?cod=".$dados['id_contato']."'>Alterar</a> 
                                <a class='btn btn-danger btn-exclui' href='exclui_contato.php?cod=".$dados['id_contato']."' >Excluir</a></td>                               
                                </tr>";
                    }
                }else{
                    echo "<tr class='text-center'><td colspan='3'> Não há registros cadastrados! </td></tr>";
                }
                //Fechando a tabela HTML
                echo "</tbody></table>";
                
            ?>
            </div>
        </div>
    </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="script.js"></script>
  </body>
</html>