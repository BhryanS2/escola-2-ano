<?php
    //Criando e abrindo a conexão com o BD tecweb2
    require("conexao.php");

    //Recuperando o COD do registro a ser excluído, usando método GET
    $cod = (isset($_GET['cod'])) ? $_GET['cod'] : "";

    

    //Criando a variável com a SQL de exclusão
    $sql_delete = "DELETE FROM mensagens_contato WHERE id_contato = '$cod'";

    print_r($sql_delete);

    //Executa a variável PHP com SQL de exclusão
    if(mysqli_query($con,$sql_delete)){
        echo "<script>alert('Registro excluído com sucesso!');window.location='lista_cadastros.php'</script>";
    }else{
        //echo "<script>alert('Erro ao alterar!');window.location='lista_cadastros.php'</script>";
    }
    //Fechar a conexão com o Banco de dados
    mysqli_close($con);

?>