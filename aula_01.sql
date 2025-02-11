

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

ALTER TABLE CIDADE ADD PRIMARY KEY (id_bairro);

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

ALTER TABLE endereco_cliente ADD CONSTRAINT fk_bairro FOREIGN KEY (id_bairro) REFERENCES endereco_cliente (id_bairro);

