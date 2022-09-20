-- --------  << Trabalho Final - IMAX (Tema 02) >>  ----------
--
--                    SCRIPT APAGA
--
-- Data Criacao ...........: 29/08/2022
-- Autor(es) ..............: João Pedro Alves da Silva Chaves, João Pedro de Camargo Vaz, Lucas Braun Vieira Xavier e Kevin Luis Apolinario Batista
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2A_kevinbatista
--
--   09/09/2022 => Adição os comandos drop para os perfis
-- 	 17/09/2022 => Adição os comandos drop para os usuários
--
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--         => 03 Perfis
--         => 03 Usuários
--
-- ---------------------------------------------------------

USE TF_2A_kevinbatista;

DROP TABLE demanda;
DROP TABLE cursa;
DROP TABLE constitui;
DROP TABLE JURIDICO;
DROP TABLE FISICO;
DROP TABLE CURSO;
DROP TABLE utiliza;
DROP TABLE desenvolve;
DROP TABLE SERVENTE;
DROP TABLE ENCARREGADO;
DROP TABLE EXAME;
DROP TABLE COMPRA;
DROP TABLE CLIENTE;
DROP TABLE IMPERMEABILIZADOR;
DROP TABLE PROJETO;
DROP TABLE MATERIAL;
DROP TABLE FUNCIONARIO;
DROP TABLE EMPRESA;

DROP USER 'jose';
DROP USER 'maria';
DROP USER 'tito';

DROP ROLE 'FUNCIONARIO';
DROP ROLE 'GESTOR';
DROP ROLE 'DONO';


