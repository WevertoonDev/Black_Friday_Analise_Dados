SELECT strftime('%Y', v.data_venda) AS 'Ano', c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN categorias c ON c.id_categoria = p.categoria_id
WHERE strftime('%m', v.data_venda) = '11'
GROUP BY Nome_Categoria, "Ano"
ORDER BY 'Ano', Qtd_Vendas ASC
;

SELECT strftime('%Y', v.data_venda) AS 'Ano', c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN categorias c ON c.id_categoria = p.categoria_id
WHERE strftime('%m', v.data_venda) = '11'
GROUP BY Nome_Categoria, "Ano"
ORDER BY 'Ano', Qtd_Vendas DESC
;

SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes",COUNT(iv.produto_id) AS Qtd_Vendas
  FROM itens_venda iv
  JOIN vendas v ON v.id_venda = iv.venda_id
  JOIN produtos p ON p.id_produto = iv.produto_id
  JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
  WHERE f.nome = 'NebulaNetworks'
  GROUP BY f.nome, "Ano/Mes"
  ORDER BY "Ano/Mes", Qtd_Vendas
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