/*  
    OSERVAÇÃO GERAL: SEMPRE UTILIZAR LETRAS MINÚSCULAS,
    APESAR DE OPCIONAL PARA OS COMANDOS,
    NOS NOMES (DO BANCO, TABELAS, ETC) É OBRIGATÓRIO
*/

/*  LIMPAR BANCO DE DADOS ANTERIOR    */
#drop database if exists cadastro;

/*  CRIAÇÃO DO NOVO BANCO DE DADOS  */
create database if not exists cadastro default character set utf8 default collate utf8_general_ci;

/*UTILIZAÇÃO DO BANCO DE DADOS*/
use cadastro;

/*CASO NECESSÁRIO DELETAR ALGUMA TABELA, DESCOMENTAR A LINHA ESPERCÍFICA*/
#drop table if exists pessoas;

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

/*  MOSTRA TABELA PESSOAS DE FORMA DESCRITIVA NA ABA RESULTS    */
describe pessoas
