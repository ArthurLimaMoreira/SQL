/*  CRIAÇÃO DO NOVO BANCO DE DADOS  */
create database if not exists cadastro default character set utf8 default collate utf8_general_ci;

/*UTILIZAÇÃO DO BANCO DE DADOS*/
use cadastro;

/*CASO NECESSÁRIO DELETAR ALGUMA TABELA, DESCOMENTAR A LINHA ESPERCÍFICA*/
drop table if exists pessoas;

/*  CRIAÇÃO DA TABELA PESSOAS  */
create table if not exists pessoas (
    id int auto_increment not null,  #declaração de id como chave prmiária da tabela
    nome varchar(20) not null,
    nascimento date,
    sexo enum('M','F'),
    peso decimal(5,2),         #peso com duas casas decimais
    altura decimal(3,2),       #altura em metros
    nacionalidade varchar(20) default 'Brasil', #Brasil por padrão
    primary key (id)           #declara id como chave primária
) default charset=utf8;

/*  ACRESCENTANDO NOVA COLUNA   */
alter table pessoas add column profissao varchar(10) default 'Estudante';

/*  INSERÇÃO DE DADOS NA TABELA PESSOAS     */
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade, profissao) values
(default, 'Arthur', '2000-08-18', 'M', '105.3', '1.92', default, default),
(default, 'Júlia', '2002-07-22', 'F', '87.2', '1.71', 'Argentina', default);

/*  SEGUNDA FORMA DE INSERÇÃO, CASO SEJA NA MESMA ORDEM DECLARADA NA TABELA*/
insert into pessoas values
(default, 'Marcos', '1998-03-27', 'M', '94.3', '1.64', 'Brasil', 'Tradutor'),
(default, 'Jean', '2003-02-15', 'M', '87.657', '1.83', 'França', 'Estudante');

/*  MOSTRA TODA A TABELA PESSOAS   */
#desc pessoas;
select * from pessoas;

/*  EXCLUINDO A COLUNA PROFISSAO    */
alter table pessoas drop column profissao;
select * from pessoas;