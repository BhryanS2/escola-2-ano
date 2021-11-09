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

                <div  class='alert border border-success alert-secondary mt-2' role='alert'>
                        Olá, <?php echo boas_vindas(); ?>, seja bem vindo(a) ao nosso site! <button type='button' class='close' aria-label='Close'>
                        <span aria-hidden='true' id='btn_close'>&times;</span></button></div>

                    
             
                
            </div>
        </div>
        
        <div class="row">
            <div class="col-6">
                <fieldset>
                    <legend>Fale conosco</legend>
                <form method='post' action='salva_dados.php'>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Nome</label>
                        <input type="text" name="nome" class="form-control" id="formGroupExampleInput" placeholder="Nome...">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail" placeholder="Email...">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Estado:</label>
                        <select class="form-control" name='uf' id="exampleFormControlSelect1">
                        <?php
                            $estados = array("Espirito Santo", "Minas Gerais", "Sao Paulo", "Rio de Janeiro", "Bahia");
                            foreach($estados as $uf){
                                    echo "<option>$uf</option>";                                
                            }                        
                        ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Cidade</label>
                        <input type="text" name='cidade' class="form-control" id="formGroupExampleInput" placeholder="Cidade...">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Mensagem</label>
                        <textarea name="msg" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
                </fieldset>
            </div>
            <div class="col-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d8837.647941111552!2d-46.52102722392486!3d-21.359437923149898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2s!4v1600547262080!5m2!1spt-BR!2s" width="100%" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
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