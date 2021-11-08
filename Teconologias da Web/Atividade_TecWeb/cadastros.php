<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title>Clientes</title>
        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;
                background-image: linear-gradient(to right, rgb(182, 161, 122), rgb(202, 112, 9));
            }
        </style>
    </head>
    <body class="text-center">
        <div class='row'>
            <div class='col'>
                <div class='container'>
                    <?php 
                        require("config.php");

                        $sql = "SELECT * FROM clientes ORDER BY idClientes DESC";

                        $res = mysqli_query($conexao, $sql);

                        echo "<header class='m-0 py-3'>
                                <h1>Cadastro de Clientes</h1>
                                <hr class='mt-3'>
                            </header>";

                        echo "<table class='table mt-5 table-success table-striped'>
                                <thead>
                                    <tr class=table-secondary'>
                                        <th scope='col'>Nome</th>
                                        <th scope='col'>Email</th>    
                                        <th scope='col'>Telefone</th> 
                                        <th scope='col'>Sexo</th> 
                                        <th scope='col'>Data de Nascimento</th>  
                                        <th scope='col'>Cidade</th>
                                        <th scope='col'>Estado</th>
                                        <th scope='col'>Endereço</th>    
                                    </tr>
                                </thead>
                                <tbody>";

                        $num_rows = mysqli_num_rows($res);

                        if ($num_rows > 0) {
                            while ($dados = mysqli_fetch_assoc($res)) {
                                echo "<tr>
                                        <td>" . $dados['nome'] . "</td>
                                        <td>" . $dados['email'] . "</td>   
                                        <td>" . $dados['telefone'] . "</td>
                                        <td>" . $dados['sexo'] . "</td>
                                        <td>" . $dados['data_nasc'] . "</td>
                                        <td>" . $dados['cidade'] . "</td>
                                        <td>" . $dados['estado'] . "</td>
                                        <td>" . $dados['endereco'] . "</td>                              
                                    </tr>";
                            }
                        } else {
                            echo "<tr class='text-center'><td colspan='3'>Sem!</td></tr>";
                        }

                        echo "</tbody></table>";
                    ?>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    </body>
</html>