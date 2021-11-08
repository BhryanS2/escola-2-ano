<?php
    require("./conexao.php");
    function valorDoCampo($fieldName) {
        return (isset($_POST[$fieldName])) ? $_POST[$fieldName] : "";
    }

    $nome = valorDoCampo('nome');
    $cpf = valorDoCampo('cpf');
    $email = valorDoCampo('email');
    $telefone = valorDoCampo('telefone');
    $pecaAdquirida = valorDoCampo('pecaAdquirida');
    $valor = valorDoCampo('valor');
    $FormaDePagamento = valorDoCampo('FormaDePagamento');

    $sql_insert = "INSERT INTO Roupa VALUES (null, '$nome', '$cpf', '$email', '$telefone', '$pecaAdquirida', '$valor','$FormaDePagamento')";
    print_r($sql_insert);

    if (mysqli_query($conexao, $sql_insert)) {
        header("Location: ./listagem.php");
    }
    mysqli_close($conexao);
