/* Delimitador alterado para ; */
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário db_web_luiza_vitoria_banco, usando a senha: No... */
/* Access denied for user 'db_web_luiza_vitoria_banco'@'localhost' (using password: NO) */
/* [Laragon.MySQL] Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário db_web_luiza_vitoria_banco, usando a senha: No... */
/* [Laragon.MySQL] Access denied for user 'db_web_luiza_vitoria_banco'@'localhost' (using password: NO) */
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário root, usando a senha: No... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Changing character set from latin1 to utf8mb4 */
/* CharacterSet: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. Thread-ID: 10 */
/* Reading function definitions from C:\laragon\bin\heidisql\functions-mysql.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
/* Entrando na sessão "Laragon.MySQL" */
/* Redimensionando controles para tela DPI: 125% */
USE `information_schema`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='information_schema';
USE `mysql`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='mysql';
SHOW TABLE STATUS FROM `mysql`;
SHOW FUNCTION STATUS WHERE `Db`='mysql';
SHOW PROCEDURE STATUS WHERE `Db`='mysql';
SHOW TRIGGERS FROM `mysql`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='mysql';
USE `performance_schema`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='performance_schema';
SHOW TABLE STATUS FROM `performance_schema`;
SHOW FUNCTION STATUS WHERE `Db`='performance_schema';
SHOW PROCEDURE STATUS WHERE `Db`='performance_schema';
SHOW TRIGGERS FROM `performance_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='performance_schema';
USE `sys`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='sys';
SHOW TABLE STATUS FROM `sys`;
SHOW FUNCTION STATUS WHERE `Db`='sys';
SHOW PROCEDURE STATUS WHERE `Db`='sys';
SHOW TRIGGERS FROM `sys`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='sys';
SHOW COLLATION;
SHOW VARIABLES;
CREATE DATABASE `db_web_luiza_vitoria_banco` /*!40100 COLLATE 'utf8mb4_0900_ai_ci' */;
SHOW DATABASES;
/* Entrando na sessão "Laragon.MySQL" */
USE `db_web_luiza_vitoria_banco`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SHOW VARIABLES;
SHOW CREATE DATABASE `db_web_luiza_vitoria_banco`;
ALTER DATABASE `db_web_luiza_vitoria_banco` COLLATE 'utf8mb4_0900_ai_ci';
SHOW DATABASES;
/* Entrando na sessão "Laragon.MySQL" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SHOW ENGINES;
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #88: Abstract Error Message CharCode:0 Msg:514 */
/* #97: Abstract Error Message CharCode:0 Msg:514 */
/* #76: Access violation at address 000000000040F199 in module 'heidisql.exe'. Read of address 0000000000000010 Message CharCode:0 Msg:514 */
/* #53: Abstract Error Message CharCode:0 Msg:514 */
/* #92: Abstract Error Message CharCode:0 Msg:514 */
/* #10: Abstract Error Message CharCode:0 Msg:514 */
/* #1634496361: Access violation at address 00000000005DE1FB in module 'heidisql.exe'. Read of address 0000000000000000 Message CharCode:13 Msg:256 */
/* #85: Abstract Error Message CharCode:0 Msg:514 */
/* #8: Abstract Error Message CharCode:0 Msg:514 */
/* #49: Abstract Error Message CharCode:0 Msg:514 */
CREATE TABLE `funcionario` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`cpf` VARCHAR(11) NOT NULL DEFAULT 'xxx.xxx.xxx-xx',
	`nascimento` DATE NOT NULL,
	`admissao` DATE NOT NULL,
	`funcao` VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
/* Erro SQL (1067): Invalid default value for 'cpf' */
CREATE TABLE `funcionario` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`cpf` VARCHAR(11) NOT NULL DEFAULT 'xxx.xxx.xxx-xx',
	`nascimento` DATE NOT NULL,
	`admissao` DATE NOT NULL,
	`funcao` VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
/* Erro SQL (1067): Invalid default value for 'cpf' */
CREATE TABLE `funcionario` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`cpf` VARCHAR(11) NOT NULL,
	`nascimento` DATE NOT NULL,
	`admissao` DATE NOT NULL,
	`funcao` VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
ALTER TABLE `funcionario`
	CHANGE COLUMN `id` `id` INT(5) NOT NULL FIRST;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* #22: Abstract Error Message CharCode:0 Msg:514 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #39: Abstract Error Message CharCode:0 Msg:514 */
/* #30: Abstract Error Message CharCode:0 Msg:514 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
CREATE TABLE `cliente` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL DEFAULT '',
	`razaosocial` VARCHAR(100) NULL DEFAULT '',
	`cpf` VARCHAR(11) NULL DEFAULT '',
	`cnpj` VARCHAR(14) NULL DEFAULT '',
	`telefone` VARCHAR(15) NOT NULL DEFAULT '',
	`email` VARCHAR(50) NOT NULL DEFAULT '',
	`endereco` VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='cliente' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `cliente` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`cliente`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='cliente' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* #38: Abstract Error Message CharCode:0 Msg:514 */
/* #1: Abstract Error Message CharCode:0 Msg:514 */
ALTER TABLE `funcionario`
	ADD COLUMN `demissao` DATE NULL AFTER `admissao`,
	ADD COLUMN `status` ENUM('Ativo','Afastado', 'Desativado') NOT NULL AFTER `funcao`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
/* #63: Abstract Error Message CharCode:0 Msg:514 */
/* #66: Abstract Error Message CharCode:0 Msg:514 */
/* #21: Abstract Error Message CharCode:0 Msg:514 */
/* #65: Abstract Error Message CharCode:0 Msg:514 */
/* #1634496361: Access violation at address 00000000005DE1FB in module 'heidisql.exe'. Read of address 0000000000000000 Message CharCode:13 Msg:256 */
/* #86: Abstract Error Message CharCode:0 Msg:514 */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
CREATE TABLE `produto` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL DEFAULT '',
	`categoria` ENUM('Armação','Lente','Óculos de sol','Outros') NOT NULL DEFAULT '',
	`tipo_lente` ENUM('Visão Simples','Progressiva') NULL DEFAULT '',
	`descricao` VARCHAR(50) NOT NULL DEFAULT '',
	`marca` VARCHAR(50) NOT NULL DEFAULT '',
	`preco_custo` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`preco_venda` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`estoque` INT NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
/* Erro SQL (1067): Invalid default value for 'categoria' */
CREATE TABLE `produto` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL DEFAULT '',
	`categoria` ENUM('Armação','Lente','Óculos de sol','Outros') NOT NULL DEFAULT '',
	`tipo_lente` ENUM('Visão Simples','Progressiva') NULL DEFAULT '',
	`descricao` VARCHAR(50) NOT NULL DEFAULT '',
	`marca` VARCHAR(50) NOT NULL DEFAULT '',
	`preco_custo` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`preco_venda` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`estoque` INT NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
/* Erro SQL (1067): Invalid default value for 'categoria' */
CREATE TABLE `produto` (
	`id` INT NOT NULL,
	`nome` VARCHAR(50) NOT NULL DEFAULT '',
	`categoria` ENUM('Armação','Lente','Óculos de sol','Outros') NOT NULL,
	`tipo_lente` ENUM('Visão Simples','Progressiva') NULL,
	`descricao` VARCHAR(50) NOT NULL DEFAULT '',
	`marca` VARCHAR(50) NOT NULL DEFAULT '',
	`preco_custo` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`preco_venda` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
	`estoque` INT NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='produto' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `produto` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`produto`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='produto' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='cliente' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `cliente` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`cliente`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='cliente' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
ALTER TABLE `cliente`
	CHANGE COLUMN `razaosocial` `razao_social` VARCHAR(100) NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci' AFTER `nome`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_web_luiza_vitoria_banco';
SHOW TABLE STATUS FROM `db_web_luiza_vitoria_banco`;
SHOW FUNCTION STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW PROCEDURE STATUS WHERE `Db`='db_web_luiza_vitoria_banco';
SHOW TRIGGERS FROM `db_web_luiza_vitoria_banco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_web_luiza_vitoria_banco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='cliente' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `cliente` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`cliente`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='cliente' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CHARSET;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'cliente' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'cliente' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'funcionario' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'produto' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'cliente' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'funcionario' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
SELECT 'db_web_luiza_vitoria_banco' AS `Database`, 'produto' AS `Table`, 0 AS `Rows`, 0 AS `Duration`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`cliente`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
USE `information_schema`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='information_schema';
USE `db_web_luiza_vitoria_banco`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='produto' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `produto` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`produto`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='produto' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='cliente' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `cliente` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='cliente'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`cliente`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='cliente' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_web_luiza_vitoria_banco' AND TABLE_NAME='funcionario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `funcionario` FROM `db_web_luiza_vitoria_banco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_web_luiza_vitoria_banco'   AND TABLE_NAME='funcionario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`funcionario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_web_luiza_vitoria_banco' AND tc.TABLE_NAME='funcionario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CREATE TABLE `db_web_luiza_vitoria_banco`.`produto`;