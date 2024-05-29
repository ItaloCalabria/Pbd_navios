CREATE TABLE IF NOT EXISTS Navio(
ID_RegistroNavio int PRIMARY key AUTO_INCREMENT,  
RegistroNavio VARCHAR(100),
tamanho int(50),
tripulacao INT(100)
);

CREATE TABLE IF NOT EXISTS TipoNavio(
ID_Categoria int PRIMARY key AUTO_INCREMENT,  
Categoria VARCHAR(100),
Cor CHAR(10),
Carga bit NOT NULL
);

CREATE TABLE IF NOT EXISTS Entrada(
ID_idEntrada int PRIMARY key AUTO_INCREMENT,  
idEntrada VARCHAR(50),
Abastercer bit NOT NULL,
Descarga bit not null,
Hospedagem bit not null
);

CREATE TABLE IF NOT EXISTS Porto(
ID_NomePorto int PRIMARY key AUTO_INCREMENT,  
NomePorto VARCHAR(100),
Capacidade int(100),
Profundidade INT(50)
);

CREATE TABLE IF NOT EXISTS Saida(
ID_idEntrada int not null,  
RegistroNavio VARCHAR(100),
tamanho int(50),
tripulacao INT(100),
FOREIGN KEY (ID_idEntrada) REFERENCES Entrada(ID_idEntrada)
)