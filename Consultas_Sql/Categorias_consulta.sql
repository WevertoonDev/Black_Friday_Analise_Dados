SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
FROM itens_venda iv
join vendas v on v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
WHERE Nome_Fornecedor = 'NebulaNetworks' or Nome_Fornecedor = 'AstroSupply' or Nome_Fornecedor = 'HorizonDistributors'
GROUP by Nome_Fornecedor, "Ano/Mes"
ORDER by "Ano/Mes", Qtd_Vendas 
;

SELECT "Ano/Mes",
SUM(case when Nome_Fornecedor = 'NebulaNetworks' then Qtd_Vendas ELSE 0 end) as Qtd_Vendas_NebulaNetworks,
SUM(case when Nome_Fornecedor = 'HorizonDistributors' then Qtd_Vendas ELSE 0 end) as Qtd_Vendas_HorizonDistributors,
SUM(case when Nome_Fornecedor = 'AstroSupply' then Qtd_Vendas ELSE 0 end) as Qtd_Vendas_AstroSupply
from(
  SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
  FROM itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  JOIN produtos p ON p.id_produto = iv.produto_id
  join fornecedores f on f.id_fornecedor = p.fornecedor_id
  WHERE Nome_Fornecedor = 'NebulaNetworks' or Nome_Fornecedor = 'AstroSupply' or Nome_Fornecedor = 'HorizonDistributors'
  GROUP by Nome_Fornecedor, "Ano/Mes"
  ORDER by "Ano/Mes", Qtd_Vendas 
  )
  GROUP by "Ano/Mes"
  ;
  
SELECT c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN categorias c ON c.id_categoria = p.categoria_id
GROUP BY Nome_Categoria
ORDER BY Qtd_Vendas 
;