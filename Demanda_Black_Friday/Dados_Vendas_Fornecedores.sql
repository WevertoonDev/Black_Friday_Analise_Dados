SELECT f.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
from itens_venda iv
join produtos p on id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
GROUP by Nome_Fornecedor;
