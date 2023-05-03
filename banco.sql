CREATE DATABASE hive_proj;
USE hive_proj;

CREATE TABLE cad(
	rm INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    senha VARCHAR(45) NOT NULL,
	nm_usuario VARCHAR(50) NOT NULL,
    img VARCHAR(100),
    adm BOOLEAN NOT NULL
)DEFAULT CHARSET = utf8;

CREATE TABLE modalidade(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nm_modalidade VARCHAR(50) NOT NULL
)DEFAULT CHARSET = utf8;

CREATE TABLE equipe(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nm_equipe VARCHAR(50) NOT NULL,
    id_modalidade INT NOT NULL,
    FOREIGN KEY (id_modalidade) REFERENCES modalidade(id)
)DEFAULT CHARSET = utf8;

CREATE TABLE campeonato_individual(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nm_campeonato VARCHAR(50) NOT NULL,
    dt_camp_ind DATE,
    id_modalidade INT NOT NULL,
    FOREIGN KEY (id_modalidade) REFERENCES modalidade(id)
)DEFAULT CHARSET = utf8;

CREATE TABLE campeonato_individual_inscricao(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rm_cadastro INT NOT NULL,
    FOREIGN KEY (rm_cadastro) REFERENCES cad(rm),
    id_camp_ind INT NOT NULL,
    FOREIGN KEY (id_camp_ind) REFERENCES campeonato_individual(id)
)DEFAULT CHARSET = utf8;
	id INT NOT NULL AUTO_INCREMENT,
    rm_cadastro INT NOT NULL AUTO_INCREMENT,
    id_campeonato_ind INT NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (rm_cadastro) REFERENCES cadastro(rm),
    FOREIGN KEY (id_campeonato_ind) REFERENCES campeonato_individual(id)
)DEFAULT CHARSET = utf8;

CREATE TABLE campeonato_equipe(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nm_campeonato VARCHAR(50) NOT NULL,
    dt_camp_equi DATE,
    id_modalidade INT NOT NULL,
    FOREIGN KEY (id_modalidade) REFERENCES modalidade(id)
)DEFAULT CHARSET = utf8;

CREATE TABLE campeonato_equipe_inscricao(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rm_cadastro INT NOT NULL,
    FOREIGN KEY (rm_cadastro) REFERENCES cad(rm),
    id_camp_equi INT NOT NULL,
    FOREIGN KEY (id_camp_equi) REFERENCES campeonato_equipe(id)
)DEFAULT CHARSET = utf8;
