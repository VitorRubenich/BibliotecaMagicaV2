CREATE DATABASE BibliotecaMagica;

USE BibliotecaMagica;

CREATE TABLE Usuario (
Id_usuario INTEGER PRIMARY KEY auto_increment,
Email VARCHAR(50),
Nome VARCHAR(80),
Data_nasc DATETIME
);

CREATE TABLE Conquista (
Id_conquistas INTEGER PRIMARY KEY AUTO_INCREMENT,
Titulo_conquista VARCHAR(30),
Condição VARCHAR(50)
);

CREATE TABLE Estatistica (
Id_Estatistica INTEGER PRIMARY KEY AUTO_INCREMENT,
Titulo_estatistica VARCHAR(30),
Quantidade VARCHAR(30)
);

CREATE TABLE Atributo (
Id_atributo INTEGER PRIMARY KEY AUTO_INCREMENT,
Pontos VARCHAR(10),
Atributo VARCHAR(10)
);

CREATE TABLE Genero (
Id_genero INTEGER PRIMARY KEY AUTO_INCREMENT,
Genero VARCHAR(20),
Id_atributo INTEGER,
FOREIGN KEY(Id_atributo) REFERENCES Atributo (Id_atributo)
);

CREATE TABLE Login (
Id_login INTEGER PRIMARY KEY AUTO_INCREMENT,
Senha VARCHAR(50),
Login VARCHAR(30),
Id_usuario INTEGER,
FOREIGN KEY(Id_usuario) REFERENCES Usuario (Id_usuario)
);

CREATE TABLE Perfil (
Id_perfil INTEGER PRIMARY KEY AUTO_INCREMENT,
NomeDeUsuario VARCHAR(50),
Id_login INTEGER,
FOREIGN KEY(Id_login) REFERENCES Login (Id_login)
);

CREATE TABLE Itens_perfil (
Id_itens INTEGER PRIMARY KEY AUTO_INCREMENT,
Id_perfil INTEGER,
Id_conquistas INTEGER,
Id_Estatistica INTEGER,
Id_atributo INTEGER,
FOREIGN KEY(Id_perfil) REFERENCES Perfil (Id_perfil),
FOREIGN KEY(Id_conquistas) REFERENCES Conquista (Id_conquistas),
FOREIGN KEY(Id_Estatistica) REFERENCES Estatistica (Id_Estatistica),
FOREIGN KEY(Id_atributo) REFERENCES Atributo (Id_atributo)
);

CREATE TABLE Livro (
Id_livro INTEGER PRIMARY KEY,
Autor VARCHAR(80),
Titulo VARCHAR(50),
Id_genero INTEGER,
FOREIGN KEY(Id_genero) REFERENCES Genero (Id_genero)
);

CREATE TABLE Itens_leitura (
Id_livro INTEGER,
Id_perfil INTEGER,
FOREIGN KEY(Id_livro) REFERENCES Livro (Id_livro),
FOREIGN KEY(Id_perfil) REFERENCES Perfil (Id_perfil)
);