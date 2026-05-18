<?php
include '../header.php';
include_once "../database/db.class.php";

$db = new db('usuario');
$success = ''; 
$actionError = ''; 
$errors= [];

if (!empty($_POST)) {
 try{
    if(empty($_POST['nome'])){
        $errors[]= "<li>O nome é obrigatório</li>";
    }

    if(empty($_POST['email'])){
        $errors[]= "<li>O email é obrigatório</li>";
    }

    if (empty($errors)){
        $db->store($_POST);$db->store($_POST); // $_POST é uma variável global que armazena o que é enviado no formulário 
        $success = "Registro salvo com sucesso!";
        
        redirect('./UsuarioList.php');
    }

    }
    catch(PDOException $e){
        $actionError = $e->getMessage();
    }
    catch(Exception $e){
        $actionError = $e->getMessage();
    }
    
}
?>
<div class="row">
    <?php actionMessage($success, $actionError)?>
    <?php showValidationError($errors)?>

<form action="UsuarioForm.php" method="post">
    <h3> Formulário Usuário</h3>
    <div class=" col-6">
        <label for="nome">Nome</label>
        <input type="text" name="nome" class="form-control" value="
        <?php echo getFormValue('nome') ?>
        ">
    </div>
    <div class="col-6">
        <label for="email">Email</label>
        <input type="mail" name="email" class="form-control" value="
        <?php echo getFormValue('email') ?>>
    </div>

    <div class="col-6">
        <label for="telefone">Telefone</label>
        <input type="number" name="telefone" class="form-control" value="
        <?php echo getFormValue('telefone') ?> >
        <div class="mt-2">
        <div>
            <button type="submit" class="btn btn-primary">Salvar</button>
            <a href="./UsuarioList.php class="btn btn-primary">Voltar</a>
        </div>
</form>
</div>

<?php
include '../footer.php';
?>