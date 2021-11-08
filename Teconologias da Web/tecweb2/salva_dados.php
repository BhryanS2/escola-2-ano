<?php
    //Criando e abrindo a conexão com o BD tecweb2
    require("conexao.php");

    //Recuperando os valores informados no form
    $nome = (isset($_POST['nome'])) ? $_POST['nome'] : "";
    $email = (isset($_POST['email'])) ? $_POST['email'] : ""; 
    $estado = (isset($_POST['uf'])) ? $_POST['uf'] : "";
    $cidade = (isset($_POST['cidade'])) ? $_POST['cidade'] : "";
    $mensagem = (isset($_POST['msg'])) ? $_POST['msg'] : "";

    //Criando a variável com a SQL de inserção
    $sql_insert = "INSERT INTO mensagens_contato (nome, email, mensagem, estado, cidade) VALUES ('$nome', '$email', '$mensagem', '$estado', '$cidade')";

    print_r($sql_insert);

    //Executa a variável PHP com SQL de inserção
    if(mysqli_query($con,$sql_insert)){
        echo "<script>alert('Obrigado por solicitar informações!');window.location='contato.php'</script>";
    }else{
        //echo "<script>alert('Erro ao cadastrar!');window.location='contato.php'</script>";
    }
    //Fechar a conexão com o Banco de dados
    mysqli_close($con);

?>