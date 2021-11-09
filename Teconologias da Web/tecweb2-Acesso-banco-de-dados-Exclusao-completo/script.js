
//Laço de repetição que busca todos botões excluir da class .btn-exclui
for(i=0; i < document.querySelectorAll('.btn-exclui').length; i++){ 
    //Adiciona em cada botão excluir um ouvinte para o clique do mouse
    document.querySelectorAll('.btn-exclui')[i].addEventListener('click', function(event){
        //Previne o comportamento padrão, uma requisição GET para o recurso disponível no HREF do link.
        event.preventDefault();
        //Recebe a confirmação (TRUE) ou não (FALSE) do usuário 
        var choice = confirm('Confirma exclusão?');
        //Se a confirmação for verdadeira (TRUE), a requisição GET, antes impedida, é realizada. 
        if (choice) {
            window.location.href = this.getAttribute('href');
        }
    })   
}

