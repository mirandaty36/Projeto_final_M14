SELECT e.* FROM gestao_hospitais.empregados AS e

INSERT INTO empregados (nome, morada, telefone, socio, cc, especialidade, salario, num_ordem) VALUES
( 'João Silva', 'Rua das Flores 12', '912345678', True, '12345678', 'Cardiologia', 2500, 1001),
( 'Maria Costa', 'Av. Central 8', '913456789', True, '12345679', 'Pediatria', 2600, 1002),
( 'Ana Ramos', 'Rua Nova 22', '914567890', False, '12345680', 'Ortopedia', 2400, 1003),
( 'Pedro Lopes', 'Rua do Sol 15', '915678901', True, '12345681', 'Neurologia', 3000, 1004),
( 'Rita Ferreira', 'Av. da Liberdade 88', '916789012', True, '12345682', 'Oncologia', 3100, 1005),
( 'Tiago Nunes', 'Rua Verde 4', '917890123', False, '12345683', 'Dermatologia', 2200, 1006),
( 'Carla Pires', 'Praça Nova 3', '918901234', False, '12345684', 'Ginecologia', 2800, 1007),
( 'José Pinto', 'Rua Mar 7', '919012345', True, '12345685', 'Cirurgia', 3300, 1008),
( 'Helena Rocha', 'Av. Norte 10', '920123456', True, '12345686', 'Psiquiatria', 2700, 1009),
( 'Luís Tavares', 'Rua Sul 2', '921234567', False, '12345687', 'Radiologia', 2600, 1010),
( 'Beatriz Melo', 'Rua Oeste 9', '922345678', True, '12345688', 'Anestesia', 2550, 1011),
( 'Fábio Cruz', 'Rua Este 6', '923456789', True, '12345689', 'Pneumologia', 2400, 1012),
( 'Catarina Dias', 'Av. das Oliveiras 15', '924567890', 'S135', '12345690', 'Urologia', 2650, 1013),
( 'Miguel Rocha', 'Rua das Rosas 5', '925678901', True, '12345691', 'Oftalmologia', 2750, 1014),
( 'Raquel Marques', 'Rua Verde 15', '926789012', False, '12345692', 'Cardiologia', 2550, 1015),
( 'David Faria', 'Av. Sul 20', '927890123', True, '12345693', 'Gastroenterologia', 2900, 1016),
( 'Andreia Lopes', 'Rua Norte 9', '928901234', True, '12345694', 'Ortopedia', 2700, 1017),
( 'Nuno Correia', 'Rua Central 18', '929012345', False, '12345695', 'Neurologia', 3100, 1018),
( 'Carolina Reis', 'Av. Atlântica 7', '930123456', True, '12345696', 'Pediatria', 2650, 1019),
( 'Bruno Almeida', 'Rua das Flores 16', '931234567', True, '12345697', 'Urologia', 2750, 1020);

