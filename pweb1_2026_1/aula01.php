<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $nome= "Luiza";
        $idade=18;
        echo "Olá, me chamo $nome <br> Tenho $idade anos.";

      if($idade < 18){
        echo "<br>$nome é menor de idade";
        } else {
        echo "<br>$nome é maior de idade";
        }

        $notas = [5, 7, 10, 9]; 

        echo "<br>";
        print_r ($notas); // forma de mostrar vetores na tela

        echo "<br>"; // imprime linha vazia 
        for ($i=0; $i < count ($notas); $i++){
            echo $notas[$i]."<br>";
        }

        echo "<br>"; 

        foreach ($notas as $item){
            echo $item. "<br>";
        }

        echo "<br>";

        $nomes = ["Luiza", "Vitória", "Maria", "Bazuca", "Pinduca", "Ryan", "Yasmim"];
        echo "<br>"; 
        foreach ($nomes as $item){
            echo $item. "<br>";
        }

        // Exemplo de vetor com chaves de valor: 
        $carros = ['modelo'=> "Jeep Renegade", 'cor'=> "Azul", 'ano' => 2026];    

        // Print dos valores
        echo "<br>";
        echo "<br>";
        echo $carros['modelo']."-".$carros['cor'];
        
    ?>

    <p>Meu site <?= $carros['modelo']."- Ano".$carros['ano'] ?></p>

    <?php
    include "./aula02.php";
     ?>
    
</body>
</html>
