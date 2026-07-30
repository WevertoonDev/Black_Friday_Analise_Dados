SELECT strftime('%Y/%m', v.data_venda) as 'Ano/Mes' ,f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
from itens_venda iv
join vendas v on id_venda = iv.venda_id
join produtos p on id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
GROUP by Nome_Fornecedor, 'Ano/Mes'
ORDER by Nome_Fornecedor
;

SELECT strftime('%Y/%m', v.data_venda) AS 'Ano/Mes', f.nome AS Nome_Fornecedor, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
GROUP BY Nome_Fornecedor, "Ano/Mes"
ORDER BY Nome_Fornecedor
;