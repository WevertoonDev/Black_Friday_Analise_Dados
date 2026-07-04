SELECT strftime('%Y/%m', v.data_venda) as "Ano/Mes", COUNT(iv.produto_id) as Qtd_Vendas 
  FROM itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  join produtos p on p.id_produto = iv.produto_id
  join fornecedores f on f.id_fornecedor = p.fornecedor_id
  WHERE f.nome = 'NebulaNetworks'
  GROUP by f.nome, "Ano/Mes"
  ORDER by "Ano/Mes", Qtd_Vendas
;
SELECT strftime('%Y/%m', v.data_venda) as 'Ano/Mes', COUNT(iv.produto_id) as Qtd_Vendas 
  FROM itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  join produtos p on p.id_produto = iv.produto_id
  join fornecedores f on f.id_fornecedor = p.fornecedor_id
  WHERE f.nome = 'NebulaNetworks'
  GROUP by f.nome, "Ano/Mes"
  ORDER by "Ano/Mes", Qtd_Vendas
;

-- Consulta para encontrar os livros mais emprestados no último ano
SELECT 
    l.titulo AS TituloLivro,               -- Seleciona o título do livro
    COUNT(e.id_livro) AS QtdEmprestimos    -- Conta o número de vezes que cada livro foi emprestado
FROM 
    emprestimos e
    JOIN livros l ON e.id_livro = l.id     -- Junta a tabela de empréstimos com a tabela de livros
WHERE 
    e.data_emprestimo >= '2022-01-01'      -- Filtra os empréstimos do último ano
GROUP BY 
    l.titulo                               -- Agrupa os resultados pelo título do livro
ORDER BY 
    QtdEmprestimos DESC                    -- Ordena os livros pelo número de empréstimos, do mais ao menos emprestado
LIMIT 10;                                  -- Limita os resultados aos 10 livros mais emprestados