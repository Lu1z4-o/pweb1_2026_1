<?php

class db
{

    private $host     = 'localhost';
    private $user     = 'root';
    private $password = '';
    private $port     = '3306';
    private $dbname   = 'dp_pweb1_2026_1';
    private $table_name = 'usuario';
    private $conn; // conexão fica guardada para reutilizar

    public function __construct($table_name)
    {
        $this->table_name = $table_name;
        $this->conn = $this->connect(); // cria a conexão uma única vez
    }

    // Método privado: apenas a própria classe pode chamar
    private function connect()
    {
        try {
            return new PDO(
                "mysql:host=$this->host;dbname=$this->dbname;port=$this->port;charset=utf8",
                $this->user,
                $this->password,
                [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                ]
            );
        } catch (PDOException $e) {
            die('Erro na conexão: ' . $e->getMessage());
        }
    }
    // Função que analisa os dados e retorna em formato de classe 
    public function all(){
        $sql = "SELECT * FROM $this->table_name"; 
        $st = $this->conn->prepare($sql);
        $st->execute();
        
        return $st->fetchAll(PDO::FETCH_CLASS); 
    }



    // INSERT INTO tabela` (`campo 1`, `campo 2`) VALUES ('?', '?');
    // Criação de método que recebe dados do formulário e executa comando de insert

    public function store($dados)
    {
        $campos = "";
        $marcadores = "";
        $vetorData = [];
        $sep = "";

        // Criação de concatenação que preenche com os dados necessários

        foreach ($dados as $campo => $valor) {
            $campos .= $sep . $campo;
            $marcadores .= $sep . "?";
            $vetorData[] = $valor;
            $sep = ",";
        }
        $sql = "INSERT INTO $this->table_name ($campos) VALUES ($marcadores);";
      //  var_dump($sql, $dados);
      //  exit;

        try {
            $st = $this->conn->prepare($sql);
            $st->execute(params: $vetorData);
        } catch (PDOException $e) {
            throw new Exception("Erro ao inserir", $e->getMessage());
        }
    }
}
