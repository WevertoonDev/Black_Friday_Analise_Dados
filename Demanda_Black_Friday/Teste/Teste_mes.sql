SELECT SUM(Qtd_Vendas)
from (
  SELECT strftime('%Y/%m', v.data_venda) as 'Ano/Mes', f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas 
  FROM itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  join produtos p on p.id_produto = iv.produto_id
  join fornecedores f on f.id_fornecedor = p.fornecedor_id
  GROUP by Nome_Fornecedor, 'Ano/Mes'
  ORDER by Nome_Fornecedor
  )
  ;

SELECT strftime('%Y/%m', v.data_venda) AS 'Ano', c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN categorias c ON c.id_categoria = p.categoria_id
WHERE strftime('%m', v.data_venda) = '11'
GROUP BY Nome_Categoria, 'Ano'
ORDER BY 'Ano', Qtd_Vendas DESC;

SELECT strftime('%Y/%m', v.data_venda) AS 'Ano/Mes', c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN categorias c ON c.id_categoria = p.categoria_id
WHERE strftime('%m', v.data_venda) = '11'
GROUP BY Nome_Categoria, 'Ano/Mes'
ORDER BY 'Ano/mes', Qtd_Vendas 
