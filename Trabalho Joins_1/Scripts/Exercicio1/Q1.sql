SELECT 
    u.cod_usuario, 
    u.cidade, 
    u.estado, 
    p.nome_produto, 
    c.data_compra, 
    c.forma_pagamento, 
    c.quantidade, 
    c.valor_compra, 
    c.data_prevista_entrega, 
    c.data_entrega
FROM 
    Compras c
JOIN 
    Usuarios u ON c.cod_usuario = u.cod_usuario
JOIN 
    Produtos p ON c.cod_produto = p.cod_produto;
