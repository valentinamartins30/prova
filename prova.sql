ETAPA 1:

CREATE TABLE aeronaves (
id serial PRIMARY KEY,
modelo VARCHAR(150) NOT NULL,
codigo_cauda VARCHAR(10) UNIQUE not null,
capacidade INT not null check (capacidade > 0) 
);

CREATE TABLE pilotos (
id serial PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
codigo_anac VARCHAR(6) UNIQUE not null,
horas_voo INT not null check (horas_voo >= 0) 
);

CREATE TABLE voos (
id serial PRIMARY KEY,
aeronave_id int not null,
foreign key (aeronave_id)
REFERENCES aeronaves(id),
piloto_id int not null,
foreign key (piloto_id)
references pilotos(id),
numero_voo VARCHAR(150) NOT NULL,
origem varchar (150) not null,
destino VARCHAR(150) not null,
data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status varchar(150) DEFAULT 'Agendado' CHECK (status in ('Agendado', 'Em voo', 'Concluido', 'Cancelado'))
);


CREATE TABLE passageiros (
id serial PRIMARY KEY,
nome VARCHAR (150) not null,
cpf varchar (11) unique not null,
email varchar (150) unique not null
);

CREATE TABLE passagens (
id serial PRIMARY KEY,
voo_id int not null,
foreign key (voo_id)
REFERENCES voos(id),
passageiro_id int not null,
foreign key (passageiro_id)
references passageiros(id),
assento VARCHAR(4) NOT NULL,
classe varchar(150) DEFAULT 'Economica' CHECK (classe in ('Economica', 'Executiva')),
valor decimal(10,2) not null check (valor > 0)
);


ETAPA 2:

INSERT INTO aeronaves (modelo, codigo_cauda,capacidade) VALUES
('aviao turma da monica', 'ABC-123','700'),
('aviao gol', 'EFG-456','1000'),
('aviao azul', 'HIJ-789','200'),
('aviao emirados arabes', 'OPI-333','100'),
('aviao latam', 'POC-123','135')

INSERT INTO pilotos (nome, codigo_anac,horas_voo) VALUES
('Lucca', '123456','5'),
('Madu', '789102','2'),
('Valen', '465789','1'),
('Isa', '465769','10'),
('Deizi', '234567','7')

insert into passageiros (nome, cpf, email) VALUES
('Willer','12345678902','willer@gmail.com'),
('Amanda','46537892677','amanda@gmail.com'),
('jairo','8574639205','jairo@gmail.com'),
('duda','09876543213','duda@gmail.com'),
('mirela','98574630298','mirela@gmail.com')

insert into voos (aeronave_id, piloto_id, numero_voo, origem, destino) VALUES
(1,5,'123','São Paulo','Recife'),
(2,6,'456','Miami','Brasília'),
(3,7,'789','Florianópolis','Porto Rico'),
(4,8,'321','México','Amapá'),
(5,9,'999','Londres','Porto Alegre')

insert into passagens (voo_id, passageiro_id, assento, classe, valor) VALUES
(7,1,'13B','Economica','300.50'),
(8,2,'59D','Economica','450.80'),
(9,3,'40A','Executiva','700.00'),
(10,4,'7A','Executiva','1000.00'),
(11,5,'38F','Economica','300.00')

ETAPA 3: 

ETAPA 4: 
CREATE VIEW vw_painel_aeroporto AS
SELECT 
	v.numero AS numero_voo
	v.data AS data_hora
	v.origem AS 
    
FROM 
   
JOIN 

ORDER BY 
    