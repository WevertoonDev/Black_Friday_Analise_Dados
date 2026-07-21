SELECT strftime('%Y/%m',data_venda) from vendas LIMIT 5;

SELECT DISTINCT(strftime('%Y', data_venda)) AS Ano from vendas
ORDER by Ano;

SELECT strftime('%Y', data_venda) as Ano, COUNT(id_venda) as Total_Vendas 
from vendas
GROUP by Ano
order by Ano;

SELECT strftime('%Y%m', data_venda) as Ano, COUNT(id_venda) as Total_Vendas 
from vendas
GROUP by Ano
order by Ano/Mes;

SELECT strftime('%Y', data_venda) as Ano, strftime('%m',data_venda) as Mes, COUNT(id_venda) as Total_Vendas 
from vendas
GROUP by Ano, Mes
order by Ano;