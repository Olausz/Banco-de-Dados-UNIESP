select
	estado,
	avg(valor_compra) as media_valor_compra
from vendas v 
inner join usuarios u on v.cod_usuario = u.cod_usuario 
where estado like '%Pessoa'
group by estado, valor_compra
having valor_compra > 10000
order by media_valor_compra desc;