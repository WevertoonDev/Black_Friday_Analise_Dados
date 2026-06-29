SELECT * from categorias;
SELECT * from produtos;
SELECT * from marcas;
SELECT * from fornecedores;
SELECT * from itens_venda;
SELECT * FROM clientes;
SELECT * FROM vendas

SELECT COUNT(*) from produtos;
SELECT COUNT(*) as Vendas_Totais from vendas;

SELECT COUNT(*) as Qtd, 'Categorias' as Tabela FROM categorias
UNION ALL
SELECT COUNT(*) as Qtd, 'Clientes' as Tabela FROM clientes
UNION ALL
SELECT COUNT(*) as Qtd, 'Fornecedores' as Tabela FROM fornecedores
UNION ALL
SELECT COUNT(*) as Qtd, 'ItensVenda' as Tabela FROM itens_venda
UNION ALL
SELECT COUNT(*) as Qtd, 'Marcas' as Tabela FROM marcas
UNION ALL
SELECT COUNT(*) as Qtd, 'Produtos' as Tabela FROM produtos
UNION ALL
SELECT COUNT(*) as Qtd, 'Vendas' as Tabela FROM vendas;

SELECT * from vendas LIMIT 5;
SELECT * from categorias LIMIT 5;
SELECT * from clientes LIMIT 5;
