use woodyToys;

CREATE TABLE Types(
  type_id INT AUTO_INCREMENT NOT NULL,
  nom_type VARCHAR(100) NOT NULL,
  PRIMARY KEY(type_id)
);

CREATE TABLE Objet(
  objet_id INT AUTO_INCREMENT NOT NULL,
  objet_nom VARCHAR(200) NOT NULL,
  type_id INT NOT NULL,
  PRIMARY KEY(objet_id),
  FOREIGN KEY(type_id)
    REFERENCES Types(type_id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);