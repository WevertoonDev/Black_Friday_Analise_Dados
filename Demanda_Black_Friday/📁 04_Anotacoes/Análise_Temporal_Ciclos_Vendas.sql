SELECT strftime('%Y',data_venda) from vendas LIMIT 5;

SELECT DISTINCT(strftime('%Y', data_venda)) as Ano FROM vendas
ORDER by Ano;

SELECT strftime('%Y', data_venda) as Ano, COUNT(id_venda) as Total_Vendas
from vendas
GROUP by Ano
ORDER by Ano;

SELECT strftime('%Y', data_venda) as Ano, strftime('%m',data_venda) as Mes, COUNT(id_venda) as Total_Vendas
from vendas
GROUP by Ano, Mes
ORDER by Ano;