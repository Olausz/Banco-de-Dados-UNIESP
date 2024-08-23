INSERT INTO usuarios (nome, idade) VALUES ('Maria Oliveira', 45);
INSERT INTO produtos (nome_produto) VALUES ('Notebook');
INSERT INTO faixas_etarias (descricao, idade_min, idade_max) VALUES ('Entre 41 e 50 anos', 41, 50);
INSERT INTO compras (id_usuario, id_produto) VALUES (1, 1);

 
SELECT * FROM usuarios;

SELECT * FROM produtos;
 
SELECT * FROM faixas_etarias;
 
SELECT * FROM compras;
