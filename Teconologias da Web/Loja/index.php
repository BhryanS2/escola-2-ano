<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link 
    href="https://fonts.googleapis.com/icon?family=Material+Icons" 
    rel="stylesheet">
    <link 
    rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"
    >
    <style>
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        form {
            max-width: 800px;
            width: 100%;
            border: 1px solid #bbdefb;
            border-radius: 2rem;
            padding: 1.5rem;
        }

        label,
        .input-field label,
        label.active {
            font-size: 1.2rem;
            color: #2196f3;
            pointer-events: none;
        }

        .EnviarForm {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        @media (max-width: 800px) {
            form {
                max-width: 100%;
            }
        }

    </style>
    <title>Loja</title>
</head>
<body onload="initSelect()">
    <main class="container">
        <h1>Seja bem-vindo a loja Miranda's</h1>
        <form action="./salvaDados.php" method="post" class="z-depth-2">
            <?php
                require("./input.php");
                input_component("nome","text", "Nome", true, "", "", "");
                input_component("cpf","text", "CPF", true, "", "14", "11");
                input_component("email","email", "Email", true, "", "", "");
                input_component("telefone","text", "Telefone", true, "", "", "");
                input_component("pecaAdquirida","text", "Peça adquirida", true, "", "", "");
                input_component("valor","number", "Valor", true, "", "", "");
            ?>
            <div onclick="select(this)">
                <label>Forma de pagamento</label>
                <select name="FormaDePagamento" default="escolha" class="input-field" onclick="select(this)">
                    <option value="" disabled selected>Escolha</option>
                    <option value="cartão de crédito">Cartão de crédito</option>
                    <option value="cartão de debito">Cartão de debito</option>
                    <option value="pix">Pix</option>
                </select>
            </div>
            <div class="EnviarForm">
                <button 
                    class="btn blue waves-effect waves-light left-align" 
                    type="submit" 
                    name="button"
                >
                    Submit
                </button>
            </div>
        </form>
    </main>
    <script>
        function initSelect() {
            const elem = document.querySelectorAll("select");
            const instances = M.FormSelect.init(elem);
            console.log(instances);
        }
        function select(elem) {
            const selectRef = elem.children[1];
            const instance = M.FormSelect.getInstance(selectRef);
            console.log(M.FormSelect.getInstance(selectRef));
            // console.log(instance);
            // console.log(instance.getSelectedValues());
        }
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>