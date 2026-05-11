<?php

include_once './database/db.class.php';

// Instanciar um objeto 
$conn = new db("aluno");

$dados= [
    'nome'=>"Luiza de Oliveira",
    'telefone'=>"09909090",
    'email'=>"oluiza441@gmail.com",
];

$conn->store($dados);
echo"Inserido com sucesso!";