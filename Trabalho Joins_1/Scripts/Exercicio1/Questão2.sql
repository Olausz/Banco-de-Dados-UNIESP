with CompraPorUsuario as (
	select 
		u.cod_usuario
		u.faixa_etaria,
		coalesce(SUM(c.valor_compra), 0) as total_compras
	from usuarios u
	left join compras c on u.cod_usuario = c.cod_usuario
	group by
		u.cod_usuario, u.faixa_etaria
);
MediaCompraPorFaixa as (
	faixa_etaria,
	round(avg(total_compras)::numeric, 2) as media_compras
	from CompraPorUsuario
	group by
		faixa_etaria
)
select 
	faixa_etaria
	media_compras
from MediaCompraPorFaixa
order by
	faixa_etaria;
	


	