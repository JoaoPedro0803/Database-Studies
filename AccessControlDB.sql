-- --------  << Trabalho Final - IMAX (Tema 02) >>  ----------
--
--                    SCRIPT CONTROLE
--
-- Data Criacao ...........: 29/08/2022
-- Autor(es) ..............: João Pedro Alves da Silva Chaves, João Pedro de Camargo Vaz, Lucas Braun Vieira Xavier e Kevin Luis Apolinario Batista
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2A_kevinbatista
--
-- 	 17/09/2022 => Adição dos usuários tito, maria e jose
--
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--         => 03 Perfis
--         => 03 Usuários
--
-- ---------------------------------------------------------

USE TF_2A_kevinbatista;

-- Cria o perfil 'DONO' e garante a ele todos os privilégios
CREATE ROLE 'DONO';
GRANT ALL PRIVILEGES ON TF_2A_kevinbatista TO 'DONO' WITH GRANT OPTION;

-- Cria o perfil 'GESTOR' e garante a ele os privilégios de INSERT, SELECT E CREATE VIEW 
-- em todas as tabelas pois é o perfil que os funcionários da parte administrativa terão.
CREATE ROLE 'GESTOR';
GRANT INSERT, SELECT, CREATE VIEW ON TF_2A_kevinbatista.* TO 'GESTOR';

-- Cria o perfil 'FUNCIONARIO' e garante a ele o privilégio de visualizar VIEWS de qualquer 
-- tabela, esse perfil é para os funcionários que trabalham nas obras, tais como impermeabilizador,
-- servente, etc.
CREATE ROLE 'FUNCIONARIO';
GRANT SHOW VIEW ON TF_2A_kevinbatista.* TO 'FUNCIONARIO';

-- Criação de usuários
-- Cria usuário com nome 'tito' e senha '2022tito' e garante privilégio do papel 'DONO'
CREATE USER 'tito' IDENTIFIED BY '2022tito';
GRANT 'DONO' to 'tito';

-- Cria usuário com nome 'maria' e senha 'airam22' e garante privilégio do papel 'GESTOR'
CREATE USER 'maria' IDENTIFIED BY 'airam22';
GRANT 'GESTOR' to 'maria';

-- Cria usuário com nome 'jose' e senha 'esoj2022' e garante privilégio do papel 'FUNCIONARIO'
CREATE USER 'jose' IDENTIFIED BY 'esoj2022';
GRANT 'FUNCIONARIO' to 'jose';