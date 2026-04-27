<?php 
// Chave para imprimir múltiplos vetores 
$pessoas = [
    ["nome" => "Luiza", "idade" => 18],
    ["nome" => "Vitória", "idade" => 18],
    ["nome" => "Bruna", "idade" => 18],
];

foreach ($pessoas as $key => $item){
    $nome = $item['nome'];
    $idade = $idade['idade'];
    echo "Indice: $key <br> Nome: $nome Idade: $idade <br>"; 
}

?>