-- --------  << Trabalho Final - IMAX (Tema 02) >>  ----------
--
--                    SCRIPT PUPULA
--
-- Data Criacao ...........: 30/08/2022
-- Autor(es) ..............: João Pedro Alves da Silva Chaves, João Pedro de Camargo Vaz, Lucas Braun Vieira Xavier e Kevin Luis Apolinario Batista
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2A_kevinbatista
--
--   09/09/2022 => Adição do atributo lucro na tabela COMPRA
--              => Adição do atributo statusMaterial na tabela MATERIAL
--   18/09/2022 => Adição de mais 5 tuplas para cada tabela do projeto
--
-- PROJETO => 01 Base de Dados
--         => 18 Tabelas
--         => 03 Perfis
--         => 03 Usuários
--
-- ---------------------------------------------------------

USE TF_2A_kevinbatista;

-- EMPRESA
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(66666666666666, 'ImaxImper', '1960-09-23', 'estável', '999296564');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(77777777777777, 'Ladrilhos LTDA', '2002-06-17', 'ok', '999296565');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(88888888888888, 'MANTAS LTDA', '2006-03-01', 'crescimento', '999296566');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(99999999999999, 'REDES LTDA', '2010-02-10', 'crise', '999296567');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(10101010101010, 'REBOCOS LTDA', '1986-11-11', 'ok', '999296568');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(11111111111111, 'TINTAS LTDA', '1987-01-12', 'ok', '999296568');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(12121212121212, 'CONCRETO LTDA', '1988-05-10', 'ok', '999296569');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(13131313131313, 'CIMENTO LTDA', '1996-06-09', 'ok', '999296570');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(14141414141414, 'AREIA LTDA', '2001-07-06', 'ok', '999296571');
INSERT INTO EMPRESA(cnpjImper, nomeEmpresa, dataAbertura, situacaoCadastral, contato) VALUES(15151515151515, 'CONSTRUCTORS LTDA', '2000-10-04', 'ok', '999296572');

-- FUNCIONARIO 
		-- servente
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020650, 'João Pedro', '2002-03-08', '2018-05-25', 'Águas Claras, Res Jandaia', 07080978123, 'Servente', 'Carrega coisas para cima e para baixo', '2018-05-20', 44455566622, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020651, 'Gabriel', '1992-12-20', '2010-01-21', 'Águas Claras, Res Flamboyant', 07080978124, 'Servente', 'Carrega coisas para cima e para baixo', '2009-11-04', 44455566623, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020652, 'Mateus', '1987-10-07', '2013-04-20', 'Águas Claras, Res Maison', 07080978125, 'Servente', 'Carrega coisas para cima e para baixo', '2008-06-24', 44455566624, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020653, 'Daemon', '1975-04-30', '2005-08-26', 'Águas Claras, Res Buritis', 07080978126, 'Servente', 'Carrega coisas para cima e para baixo', '1999-04-12', 44455566625, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020654, 'Ned', '2002-02-10', '2017-11-03', 'Águas Claras, Res ParqueC', 07080978127, 'Servente', 'Carrega coisas para cima e para baixo', '2016-12-21', 44455566626, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020770, 'Mauricio', '2001-10-11', '2021-12-12', 'Águas Claras, Res Sonho', 06070973401, 'Servente', 'Carrega coisas para cima e para baixo', '2020-10-21', 11122233344, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020771, 'Cesar', '2000-09-25', '2020-09-05', 'Águas Claras, Res Pesa', 06070973402, 'Servente', 'Carrega coisas para cima e para baixo', '2020-09-15', 11122233345, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020772, 'Brener', '1996-08-20', '2014-12-06', 'Águas Claras, Res Top', 06070973403, 'Servente', 'Carrega coisas para cima e para baixo', '2015-04-03', 11122233346, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020773, 'Pablo', '1999-07-17', '2017-08-03', 'Águas Claras, Res Jagua', 06070973404, 'Servente', 'Carrega coisas para cima e para baixo', '2016-12-04', 11122233347, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020774, 'Cristiano', '2000-03-16', '2018-12-03', 'Águas Claras, Res Jaca', 06070973405, 'Servente', 'Carrega coisas para cima e para baixo', '2018-11-21', 11122233348, 66666666666666);
		-- encarregado
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020655, 'Clóvis', '1980-05-12', '2007-12-01', 'Asa Sul, Quadra 308', 07080978128, 'Encarregado', 'Gerencia a Obra', '2004-05-20', 44455566627, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020656, 'Geraldo', '1996-01-13', '2012-04-21', 'Asa Norte, Quadra 210', 07080978129, 'Encarregado', 'Gerencia a Obra', '2009-11-04', 44455566628, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020657, 'Ursulo', '1991-12-07', '2014-01-25', 'Noroeste, Residencial Uiuiui', 07080978130, 'Encarregado', 'Gerencia a Obra', '2008-06-24', 44455566629, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020658, 'Matttias', '1982-11-30', '2006-03-23', 'Sudoeste, Residencial Olinda', 07080978131, 'Encarregado', 'Gerencia a Obra', '1999-04-12', 44455566630, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020659, 'Alessandro', '2001-09-10', '2018-12-15', 'Águas Claras, Res Mansões', 07080978132, 'Encarregado', 'Gerencia a Obra', '2019-12-21', 44455566631, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020775, 'Newba', '1993-01-13', '2014-08-15', 'Águas Claras, Res Recide', 06070973406, 'Encarregado', 'Gerencia a Obra', '2018-11-01', 11122233349, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020776, 'Valk', '1990-02-23', '2013-01-13', 'Águas Claras, Res Mara', 06070973407, 'Encarregado', 'Gerencia a Obra', '2016-10-11', 11122233350, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020777, 'Hibano', '1988-03-27', '2011-06-01', 'Águas Claras, Res SP', 06070973408, 'Encarregado', 'Gerencia a Obra', '2016-09-12', 11122233351, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020778, 'Eren', '1995-04-16', '2020-11-03', 'Águas Claras, Res Vila', 06070973409, 'Encarregado', 'Gerencia a Obra', '2015-06-15', 11122233352, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020779, 'Sasuke', '1992-06-14', '2020-05-02', 'Águas Claras, Res Plan', 06070973410, 'Encarregado', 'Gerencia a Obra', '2014-04-17', 11122233353, 66666666666666);
		-- impermeabilizador
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020660, 'Ezio', '1993-05-15', '2017-06-20', 'Águas Claras, Res Solarium', 07080978133, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2001-05-20', 44455566632, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020661, 'Bandit', '1991-09-17', '2011-02-19', 'Águas Claras, Res Jandaia', 07080978134, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2002-11-04', 44455566633, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020662, 'Jagger', '1985-10-18', '2015-05-15', 'Águas Claras, Res Champanat', 07080978135, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2003-06-24', 44455566634, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020663, 'Floris', '1981-11-29', '2009-09-24', 'Águas Claras, Res Escuras', 07080978136, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2004-04-12', 44455566635, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020664, 'Sledge', '1990-12-17', '2018-12-09', 'Águas Claras, Res Central', 07080978137, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2005-12-21', 44455566636, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020780, 'Galvao', '1992-11-12', '2019-01-09', 'Águas Claras, Res Juca', 06070973410, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2008-11-10', 11122233354, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020781, 'Massa', '1994-08-17', '2020-03-09', 'Águas Claras, Res Piri', 06070973411, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2010-10-13', 11122233355, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020782, 'Vettel', '1991-09-17', '2021-06-09', 'Águas Claras, Res Floripa', 06070973412, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2009-09-16', 11122233356, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020783, 'Hamilton', '1990-10-17', '2019-05-09', 'Águas Claras, Res BSB', 06070973413, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2008-07-14', 11122233357, 66666666666666);
INSERT INTO FUNCIONARIO(matricula, nome, dataNascer, dataContratacao, endereco, cpf, funcao, descricaoFuncao, dataAdmissao, numPis, cnpjImper) VALUES(200020784, 'Rosberg', '1990-11-17', '2017-10-09', 'Águas Claras, Res Janeiro', 06070973414, 'Impermeabilizador', 'Impermeabiliza de fato as coisas', '2007-08-12', 11122233358, 66666666666666);
		-- MATERIAL
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) 
	VALUES('Areia Molhada', 400.00, 0030, 'Aplicação Direta', 'comprado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) 
	VALUES('Manta', 200.00, 0100, 'Estender e Aplicar', 'pendente');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) 
	VALUES('Argamassa', 150.00, 0150, 'Molhar e Utilizar', 'trocado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) 
	VALUES('Cimento', 250.20, 1000, 'Preparar com água', 'comprado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) 
	VALUES('Ladrilhos', 400.30, 0001, 'Colar na Parede', 'pendente');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) VALUES('Argila', 400.30, 0100, 'Usar na Parede', 'pendente');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) VALUES('Piso', 070.00, 0201, 'Colar na Superfície', 'comprado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) VALUES('Cerâmica', 100.60, 0150, 'Colar Organizado', 'comprado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) VALUES('Madeira', 030.00, 0110, 'Sustentação', 'comprado');
INSERT INTO MATERIAL(nomeMaterial, tamanhoMaterial, consumoMaterial, formaAplicacao, statusMaterial) VALUES('Canos', 070.30, 0050, 'Fluídos', 'pendente');


-- PROJETO
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) 
	VALUES('ProjetoPredio1', 'Revestimento', 100000.00,  'Uso dessa massa especial para preparar para uma futura Impermeabilização', 020000, 200020655, 1000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) 
	VALUES('ProjetoPredio2', 'Impermeabilizar', 150000.00, 'Aplicação da Manta no chão do subsolo do Prédio', 040000, 200020656, 93000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) 
	VALUES('ProjetoPredio3', 'Restauração', 110000.00, 'Restauração Completa do Catetinho', 200000, 200020657, 12000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) 
	VALUES('ProjetoPredio4', 'Reestruturação', 105000.00, 'Reestruturação da parede do apartamento', 003010, 200020658, 20000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio5', 'Fachada', 300000, 'Fazer a fachada do predio com ladrilhos com impermeabilização completa', 112230, 200020659, 14900.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio6', 'Estrutura', 300700, 'Fazer a estrutura do predio para a impermeabilização completa', 133080, 200020775, 20000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio7', 'Impermeabilizar', 500000, 'Fazer a impermeabilização completa', 133530, 200020776, 25000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio8', 'Restauração', 450000, 'Fazer a restauração da parede da casa', 120040, 200020777, 35000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio9', 'Construção', 390000, 'Fazer a construção da área a ser impermeabilizada', 100875, 200020778, 40000.00);
INSERT INTO PROJETO(nomeArquivoDwg, tipoProjeto, orcamento, descricao, quantitativoArea, matricula, lucro) VALUES('ProjetoPredio10', 'Apli Manta', 100000, 'Fazer a aplicação da manta impermeabilizadora', 200000, 200020779, 12000.00);

-- SERVENTE
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(10000.00, 200020650, 'ProjetoPredio1');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(12000.00, 200020651, 'ProjetoPredio2');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(15000.00, 200020652, 'ProjetoPredio3');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(15200.00, 200020653, 'ProjetoPredio4');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11000.00, 200020654, 'ProjetoPredio5');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11500.00, 200020770, 'ProjetoPredio6');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11400.00, 200020771, 'ProjetoPredio7');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11200.00, 200020772, 'ProjetoPredio8');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11800.00, 200020773, 'ProjetoPredio9');
INSERT INTO SERVENTE(pisoSalario, matricula, nomeArquivoDwg) VALUES(11900.00, 200020774, 'ProjetoPredio10');
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`tf_2a2_joaochaves`.`servente`, CONSTRAINT `SERVENTE_FUNCIONARIO_FK` FOREIGN KEY (`matricula`) REFERENCES `funcionario` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE)

-- ENCARREGADO
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(20000.00, 20, 12000.00, 200020655);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(16000.00, 17, 10000.00, 200020656);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(12000.00, 9, 11000.00, 200020657);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(15000.00, 15, 12000.00, 200020658);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(10500.00, 5, 11400.00, 200020659);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(15500.00, 7, 11500.00, 200020775);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(15500.00, 7, 11500.00, 200020776);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(11500.00, 8, 11500.00, 200020777);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(12500.00, 9, 11600.00, 200020778);
INSERT INTO ENCARREGADO(salario, numObras, bonificacao, matricula) VALUES(13500.00, 11, 11900.00, 200020779);

-- IMPERMEABILIZADOR
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(12700.00, 10700.00, 200020660, 'ProjetoPredio1');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(13800.00, 10500.00, 200020661, 'ProjetoPredio2');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(14900.00, 12249.00, 200020662, 'ProjetoPredio3');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(11400.00, 12100.00, 200020663, 'ProjetoPredio4');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(15600.00, 12500.00, 200020664, 'ProjetoPredio5');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(18200.00, 14500.00, 200020780, 'ProjetoPredio6');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(13500.00, 15500.00, 200020781, 'ProjetoPredio7');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(18600.00, 10500.00, 200020782, 'ProjetoPredio8');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(18200.00, 11500.00, 200020783, 'ProjetoPredio9');
INSERT INTO IMPERMEABILIZADOR(gratificacao, pisoSalario, matricula, nomeArquivoDwg) VALUES(13400.00, 12500.00, 200020784, 'ProjetoPredio10');

-- CURSO
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0001, 'Ataque químico', '19:30:00', '2018-06-25', '2020-06-25');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0002, 'Conceitos Básicos sobre Impermeabilização', '12:00:00', '2010-02-21', '2020-02-21');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0003, 'Canteiro de Obras', '20:00:00', '2019-12-03', '2029-12-03');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0004, 'Fases do Canteiro', '24:00:00', '2019-04-30', '2029-04-30');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0005, 'Gestão de Resíduos', '15:00:00', '2020-08-24', '2030-04-30');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0006, 'Conceito de abrasão', '24:00:00', '2021-06-21', '2031-04-30');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0007, 'Raios U.V.', '20:00:00', '2020-08-24', '2030-05-03');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0008, 'Detalhes construtivos', '39:00:00', '2018-10-24', '2028-04-30');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0009, 'Área - Reservatórios Parte 1', '35:00:00', '2019-05-24', '2029-04-30');
INSERT INTO CURSO(idCurso, nome, duracao, dataEmissao, dataValidade) VALUES(0010, 'Portfólio de produtos', '15:30:00', '2021-01-25', '2031-04-30');

-- cursa
INSERT INTO cursa(matricula, idCurso) VALUES(200020660, 0001);
INSERT INTO cursa(matricula, idCurso) VALUES(200020660, 0002);
INSERT INTO cursa(matricula, idCurso) VALUES(200020650, 0003);
INSERT INTO cursa(matricula, idCurso) VALUES(200020650, 0004);
INSERT INTO cursa(matricula, idCurso) VALUES(200020650, 0005);
INSERT INTO cursa(matricula, idCurso) VALUES(200020780, 0006);
INSERT INTO cursa(matricula, idCurso) VALUES(200020781, 0007);
INSERT INTO cursa(matricula, idCurso) VALUES(200020782, 0008);
INSERT INTO cursa(matricula, idCurso) VALUES(200020783, 0009);
INSERT INTO cursa(matricula, idCurso) VALUES(200020784, 0010);

-- EXAME 
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1001, 'cardíaco', '2025-02-10', 'ok', '200020650');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1002, 'físico', '2025-02-10', 'a cima do peso', '200020651');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1003, 'renal', '2025-02-10', 'insuficiência renal', '200020652');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1004, 'psicológico', '2025-02-10', 'saudável psicologicamente', '200020653');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1005, 'ortopédico', '2025-02-10', 'pé torcido', '200020660');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1006, 'urológico', '2025-02-10', 'próstata ok', '200020781');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1007, 'toxicológico', '2025-02-10', 'ok', '200020782');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1008, 'sanguíneo', '2025-02-10', 'colesterol alto', '200020780');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1009, 'dental', '2025-02-10', 'cárie no canino', '200020783');
INSERT INTO EXAME(idExame, tipoExame, validade, resultado, matricula) VALUES(1010, 'check-up', '2025-02-10', 'ok', '200020784');

	-- CLIENTE
-- fisico 
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2001, 'aaaaaaaa@gmail.com', 'Sudoeste', 'Quadra 300', 74550000, 'Brasília', 61999198448, 'Gutemberg', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2002, 'bbbbbbbb@gmail.com', 'Águas Claras', 'Rua 28 Sul', 71917000, 'Brasília', 61998425835, 'Alice', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2003, 'cccccccc@gmail.com', 'Noroeste', 'Quadra 200', 71945760, 'Brasília', 61998425829, 'Vandor', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2004, 'dddddddd@gmail.com', 'Buganville', 'T9', 53573090, 'Goiânia', 62995175112, 'Bruno Ribas', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2005, 'eeeeeeee@gmail.com', 'Ceilandia', 'Conjunto 14', 71821000, 'Brasília', 61997125614, 'Hilmer', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2011, 'kkkkkkkk@gmail.com', 'Sol Nascente', 'Conjunto 04', 71822000, 'Brasília', 61997125615, 'Jordan', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2012, 'llllllll@gmail.com', 'Vicente Pires', 'Rua 10', 71823000, 'Brasília', 61997125616, 'Kobe', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2013, 'mmmmmmmm@gmail.com', 'Asa Sul', 'Quadra 308', 71824000, 'Brasília', 61997125617, 'Bryant', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2014, 'nnnnnnnn@gmail.com', 'SIA', '1a Avenida', 71825000, 'Brasília', 61997125618, 'Shaq', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2015, 'oooooooo@gmail.com', 'Parque Sul', 'Quadra 106', 71826000, 'Brasília', 61997125619, 'Jhonson', 66666666666666);

-- juridico
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2006, 'ffffffff@gmail.com', 'Sudoeste', 'Quadra 303', 74550000, 'Brasília', 61999198441, 'ltda1', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2007, 'gggggggg@gmail.com', 'Águas Claras', 'Rua 46 Sul', 71919001, 'Brasília', 61998425741, 'ltda2', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2008, 'hhhhhhhh@gmail.com', 'Noroeste', 'Quadra 201', 71945961, 'Brasília', 61998425942, 'ltda3', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2009, 'iiiiiiii@gmail.com', 'Asa Norte', 'Quadra 021', 53574094, 'Brasília', 62995175551, 'ltda4', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2010, 'jjjjjjjj@gmail.com', 'Asa Sul', 'Conjunto 64', 71823006, 'Brasília', 61997125424, 'ltda5', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2016, 'pppppppp@gmail.com', 'Asa Sul', 'Conjunto 05', 71823045, 'Brasília', 61997145424, 'ltda6', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2017, 'qqqqqqqq@gmail.com', 'Asa Sul', 'Conjunto 06', 71823046, 'Brasília', 61977155424, 'ltda7', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2018, 'rrrrrrrr@gmail.com', 'Asa Sul', 'Conjunto 61', 71823047, 'Brasília', 61977165424, 'ltda8', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2019, 'ssssssss@gmail.com', 'Asa Sul', 'Conjunto 63', 71823048, 'Brasília', 61997175424, 'ltda9', 66666666666666);
INSERT INTO CLIENTE(idCliente, email, bairro, complemento, cep, cidade, telefone, nomeContratante, cnpjImper) VALUES(2020, 'tttttttt@gmail.com', 'Asa Sul', 'Conjunto 67', 71823049, 'Brasília', 61997885424, 'ltda10', 66666666666666);

-- FISICO
INSERT INTO FISICO(idCliente, cpf) VALUES(2001, 07080988833);
INSERT INTO FISICO(idCliente, cpf) VALUES(2002, 62631831194);
INSERT INTO FISICO(idCliente, cpf) VALUES(2003, 65131216714);
INSERT INTO FISICO(idCliente, cpf) VALUES(2004, 02004871763);
INSERT INTO FISICO(idCliente, cpf) VALUES(2005, 74753294231);
INSERT INTO FISICO(idCliente, cpf) VALUES(2011, 74753294232);
INSERT INTO FISICO(idCliente, cpf) VALUES(2012, 74753294233);
INSERT INTO FISICO(idCliente, cpf) VALUES(2013, 74753294234);
INSERT INTO FISICO(idCliente, cpf) VALUES(2014, 74753294235);
INSERT INTO FISICO(idCliente, cpf) VALUES(2015, 74753294236);

-- JURIDICO
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2006, 66666555555555);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2007, 66666444444444);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2008, 66666333333333);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2009, 66666222222222);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2010, 66666111111111);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2016, 66666434343434);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2017, 666482394343555);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2018, 66666123255436);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2019, 66666983452342);
INSERT INTO JURIDICO(idCliente, cnpj) VALUES(2020, 66666872347845);

-- demanda
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2001, 'ProjetoPredio1');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2002, 'ProjetoPredio2');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2003, 'ProjetoPredio3');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2004, 'ProjetoPredio4');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2005, 'ProjetoPredio5');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2006, 'ProjetoPredio6');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2007, 'ProjetoPredio7');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2008, 'ProjetoPredio8');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2009, 'ProjetoPredio9');
INSERT INTO demanda(idCliente, nomeArquivoDwg) VALUES(2010, 'ProjetoPredio10');

-- desenvolve
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio1');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio2');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio3');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio4');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio5');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio6');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio7');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio8');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio9');
INSERT INTO desenvolve(cnpjImper, nomeArquivoDwg) VALUES(66666666666666, 'ProjetoPredio10');

-- COMPRA
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(301, 14000.00, 'ProjetoPredio1', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(302, 01500.00, 'ProjetoPredio2', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(303, 15000.00, 'ProjetoPredio3', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(304, 00500.00, 'ProjetoPredio4', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(305, 00600.00, 'ProjetoPredio5', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(306, 01500.00, 'ProjetoPredio6', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(307, 12100.00, 'ProjetoPredio7', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(308, 12100.00, 'ProjetoPredio8', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(309, 12100.00, 'ProjetoPredio9', 66666666666666);
INSERT INTO COMPRA(idCompra, valor, nomeArquivoDwg, cnpjImper) VALUES(310, 22000.00, 'ProjetoPredio10', 66666666666666);


-- utiliza
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio1', 'Areia Molhada');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio2', 'Manta');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio3', 'Argamassa');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio4', 'Cimento');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio5', 'Ladrilhos');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio6', 'Argila');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio7', 'Piso');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio8', 'Cerâmica');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio9', 'Madeira');
INSERt INTO utiliza(nomeArquivoDwg, nomeMaterial) VALUES('ProjetoPredio10', 'Canos');

-- constitui
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Areia Molhada',301);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Manta', 302);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Argamassa', 303);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Cimento', 304);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Ladrilhos', 305);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Argila', 306);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Piso', 307);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Cerâmica', 308);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Madeira', 309);
INSERT INTO constitui(nomeMaterial, idCompra) VALUES('Canos', 310);