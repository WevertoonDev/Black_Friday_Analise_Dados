SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
FROM itens_venda iv
join vendas v on v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
WHERE Nome_Fornecedor = 'NebulaNetworks' or Nome_Fornecedor = 'AstroSupply' or Nome_Fornecedor = 'HorizonDistributors'
GROUP by Nome_Fornecedor, "Ano/Mes"
ORDER by "Ano/Mes", Qtd_Vendas
;