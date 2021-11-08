<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User list</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="./listagem.css">
    <script>
    const goToHome = () => {
        window.location.href = "./index.php";
    }
    </script>
</head>

    <body>
    <?php
        require("./conexao.php");
        $sql = "SELECT * FROM Roupa";
        $vetor_resultado = mysqli_query($conexao, $sql);
        $linhas = mysqli_num_rows($vetor_resultado);

        if ($linhas > 0) {
            echo "<div class='container'>";
            while ($usuario = mysqli_fetch_assoc($vetor_resultado)) {
            echo '
                <div class="card-panel z-depth-2" style="border-radius: 1rem;">
                <div class="card-content">
                    <h3>'.$usuario["nome"].'</h3>
                    <span><strong>'.$usuario['nome'].'</strong> comprou '.$usuario['pecaAdquirida'].' por '.$usuario['valor'].' e pagou via '.$usuario['formaDePagamento'].'</span>
                    <div>
                        <p>Entre em contato</p>
                        <div style="display: flex; flex-direction: column">
                            <a href="mailto:'.$dados["email"].'" target="_blank">Email '.$dados["email"].'</a>
                            <a href=" https://wa.me/'.$dados["telefone"].'" target="_blank">Telefone '.$dados["telefone"].'</a>
                        </div>
                    </div>
                </div>
                </div>
            ';
            }
            echo "</div>";
        } else echo '
            <div class="SemLista">
                <h1>Não vendemos nada ainda, compre de nós!</h1>
                <button 
                    class="btn blue waves-effect waves-light left-align" 
                    type="submit" 
                    name="button"
                    onclick="goToHome()"
                >
                    Ir as compras
                </button>
            </div>';
    ?>
    <div class="fixed-action-btn">
    <button class="btn-floating btn-large waves-effect waves-light purple z-depth-1" onclick="goToHome()">
        <i class="material-icons">arrow_back</i>
        Voltar a Home
    </button>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>

</html>
