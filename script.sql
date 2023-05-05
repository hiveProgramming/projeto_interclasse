CREATE DATABASE hive_proj;
USE hive_proj;

CREATE TABLE cad(
	rm VARCHAR(5) PRIMARY KEY NOT NULL,
    senha VARCHAR(45) NOT NULL,
	nm_usuario VARCHAR(50) NOT NULL,
    img VARCHAR(100),
    adm BOOLEAN NOT NULL DEFAULT false
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

CREATE TABLE jogador_equipe(
    rm_cadastro VARCHAR(5) NOT NULL,
    id_equipe INT NOT NULL
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
    rm_cadastro VARCHAR(5) NOT NULL,
    FOREIGN KEY (rm_cadastro) REFERENCES cad(rm),
    id_camp_ind INT NOT NULL,
    FOREIGN KEY (id_camp_ind) REFERENCES campeonato_individual(id)
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
    rm_cadastro VARCHAR(5) NOT NULL,
    FOREIGN KEY (rm_cadastro) REFERENCES cad(rm),
    id_camp_equi INT NOT NULL,
    FOREIGN KEY (id_camp_equi) REFERENCES campeonato_equipe(id)
)DEFAULT CHARSET = utf8;

INSERT INTO cad (rm, senha, nm_usuario, img, adm) VALUES ('04013', 'senhaforte222', 'Pedro Luis de Alencar Ribeiro', 'url', true);
INSERT INTO cad (rm, senha, nm_usuario, img, adm) VALUES ('04023', 'senhaforte222', 'Giovanna Nunes de Oliveira', 'url', false);
INSERT INTO cad (rm, senha, nm_usuario, img, adm) VALUES ('04108', 'senhaforte222', 'Hector Vieira Saldivar', 'url', false);

INSERT INTO modalidade VALUES (default, 'Vôleibol');
INSERT INTO modalidade VALUES (default, 'Futsal');
INSERT INTO modalidade VALUES (default, 'Tênis de Mesa');
INSERT INTO modalidade VALUES (default, 'Basquete');
INSERT INTO modalidade VALUES (default, 'League Of Legends');
INSERT INTO modalidade VALUES (default, 'Counter Strike');
INSERT INTO modalidade VALUES (default, 'Valorant');
INSERT INTO modalidade VALUES (default, 'FIFA');
INSERT INTO equipe VALUES (default, '1DS Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '1DS Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '1DS Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '1DS Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, 'Tênis de Mesa - Masculino', 3);
INSERT INTO equipe VALUES (default, 'Tênis de Mesa - Feminino', 3);
INSERT INTO equipe VALUES (default, '1DS Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '1DS Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '1DS League Of Legends', 5);
INSERT INTO equipe VALUES (default, '1DS Counter Strike', 6);
INSERT INTO equipe VALUES (default, '1DS Valorant', 7);
INSERT INTO equipe VALUES (default, 'FIFA', 8);
INSERT INTO equipe VALUES (default, '2DS Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '2DS Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '2DS Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '2DS Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '2DS Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '2DS Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '2DS League Of Legends', 5);
INSERT INTO equipe VALUES (default, '2DS Counter Strike', 6);
INSERT INTO equipe VALUES (default, '2DS Valorant', 7);
INSERT INTO equipe VALUES (default, '3DS Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '3DS Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '3DS Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '3DS Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '3DS Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '3DS Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '3DS League Of Legends', 5);
INSERT INTO equipe VALUES (default, '3DS Counter Strike', 6);
INSERT INTO equipe VALUES (default, '3DS Valorant', 7);
INSERT INTO equipe VALUES (default, '1MAD Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '1MAD Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '1MAD Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '1MAD Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '1MAD Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '1MAD Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '1MAD League Of Legends', 5);
INSERT INTO equipe VALUES (default, '1MAD Counter Strike', 6);
INSERT INTO equipe VALUES (default, '1MAD Valorant', 7);
INSERT INTO equipe VALUES (default, '2MAD Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '2MAD Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '2MAD Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '2MAD Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '2MAD Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '2MAD Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '2MAD League Of Legends', 5);
INSERT INTO equipe VALUES (default, '2MAD Counter Strike', 6);
INSERT INTO equipe VALUES (default, '2MAD Valorant', 7);
INSERT INTO equipe VALUES (default, '3MAD Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '3MAD Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '3MAD Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '3MAD Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '3MAD Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '3MAD Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '3MAD League Of Legends', 5);
INSERT INTO equipe VALUES (default, '3MAD Counter Strike', 6);
INSERT INTO equipe VALUES (default, '3MAD Valorant', 7);
INSERT INTO equipe VALUES (default, '1JODI Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '1JODI Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '1JODI Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '1JODI Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '1JODI Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '1JODI Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '1JODI League Of Legends', 5);
INSERT INTO equipe VALUES (default, '1JODI Counter Strike', 6);
INSERT INTO equipe VALUES (default, '1JODI Valorant', 7);
INSERT INTO equipe VALUES (default, '2JODI Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '2JODI Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '2JODI Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '2JODI Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '2JODI Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '2JODI Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '2JODI League Of Legends', 5);
INSERT INTO equipe VALUES (default, '2JODI Counter Strike', 6);
INSERT INTO equipe VALUES (default, '2JODI Valorant', 7);
INSERT INTO equipe VALUES (default, '3JODI Vôleibol - Masculino', 1);
INSERT INTO equipe VALUES (default, '3JODI Vôleibol - Feminino', 1);
INSERT INTO equipe VALUES (default, '3JODI Futsal - Masculino', 2);
INSERT INTO equipe VALUES (default, '3JODI Futsal - Feminino', 2);
INSERT INTO equipe VALUES (default, '3JODI Basquete - Masculino', 4);
INSERT INTO equipe VALUES (default, '3JODI Basquete - Feminino', 4);
INSERT INTO equipe VALUES (default, '3JODI League Of Legends', 5);
INSERT INTO equipe VALUES (default, '3JODI Counter Strike', 6);
INSERT INTO equipe VALUES (default, '3JODI Valorant', 7);

INSERT INTO campeonato_individual VALUES (default, 'Tênis de Mesa - Masculino', '', 3);
INSERT INTO campeonato_individual VALUES (default, 'Tênis de Mesa - Feminino', '', 3);
INSERT INTO campeonato_individual VALUES (default, 'FIFA', '', 8);

INSERT INTO campeonato_equipe VALUES (default, 'Vôleibol - Masculino', '', 1);
INSERT INTO campeonato_equipe VALUES (default, 'Vôleibol - Feminino', '', 1);
INSERT INTO campeonato_equipe VALUES (default, 'Futsal - Masculino', '', 2);
INSERT INTO campeonato_equipe VALUES (default, 'Futsal - Feminino', '', 2);
INSERT INTO campeonato_equipe VALUES (default, 'Basquete - Maculino', '', 4);
INSERT INTO campeonato_equipe VALUES (default, 'Basquete - Feminino', '', 4);
INSERT INTO campeonato_equipe VALUES (default, 'League Of Legends', '', 5);
INSERT INTO campeonato_equipe VALUES (default, 'Counter Strike', '', 6);
INSERT INTO campeonato_equipe VALUES (default, 'Valorant', '', 7);