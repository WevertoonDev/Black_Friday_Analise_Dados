SELECT * from categorias;
SELECT * from fornecedores;
SELECT * FROM marcas;
SELECT * from produtos;
SELECT * from vendas;
SELECT * from clientes;
SELECT * from itens_venda;

SELECT COUNT(*) from produtos;
SELECT COUNT(*) AS Vendas_Totais from vendas;
SELECT COUNT(*) AS Qtd_Categorias from categorias;
SELECT COUNT(*) AS Qtd_Clientes from clientes;
SELECT COUNT(*) AS Qtd_Fornecedores from fornecedores;
SELECT COUNT(*) as Qtd_Marcas from marcas;
SELECT COUNT(*) as Qtd_Produtos from produtos;

SELECT * from vendas LIMIT 5;
SELECT * from fornecedores LIMIT 5;
SELECT * from produtos LIMIT 5;
SELECT * from itens_venda LIMIT 5; 
SELECT * from clientes LIMIT 5; 
SELECT * from categorias LIMIT 5;
SELECT * from marcas LIMIT 5;