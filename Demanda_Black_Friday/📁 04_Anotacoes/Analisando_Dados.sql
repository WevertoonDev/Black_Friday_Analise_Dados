SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", COUNT(iv.produto_id) as Qtd_Vendas 
  FROM itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  join produtos p on p.id_produto = iv.produto_id
  join fornecedores f on f.id_fornecedor = p.fornecedor_id
  WHERE f.nome = 'NebulaNetworks'
  GROUP by f.nome, "Ano/Mes"
  ORDER by "Ano/Mes", Qtd_Vendas
;