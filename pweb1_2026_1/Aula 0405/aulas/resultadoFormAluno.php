<?php
include '../header.php';
?>
<div class="col-6">
    <?php
    echo "<p>".$_POST['nome']."</p>";
    echo "<p>".$_POST['email']."</p>";
    echo "<p>".$_POST['telefone']."</p>";

// Mesmo que a senha não esteja sendo mostrada, o método das outras variáveis é alterado para post para que não possa ser vista 
//no topo da página.
    ?>
</div>
<?php
include '../footer.php';
?>