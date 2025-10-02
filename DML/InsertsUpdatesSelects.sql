USE CompanhiaArea;

-- INSERTS

-- Pessoas
INSERT INTO Pessoa (nome, documento, endereco, telefone) VALUES
  ('Ana Silva','CPF-00011122233','Rua A, 123, RJ','+55 21 90000-0001'),
  ('Bruno Costa','CPF-00022233344','Av B, 456, SP','+55 11 90000-0002'),
  ('Carla Mendes','CPF-00033344455','Rua C, 789, DF','+55 61 90000-0003'),
  ('Daniel Souza','CPF-00044455566','Av D, 101, RJ','+55 21 90000-0004'),
  ('Eva Lima','CPF-00055566677','Rua E, 202, SP','+55 11 90000-0005');

-- Aeroportos
INSERT INTO Aeroporto (fusoHorario, nome, cidade, pais) VALUES
  ('UTC-03:00','GRU - Governador Andre Franco Montoro','Guarulhos','Brasil'),
  ('UTC-03:00','GIG - Antonio Carlos Jobim','Rio de Janeiro','Brasil'),
  ('UTC-03:00','BSB - Presidente Juscelino Kubitschek','Brasilia','Brasil'),
  ('UTC-05:00','JFK - John F. Kennedy','New York','Estados Unidos'),
  ('UTC+00:00','LHR - Heathrow','London','Reino Unido');

-- Passageiros 
INSERT INTO Passageiro (idPassageiro, nacionalidade, dataNascimento) VALUES
  (1, 'Brasileira', '1995-03-10'),
  (2, 'Brasileira', '1992-07-22'),
  (3, 'Brasileira', '2000-12-01');

-- Funcionarios
INSERT INTO Funcionario (idFuncionario, matricula, cargo, idFuncionario_Aeroporto) VALUES
  (4, 'MAT-1001', 'atendente', 1),
  (5, 'MAT-2001', 'piloto',    2);

-- 5) Aeronaves
INSERT INTO Aeronave (modelo, fabricante, capacidade) VALUES
  ('A320',     'Airbus', 180),
  ('737-800',  'Boeing', 186);

-- 6) Rotas
INSERT INTO Rota (distanciaKm) VALUES
  (400),   -- GRU -> GIG
  (9300);  -- GRU -> JFK

-- 7) Destinos
INSERT INTO Destino (idDestino_Rota, idDestino_Aeroporto, tipo) VALUES
  (1, 1, 'ORIGEM'),
  (1, 2, 'DESTINO');

-- Rota 2: GRU (1) -> JFK (4)
INSERT INTO Destino (idDestino_Rota, idDestino_Aeroporto, tipo) VALUES
  (2, 1, 'ORIGEM'),
  (2, 4, 'DESTINO');

-- 8) Voos
INSERT INTO Voo (idVoo_Rota, idVoo_Aeronave) VALUES
  (1, 1), -- voo domestico GRU-GIG com A320
  (2, 2); -- voo internacional GRU-JFK com 737-800

-- 9) Bilhetes
INSERT INTO Bilhete (idPassageiro, idVoo, lugar) VALUES
  (1, 1, 12),
  (2, 1, 13),
  (3, 2, 7);
  
  -- SELECTS 