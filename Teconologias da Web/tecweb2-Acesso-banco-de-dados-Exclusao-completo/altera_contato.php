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
    
    
    <div class="container">
        <div class="row" id='msg_boas_vindas'>
            <div class="col-12">
                <?php
                    function boas_vindas(){
                        $hora = date('H');
                        if($hora >= 18){
                            $msg = "Boa noite";
                        }elseif($hora >= 12){
                            $msg = "Boa tarde";
                        }else{
                            $msg = "Bom dia";
                        }
                        return $msg;
                    }
                ?>
                  
             
                
            </div>
        </div>

        <?php
            //Criando e abrindo a conexão com o BD tecweb2
            require("conexao.php");

            //Recuperando o valor do COD, passado via GET
            $cod = (isset($_GET['cod'])) ? $_GET['cod'] : "null";
            //Buscando os dados do registro na tabela mensagens_contato
            $sql_retrieve = "SELECT * FROM mensagens_contato WHERE id_contato = '$cod'";
            $res = mysqli_query($con, $sql_retrieve);
            $dados = mysqli_fetch_assoc($res);
            //Fechar a conexão com o Banco de dados
            mysqli_close($con);

        ?>
        
        <div class="row">
            <div class="col-12">
                <fieldset>
                    <legend>Fale conosco</legend>
                <form method='post' action='confirma_alteracao.php'>
                    <!-- Campo hidden para armazenar o código do registro a ser alterado -->
                    <input type="hidden" name="cod_contato" value="<?php echo $dados['id_contato'];?>">
                    <div class="form-group">
                        <label for="formGroupExampleInput">Nome</label>
                        <input type="text" value="<?php echo $dados['nome']; ?>" name="nome" class="form-control" id="formGroupExampleInput" placeholder="Nome...">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Email</label>
                        <input type="email" value="<?php echo $dados['email']; ?>" name="email" class="form-control" id="exampleInputEmail" placeholder="Email...">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Estado:</label>
                        <select class="form-control" name='uf' id="exampleFormControlSelect1">
                        <?php
                            $estados = array("Espirito Santo", "Minas Gerais", "Sao Paulo", "Rio de Janeiro", "Bahia");
                            foreach($estados as $uf){
                                
                                if($uf == $dados['estado']){
                                    echo "<option selected>$uf</option>";
                                }else{
                                    echo "<option>$uf</option>";
                                }
                                
                            }
                        
                        ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Cidade</label>
                        <input type="text" value="<?php echo $dados['cidade']; ?>" name='cidade' class="form-control" id="formGroupExampleInput" placeholder="Cidade...">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Mensagem</label>
                        <textarea name="msg" class="form-control" id="exampleFormControlTextarea1" rows="3"><?php echo $dados['mensagem']; ?></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Confirmar alteração</button>
                    <a href="lista_cadastros.php" class="btn btn-danger">Cancelar</a>
                </form>
                </fieldset>
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