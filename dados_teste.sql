USE gestao_condominial;


-- ==========================================
-- CONDOMÍNIOS
-- ==========================================

INSERT INTO condominios
(nome, endereco, telefone, email)
VALUES
('Residencial Jardim das Flores', 'Rua das Flores, 100', '(85) 3000-1001', 'jardimflores@email.com'),
('Residencial Parque Verde', 'Av. Central, 250', '(85) 3000-1002', 'parqueverde@email.com'),
('Condomínio Sol Nascente', 'Rua do Sol, 350', '(85) 3000-1003', 'solnascente@email.com'),
('Residencial Bela Vista', 'Av. Bela Vista, 400', '(85) 3000-1004', 'belavista@email.com'),
('Condomínio Morada do Lago', 'Rua do Lago, 500', '(85) 3000-1005', 'moradadolago@email.com'),
('Residencial Fortaleza', 'Av. Fortaleza, 600', '(85) 3000-1006', 'residencialfortaleza@email.com'),
('Condomínio Vila Serena', 'Rua Serena, 700', '(85) 3000-1007', 'vilaserena@email.com'),
('Residencial Bosque Azul', 'Rua do Bosque, 800', '(85) 3000-1008', 'bosqueazul@email.com'),
('Condomínio Portal das Árvores', 'Av. das Árvores, 900', '(85) 3000-1009', 'portalarvores@email.com'),
('Residencial Parque das Águas', 'Rua das Águas, 1000', '(85) 3000-1010', 'parquedasaguas@email.com'),
('Condomínio Vista Mar', 'Av. Beira Mar, 1100', '(85) 3000-1011', 'vistamar@email.com'),
('Residencial Novo Horizonte', 'Rua Novo Horizonte, 1200', '(85) 3000-1012', 'novohorizonte@email.com');


-- ==========================================
-- USUÁRIOS
-- ==========================================

INSERT INTO usuarios
(nome, email, senha, tipo_usuario, condominio_id)
VALUES

-- Condomínio 1
('João Silva', 'joao.silva@email.com', '123456', 'MORADOR', 1),
('Maria Oliveira', 'maria.oliveira@email.com', '123456', 'MORADOR', 1),
('Carlos Santos', 'carlos.santos@email.com', '123456', 'SINDICO', 1),
('Ana Costa', 'ana.costa@email.com', '123456', 'FUNCIONARIO', 1),
('Empresa HidroTech', 'hidrotech@email.com', '123456', 'PRESTADOR', 1),

-- Condomínio 2
('Pedro Souza', 'pedro.souza@email.com', '123456', 'MORADOR', 2),
('Juliana Lima', 'juliana.lima@email.com', '123456', 'MORADOR', 2),
('Roberto Alves', 'roberto.alves@email.com', '123456', 'SINDICO', 2),
('Fernanda Rocha', 'fernanda.rocha@email.com', '123456', 'FUNCIONARIO', 2),

-- Condomínio 3
('Lucas Martins', 'lucas.martins@email.com', '123456', 'MORADOR', 3),
('Camila Ferreira', 'camila.ferreira@email.com', '123456', 'MORADOR', 3),
('Marcos Ribeiro', 'marcos.ribeiro@email.com', '123456', 'SINDICO', 3),
('Paula Mendes', 'paula.mendes@email.com', '123456', 'FUNCIONARIO', 3),

-- Condomínio 4
('Rafael Gomes', 'rafael.gomes@email.com', '123456', 'MORADOR', 4),
('Beatriz Cardoso', 'beatriz.cardoso@email.com', '123456', 'MORADOR', 4),
('André Barbosa', 'andre.barbosa@email.com', '123456', 'SINDICO', 4),

-- Condomínio 5
('Gustavo Nunes', 'gustavo.nunes@email.com', '123456', 'MORADOR', 5),
('Larissa Castro', 'larissa.castro@email.com', '123456', 'MORADOR', 5),
('Eduardo Freitas', 'eduardo.freitas@email.com', '123456', 'SINDICO', 5),

-- Condomínio 6
('Bruno Teixeira', 'bruno.teixeira@email.com', '123456', 'MORADOR', 6),
('Amanda Vieira', 'amanda.vieira@email.com', '123456', 'MORADOR', 6),
('Thiago Moreira', 'thiago.moreira@email.com', '123456', 'SINDICO', 6),

-- Condomínio 7
('Felipe Monteiro', 'felipe.monteiro@email.com', '123456', 'MORADOR', 7),
('Carolina Reis', 'carolina.reis@email.com', '123456', 'MORADOR', 7),
('Daniel Carvalho', 'daniel.carvalho@email.com', '123456', 'SINDICO', 7),

-- Condomínio 8
('Henrique Lopes', 'henrique.lopes@email.com', '123456', 'MORADOR', 8),
('Isabela Ramos', 'isabela.ramos@email.com', '123456', 'MORADOR', 8),
('Marcelo Duarte', 'marcelo.duarte@email.com', '123456', 'SINDICO', 8),

-- Condomínio 9
('Diego Azevedo', 'diego.azevedo@email.com', '123456', 'MORADOR', 9),
('Bianca Moura', 'bianca.moura@email.com', '123456', 'MORADOR', 9),
('Rodrigo Farias', 'rodrigo.farias@email.com', '123456', 'SINDICO', 9),

-- Condomínio 10
('Leonardo Pinto', 'leonardo.pinto@email.com', '123456', 'MORADOR', 10),
('Sabrina Melo', 'sabrina.melo@email.com', '123456', 'MORADOR', 10),
('Vinicius Andrade', 'vinicius.andrade@email.com', '123456', 'SINDICO', 10),

-- Condomínio 11
('Matheus Correia', 'matheus.correia@email.com', '123456', 'MORADOR', 11),
('Leticia Fernandes', 'leticia.fernandes@email.com', '123456', 'MORADOR', 11),
('Alexandre Ramos', 'alexandre.ramos@email.com', '123456', 'SINDICO', 11),

-- Condomínio 12
('Gabriel Martins', 'gabriel.martins@email.com', '123456', 'MORADOR', 12),
('Natalia Borges', 'natalia.borges@email.com', '123456', 'MORADOR', 12),
('Ricardo Tavares', 'ricardo.tavares@email.com', '123456', 'SINDICO', 12),

-- Administradores
('Administrador Principal', 'admin@email.com', '123456', 'ADMINISTRADOR', 1),
('Administrador Sistema', 'admin2@email.com', '123456', 'ADMINISTRADOR', 1);


-- ==========================================
-- ÁREAS COMUNS
-- ==========================================

INSERT INTO areas_comuns
(nome, descricao, capacidade, condominio_id)
VALUES

('Salão de Festas', 'Salão para eventos e confraternizações', 80, 1),
('Piscina', 'Área de lazer com piscina', 30, 1),
('Churrasqueira', 'Área com churrasqueira', 20, 1),

('Salão de Festas', 'Espaço para eventos', 100, 2),
('Quadra Esportiva', 'Quadra para esportes', 20, 2),

('Salão de Festas', 'Salão principal', 80, 3),
('Academia', 'Academia do condomínio', 25, 3),

('Churrasqueira', 'Área para confraternizações', 25, 4),
('Piscina', 'Piscina para moradores', 40, 4),

('Salão de Festas', 'Espaço para eventos', 100, 5),
('Playground', 'Área infantil', 30, 5),

('Salão de Festas', 'Espaço para festas', 80, 6),
('Quadra Esportiva', 'Quadra poliesportiva', 20, 6),

('Piscina', 'Piscina principal', 40, 7),
('Churrasqueira', 'Espaço com churrasqueira', 25, 7),

('Salão de Festas', 'Salão para eventos', 100, 8),
('Academia', 'Academia equipada', 30, 8),

('Churrasqueira', 'Área de convivência', 25, 9),
('Piscina', 'Área de lazer', 40, 9),

('Salão de Festas', 'Espaço para festas', 100, 10),
('Playground', 'Área infantil', 30, 10),

('Piscina', 'Piscina do condomínio', 40, 11),
('Salão de Festas', 'Espaço para eventos', 100, 11),

('Churrasqueira', 'Área para confraternizações', 25, 12),
('Quadra Esportiva', 'Quadra poliesportiva', 20, 12);


-- ==========================================
-- CHAMADOS
-- ==========================================

INSERT INTO chamados
(titulo, descricao, categoria, status, usuario_id, condominio_id)
VALUES

('Vazamento no banheiro',
 'Foi identificado um vazamento no banheiro do apartamento.',
 'HIDRAULICA',
 'ABERTO',
 1, 1),

('Lâmpada queimada',
 'Lâmpada do corredor do terceiro andar está queimada.',
 'ELETRICA',
 'EM_ANALISE',
 2, 1),

('Problema no portão',
 'O portão da garagem está apresentando problemas para abrir.',
 'MANUTENCAO',
 'EM_ANDAMENTO',
 6, 2),

('Elevador com problema',
 'O elevador está apresentando falhas durante o funcionamento.',
 'MANUTENCAO',
 'ABERTO',
 7, 2),

('Vazamento na cozinha',
 'Há um vazamento próximo à pia da cozinha.',
 'HIDRAULICA',
 'RESOLVIDO',
 10, 3),

('Problema na iluminação',
 'Uma das lâmpadas da área comum está apagada.',
 'ELETRICA',
 'EM_ANDAMENTO',
 14, 4),

('Ar condicionado quebrado',
 'O ar condicionado do salão de festas não está funcionando.',
 'MANUTENCAO',
 'ABERTO',
 17, 5),

('Interfone sem funcionar',
 'O interfone do apartamento não está funcionando.',
 'ELETRICA',
 'EM_ANALISE',
 20, 6);


-- ==========================================
-- RESERVAS
-- ==========================================

INSERT INTO reservas
(data_reserva, hora_inicio, hora_fim, status, usuario_id, area_id)
VALUES

('2026-09-05', '18:00:00', '22:00:00', 'CONFIRMADA', 1, 1),
('2026-09-12', '14:00:00', '18:00:00', 'CONFIRMADA', 2, 2),
('2026-09-15', '19:00:00', '22:00:00', 'CANCELADA', 6, 4),
('2026-09-20', '10:00:00', '14:00:00', 'CONFIRMADA', 7, 5),
('2026-09-25', '18:00:00', '22:00:00', 'CONFIRMADA', 10, 6);


-- ==========================================
-- VISITANTES
-- ==========================================

INSERT INTO visitantes
(nome, documento, data_visita, hora_entrada, hora_saida, status, usuario_id, condominio_id)
VALUES

('Carlos Henrique', '12345678900', '2026-09-02', '18:00:00', NULL, 'AGENDADO', 1, 1),

('Mariana Alves', '23456789011', '2026-09-03', '19:00:00', '22:00:00', 'SAIU', 2, 1),

('Fernando Lima', '34567890122', '2026-09-05', NULL, NULL, 'AGENDADO', 6, 2),

('Patricia Souza', '45678901233', '2026-09-07', '15:00:00', NULL, 'ENTROU', 7, 2),

('Ricardo Mendes', '56789012344', '2026-09-10', '17:00:00', '20:00:00', 'SAIU', 10, 3);