create database indiv;
use indiv;

create table usuario(
idusuario int primary key auto_increment,
nome_usuario varchar(45),
email_usuario varchar(45),
senha_usuario varchar(45)
);

create table coment(
idcoment int primary key auto_increment,
fkusuario int,
foreign key (fkusuario) references usuario(idusuario),
comentario varchar(300)
);

create table questionario(
idquestionario int primary key auto_increment,
fkusuario int,
foreign key (fkusuario) references usuario(idusuario),
questao1 varchar(45),
questao2 varchar(45),
questao3 varchar(45),
questao4 varchar(45),
questao5 varchar(45)
);