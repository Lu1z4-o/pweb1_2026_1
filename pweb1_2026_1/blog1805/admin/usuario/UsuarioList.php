<?php
include '../header.php';
include_once "../database/db.class.php";
// Inicializa a variável para evitar erros caso o POST seja acionado


$db = new db('usuario');
if (!empty($_POST)) {
    // 
    //
    //
} else {
    $dados = $db->all();
    //  var_dump($dados);
    // exit;
}
?>
<div class="row">
    <div class="row">
        <div class="col">
            <a href="./UsuarioForm.php" class="btn btn-success">Novo</a>
        </div>
    </div>
</div>

<div class="row">
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Telefone</th>
                <th scope="col">Email</th>
            </tr>
        </thead>
        <tbody>


            <?php
            foreach ($dados as $item) {
                echo "<tr>
                    <th scope='row'>$item->id</th>
                    <td>$item->nome</td>
                    <td>$item->telefone</td>
                    <td>$item->email</td>
                </tr>";
            }
            ?>
        </tbody>
    </table>

    <?php

    include '../footer.php';
    ?>