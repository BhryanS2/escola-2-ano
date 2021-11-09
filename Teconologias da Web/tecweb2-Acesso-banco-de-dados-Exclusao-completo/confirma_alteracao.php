<?php
    //Criando e abrindo a conexão com o BD tecweb2
    require("conexao.php");

    //Recuperando os valores informados no form
    $nome = (isset($_POST['nome'])) ? $_POST['nome'] : "";
    $email = (isset($_POST['email'])) ? $_POST['email'] : ""; 
    $estado = (isset($_POST['uf'])) ? $_POST['uf'] : "";
    $cidade = (isset($_POST['cidade'])) ? $_POST['cidade'] : "";
    $mensagem = (isset($_POST['msg'])) ? $_POST['msg'] : "";

    $cod = (isset($_POST['cod_contato'])) ? $_POST['cod_contato'] : "";

    

    //Criando a variável com a SQL de alteração
    $sql_update = "UPDATE mensagens_contato SET nome = '$nome', email = '$email', mensagem = '$mensagem', estado = '$estado', cidade = '$cidade' WHERE id_contato = '$cod'";

    print_r($sql_update);

    //Executa a variável PHP com SQL de alteração
    if(mysqli_query($con,$sql_update)){
        echo "<script>alert('Registro alterado com sucesso!');window.location='lista_cadastros.php'</script>";
    }else{
        //echo "<script>alert('Erro ao alterar!');window.location='lista_cadastros.php'</script>";
    }
    //Fechar a conexão com o Banco de dados
    mysqli_close($con);

?>