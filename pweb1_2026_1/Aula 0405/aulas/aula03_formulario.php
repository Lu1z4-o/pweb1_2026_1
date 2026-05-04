<?php
include '../header.php';
?>
    <form action="resultadoFormAluno.php" method="get"> 
        <h3> Formulário Aluno</h3>
        <div class="col-6">
            <label for="nome">Nome</label>
            <input type="text" name="nome" class="form-control">
        </div>
    <div class="col-6">
            <label for="email">Email</label>
            <input type="mail" name="email" class="form-control">
    </div>
    
       <div class="col-6">
            <label for="telefone">Telefone</label>
            <input type="number" name="telefone" class="form-control">
    </div>
       <div class="col-6">
            <label for="senha">Senha</label>
            <input type="password" name="senha" class="form-control">
    </div>
    <div>
    <button type="submit" class="btn btn-primary">Salvar</button>
    </form>
    </div>

<?php
include '../footer.php';
?>