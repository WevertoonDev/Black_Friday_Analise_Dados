SELECT * from categorias;
SELECT * from fornecedores;
SELECT * FROM marcas;
SELECT * from produtos;

SELECT COUNT(*) from produtos;
SELECT COUNT(*) AS Vendas_Totais from vendas;
SELECT COUNT(*) AS Qtd_Categorias from categorias;
SELECT COUNT(*) AS Qtd_Clientes from clientes;
SELECT COUNT(*) AS Qtd_Fornecedores from fornecedores;

SELECT * from vendas LIMIT 5;
SELECT * from fornecedores LIMIT 5;
SELECT * from produtos LIMIT 5;
SELECT * from vendas LIMIT 5;