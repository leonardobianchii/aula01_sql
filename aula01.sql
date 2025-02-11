

CREATE TABLE PAIS (
id_pais NUMBER,
nome_pais VARCHAR2 (30)
);

ALTER TABLE PAIS ADD PRIMARY KEY(id_pais);

CREATE TABLE ESTADO (
id_estado NUMBER,
nome_estado VARCHAR2 (30),
id_pais NUMBER
);

ALTER TABLE ESTADO ADD PRIMARY KEY (id_estado);

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais);

CREATE TABLE CIDADE (
id_cidade NUMBER,
nome_cidade VARCHAR2(40),
id_estado NUMBER
);


ALTER TABLE CIDADE ADD PRIMARY KEY (id_cidade);

ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE FOREIGN KEY (id_estado) REFERENCES ESTADO(id_estado);

CREATE TABLE BAIRRO (
id_bairro NUMBER,
nome_bairro VARCHAR2(40),
id_cidade NUMBER
);

ALTER TABLE BAIRRO ADD PRIMARY KEY (id_bairro);

ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO FOREIGN KEY (id_cidade) REFERENCES CIDADE(id_cidade);

CREATE TABLE endereco_cliente (
id_endereco NUMBER,
cep NUMBER,
logradouro VARCHAR2(50),
numero NUMBER,
referencia VARCHAR2(50),
id_bairro NUMBER
);

ALTER TABLE endereco_cliente ADD PRIMARY KEY (id_endereco);

ALTER TABLE endereco_cliente ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro) REFERENCES BAIRRO (id_bairro);

INSERT INTO PAIS (id_pais, nome_pais) VALUES (1, 'Brasil');
INSERT INTO PAIS (id_pais, nome_pais) VALUES (2, 'Noruega');
INSERT INTO PAIS (id_pais, nome_pais) VALUES (3, 'Japão');
INSERT INTO PAIS (id_pais, nome_pais) VALUES (4, 'Argentina');
INSERT INTO PAIS (id_pais, nome_pais) VALUES (5, 'Canadá');


INSERT INTO ESTADO (id_estado, nome_estado, id_pais) VALUES (1, 'São Paulo', 1);
INSERT INTO ESTADO (id_estado, nome_estado, id_pais) VALUES (2, 'Rio de Janeiro', 1);
INSERT INTO ESTADO (id_estado, nome_estado, id_pais) VALUES (3, 'Oslo', 2);
INSERT INTO ESTADO (id_estado, nome_estado, id_pais) VALUES (4, 'Hokkaido', 3);
INSERT INTO ESTADO (id_estado, nome_estado, id_pais) VALUES (5, 'Quebec', 5);

INSERT INTO CIDADE (id_cidade, nome_cidade, id_estado) VALUES (1, 'São Paulo', 1);
INSERT INTO CIDADE (id_cidade, nome_cidade, id_estado) VALUES (2, 'Rio de Janeiro', 2);
INSERT INTO CIDADE (id_cidade, nome_cidade, id_estado) VALUES (3, 'Oslo', 3);
INSERT INTO CIDADE (id_cidade, nome_cidade, id_estado) VALUES (4, 'Sapporo', 4);
INSERT INTO CIDADE (id_cidade, nome_cidade, id_estado) VALUES (5, 'Montreal', 5);

INSERT INTO BAIRRO (id_bairro, nome_bairro, id_cidade) VALUES (1, 'Centro', 1);
INSERT INTO BAIRRO (id_bairro, nome_bairro, id_cidade) VALUES (2, 'Copacabana', 2);
INSERT INTO BAIRRO (id_bairro, nome_bairro, id_cidade) VALUES (3, 'Grünerløkka', 3);
INSERT INTO BAIRRO (id_bairro, nome_bairro, id_cidade) VALUES (4, 'Chuo-ku', 4);
INSERT INTO BAIRRO (id_bairro, nome_bairro, id_cidade) VALUES (5, 'Plateau', 5);

INSERT INTO endereco_cliente (id_endereco, cep, logradouro, numero, referencia, id_bairro) VALUES (1, '01001000', 'Rua Augusta', 100, 'Próximo ao metrô', 1);
INSERT INTO endereco_cliente (id_endereco, cep, logradouro, numero, referencia, id_bairro) VALUES (2, '22050002', 'Av. Atlântica', 200, 'De frente para a praia', 2);
INSERT INTO endereco_cliente (id_endereco, cep, logradouro, numero, referencia, id_bairro) VALUES (3, '0150', 'Karl Johans gate', 15, 'Perto do palácio real', 3);
INSERT INTO endereco_cliente (id_endereco, cep, logradouro, numero, referencia, id_bairro) VALUES (4, '0600061', 'Odori Park', 50, 'Ao lado do shopping', 4);
INSERT INTO endereco_cliente (id_endereco, cep, logradouro, numero, referencia, id_bairro) VALUES (5, '1023106', 'Rue Saint-Denis', 75, 'Próximo à universidade', 5);


select * from pais;
select * from bairro;
select * from cidade;
select * from estado;
select * from endereco_cliente;
