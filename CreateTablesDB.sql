-- --------  << Trabalho Final - IMAX (Tema 02)  >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 29/08/2022
-- Autor(es) ..............: João Pedro Alves da Silva Chaves, João Pedro de Camargo Vaz, Lucas Braun Vieira Xavier e Kevin Luis Apolinario Batista
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2A_kevinbatista
--
-- Ultimas Alteracoes
--   09/09/2022 => Adição das unique keys
--              => Adição das constraints com check
--              => Adição do on delete e on update nas tabelas
--              => Adição do atributo lucro na tabela COMPRA
--              => Adição do atributo statusMaterial na tabela MATERIAL
--
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS TF_2A_kevinbatista;

USE TF_2A_kevinbatista;

CREATE TABLE EMPRESA (
    cnpjImper bigint(14) NOT NULL,
    nomeEmpresa varchar(20) NOT NULL,
    dataAbertura date NOT NULL,
    situacaoCadastral varchar(15) NOT NULL,
    contato bigint(9) NOT NULL,
    CONSTRAINT EMPRESA_PK PRIMARY KEY(cnpjImper),
    CONSTRAINT EMPRESA_UK UNIQUE (nomeEmpresa, contato)
)  engine = InnoDB;

CREATE TABLE FUNCIONARIO (
    matricula bigint(9) NOT NULL,
    nome varchar(30) NOT NULL,
    dataNascer date NOT NULL,
    dataContratacao date NOT NULL,
    endereco varchar(30) NOT NULL,
    cpf bigint(11) NOT NULL,
    funcao varchar(20) NOT NULL,
    descricaoFuncao varchar(100) NOT NULL,
    dataAdmissao date NOT NULL,
    numPis bigint(11) NOT NULL,
    cnpjImper bigint(14) NOT NULL,
    CONSTRAINT FUNCIONARIO_PK PRIMARY KEY(matricula),
	CONSTRAINT FUNCIONARIO_EMPRESA_FK FOREIGN KEY (cnpjImper) REFERENCES EMPRESA(cnpjImper) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FUNCIONARIO_UK UNIQUE(cpf, numPis)
)  engine = InnoDB;

CREATE TABLE MATERIAL (
    nomeMaterial varchar(15) NOT NULL,
    tamanhoMaterial decimal(5,2) NOT NULL,
    consumoMaterial int(4) NOT NULL,
    formaAplicacao varchar(20) NOT NULL,
    statusMaterial enum('comprado', 'pendente', 'trocado') NOT NULL,
    CONSTRAINT MATERIAL_PK PRIMARY KEY(nomeMaterial),
    CONSTRAINT tamanhoMaterial_CK CHECK(tamanhoMaterial > 0),
    CONSTRAINT consumoMaterial_CK CHECK(consumoMaterial > 0)
) engine = InnoDB;

CREATE TABLE PROJETO (
    nomeArquivoDwg varchar(20) NOT NULL,
    tipoProjeto varchar(15) NOT NULL,
    orcamento decimal(8,2) NOT NULL,
    descricao varchar(150) NOT NULL,
    quantitativoArea bigint(6) NOT NULL,
    matricula bigint(9) NOT NULL,
	lucro decimal(8,2) NOT NULL,
    CONSTRAINT PROJETO_PK PRIMARY KEY(nomeArquivoDwg),
    CONSTRAINT PROJETO_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula),
    CONSTRAINT quantitativoArea_CK CHECK(quantitativoArea > 0)
)  engine = InnoDB;

CREATE TABLE CLIENTE (
    idCliente int(4) NOT NULL auto_increment,
    email varchar(40) NOT NULL,
    bairro varchar(20) NOT NULL,
    complemento varchar(50),
    cep bigint(8) NOT NULL,
    cidade varchar(15) NOT NULL,
    telefone bigint(11) NOT NULL,
    nomeContratante varchar(50) NOT NULL,
    cnpjImper bigint(14) NOT NULL,
	CONSTRAINT CLIENTE_PK PRIMARY KEY(idCliente),
	CONSTRAINT CLIENTE_EMPRESA_FK FOREIGN KEY (cnpjImper) REFERENCES EMPRESA(cnpjImper) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT CLIENTE_UK UNIQUE(email, telefone)
) engine = InnoDB auto_increment = 1;

CREATE TABLE IMPERMEABILIZADOR (
    gratificacao decimal(7,2) NOT NULL,
    pisoSalario decimal(7,2) NOT NULL,
    matricula bigint(9) NOT NULL,
    nomeArquivoDwg varchar(20) NOT NULL,
    CONSTRAINT IMPERMEABILIZADOR_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT IMPERMEABILIZADOR_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg),
    CONSTRAINT pisoSalario_CK CHECK(pisoSalario > 0),
    CONSTRAINT gratificacao_CK CHECK(gratificacao > 0)
)  engine = InnoDB;

CREATE TABLE COMPRA (
    idCompra int(3) NOT NULL auto_increment,
    valor decimal(7,2) NOT NULL,
    nomeArquivoDwg varchar(20) NOT NULL,
    cnpjImper bigint(14) NOT NULL,
    CONSTRAINT COMPRA_PK PRIMARY KEY(idCompra),
    CONSTRAINT COMPRA_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg),
	CONSTRAINT COMPRA_EMPRESA_FK FOREIGN KEY (cnpjImper) REFERENCES EMPRESA(cnpjImper)
)  engine = InnoDB auto_increment = 1;

CREATE TABLE EXAME (
    idExame int (4) NOT NULL auto_increment,
    tipoExame varchar(20) NOT NULL,
    validade date NOT NULL,
    resultado varchar(100) NOT NULL,
    matricula bigint(9) NOT NULL,
    CONSTRAINT EXAME_PK PRIMARY KEY(idExame),
    CONSTRAINT EXAME_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula) ON DELETE CASCADE
)  engine = InnoDB auto_increment = 1;

CREATE TABLE ENCARREGADO (
    salario decimal(7,2) NOT NULL,
    numObras int(2) NOT NULL,
    bonificacao decimal(7,2) NOT NULL,
    matricula bigint(9) NOT NULL,
    CONSTRAINT ENCARREGADO_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT salario_CK CHECK(salario > 0),
    CONSTRAINT bonificacao_CK CHECK(bonificacao > 0)
)  engine = InnoDB;

CREATE TABLE SERVENTE (
    pisoSalario decimal(7,2) NOT NULL,
    matricula bigint(9) NOT NULL,
    nomeArquivoDwg varchar(20) NOT NULL,
    CONSTRAINT SERVENTE_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg),
    CONSTRAINT SERVENTE_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT pisoSalario2_CK CHECK(pisoSalario > 0)
)  engine = InnoDB;

CREATE TABLE desenvolve (
    cnpjImper bigint(14) NOT NULL,
    nomeArquivoDwg varchar(20) NOT NULL,
    CONSTRAINT desenvolve_EMPRESA_FK FOREIGN KEY (cnpjImper) REFERENCES EMPRESA(cnpjImper),
    CONSTRAINT desenvolve_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg)
)  engine = InnoDB;

CREATE TABLE utiliza (
    nomeArquivoDwg varchar(20) NOT NULL,
    nomeMaterial varchar(15) NOT NULL,
    CONSTRAINT utiliza_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg),
    CONSTRAINT desenvolve_MATERIAL_FK FOREIGN KEY (nomeMaterial) REFERENCES MATERIAL(nomeMaterial)
)  engine = InnoDB;

CREATE TABLE CURSO (
    idCurso int (4) NOT NULL auto_increment,
    nome varchar(100) NOT NULL,
    duracao time NOT NULL,
    dataEmissao date NOT NULL,
    dataValidade date NOT NULL,
    CONSTRAINT CURSO_PK PRIMARY KEY(idCurso)
) engine = InnoDB auto_increment = 1;

CREATE TABLE FISICO (
    cpf bigint(11) NOT NULL,
    idCliente int(4) NOT NULL,
	CONSTRAINT FISICO_CLIENTE_FK FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FISICO_UK UNIQUE(cpf)
) engine = InnoDB;

CREATE TABLE JURIDICO (
    cnpj bigint (14) NOT NULL,
    idCliente int(4) NOT NULL,
    CONSTRAINT JURIDICO_CLIENTE_FK FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT JURIDICO_UK UNIQUE(cnpj)
) engine = InnoDB;
 
 
CREATE TABLE constitui (
    nomeMaterial varchar(15) NOT NULL,
    idCompra int(3) NOT NULL,
    CONSTRAINT constitui_COMPRA_FK FOREIGN KEY (idCompra) REFERENCES COMPRA(idCompra),
    CONSTRAINT constitui_MATERIAL_FK FOREIGN KEY (nomeMaterial) REFERENCES MATERIAL(nomeMaterial)
)  engine = InnoDB;

CREATE TABLE cursa (
    matricula bigint(9) NOT NULL,
    idCurso int(4) NOT NULL,
    CONSTRAINT cursa_FUNCIONARIO_FK FOREIGN KEY (matricula) REFERENCES FUNCIONARIO(matricula),
    CONSTRAINT cursa_CURSO_FK FOREIGN KEY (idCurso) REFERENCES CURSO(idCurso)
)  engine = InnoDB;

CREATE TABLE demanda(
    idCliente int(4) NOT NULL,
    nomeArquivoDwg varchar(20) NOT NULL,
	CONSTRAINT demanda_PROJETO_FK FOREIGN KEY (nomeArquivoDwg) REFERENCES PROJETO(nomeArquivoDwg),
    CONSTRAINT demanda_CLIENTE_FK FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente)
) engine = InnoDB;