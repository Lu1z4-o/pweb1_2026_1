<?php
include '../header.php';
include_once "../database/db.class.php";

$db = new db('usuario');
if (!empty($_POST)) {
    $db->store($_POST);
}
?>

<form action="UsuarioForm.php" method="post">
    <h3> Formulário Usuário</h3>
    <div class=" col-6">
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
        <div>
            <button type="submit" class="btn btn-primary">Salvar</button>
</form>
</div>

<?php
include '../footer.php';
?>