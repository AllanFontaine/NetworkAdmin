use woodyToys;

INSERT INTO Types(nom_type)
VALUES
  ('woodenToy'),
  ('woodenBox');
  
INSERT INTO Objet(objet_nom,type_id)
VALUES
  ('statuette', 1),
  ('batte', 1),
  ('épée', 1),
  ('stratego', 2),
  ('Jenga', 2),
  ('jeux de dame', 2);