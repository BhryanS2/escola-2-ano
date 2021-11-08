<?php
    require('config.php');

    $nome = (isset($POST['nome'])) ? $_POST['nome'] : "";
    $email = (isset($_POST['email'])) ? $_POST['email'] : "";
    $telefone = (isset($_POST['telefone'])) ? $_POST['telefone'] : "";
    $sexo = (isset($_POST['genero'])) ? $_POST['genero'] : "";
    $data_nasc= (isset($_POST['data_nascimento'])) ? $_POST['data_nascimento'] : "";
    $cidade= (isset($_POST['cidade'])) ? $_POST['cidade'] : "";
    $estado = (isset($_POST['estado'])) ? $_POST['estado'] : "";
    $endereco = (isset($_POST['endereco'])) ? $_POST['endereco'] : "";

    $result = "INSERT INTO clientes (nome,email,telefone,sexo,data_nasc,cidade,estado,endereco) VALUES ('$nome','$email','$telefone','$sexo','$data_nasc','$cidade','$estado','$endereco')";


    if (mysqli_query($conexao, $result)) {
        echo "<script>alert('Confirmado!'); window.location='formulario.php'</script>";
    } else {
        echo "<script>alert('Erro!'); window.location='formulario.php'</script>";
    }

    mysqli_close($conexao);
?>