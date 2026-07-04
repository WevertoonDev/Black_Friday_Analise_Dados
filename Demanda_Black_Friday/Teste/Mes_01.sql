SELECT strftime('%Y',data_venda) from vendas LIMIT 5;
SELECT strftime('%m',data_venda) FROM vendas LIMIT 5;

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

SELECT strftime('%Y', data_venda) as Ano, strftime('%m',data_venda) as Mes, COUNT(id_venda) as Total_Vendas
from vendas
WHERE Mes = '01' or Mes = '11' or Mes = '12'
GROUP by Ano, Mes
ORDER by Ano;

SELECT strftime('%Y', data_venda) as Ano, strftime('%m',data_venda) as Mes, COUNT(id_venda) as Total_Vendas
from vendas
WHERE Mes = '01' or Mes = '01' or Mes = '01'
GROUP by Ano, Mes
ORDER by Ano;
