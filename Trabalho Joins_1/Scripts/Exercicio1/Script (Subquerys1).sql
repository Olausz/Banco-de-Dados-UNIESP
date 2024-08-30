select 
	c.cod_usuario,
	p.nome_produto,]
	c.data_compra
from public.produtos p 
join compras c
on p.cod_produto = c.cod_produto
	where data_compra = (
		select max(c.data_compra)
		from compras c2
		where extract(year from c2.data_compra::date) < 2023
	
	);