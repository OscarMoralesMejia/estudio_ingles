DROP TABLE IF EXISTS verbos_irregulares;
CREATE TABLE IF NOT EXISTS verbos_irregulares (
  idTabla int primary key AUTO_INCREMENT not null, 
  verbo varchar(50),
  pasado varchar(50),
  participio varchar(50),
  traduccion varchar(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*reemplace ceros , converti las columnas a numeros sin comas en el excel */
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.3/Uploads/3_velocidad_por_provincia.csv'
INTO TABLE `verbos_irregulares` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\r\n' IGNORE 1
LINES (verbo,	pasado,	participio,	traduccion);