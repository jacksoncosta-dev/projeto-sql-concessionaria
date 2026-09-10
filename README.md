# Banco de Dados - Concessionária de Veículos (concessionaria_db)

Projeto de banco de dados relacional para gerenciar o fluxo operacional de uma concessionária, aplicando modelagem de dados, chaves estrangeiras e consultas analíticas (JOIN, GROUP BY, SUM).

## Estrutura do Banco de Dados
- **clientes**: Cadastro e contato dos compradores.
- **vendedores**: Equipe comercial e taxas de comissão.
- **carros**: Catálogo de veículos com marca, modelo, ano, preço e status (Disponível/Vendido).
- **vendas**: Tabela transacional que unifica clientes, veículos e vendedores.

## Tecnologias
- **SGBD**: MySQL / SQL padrão
- **Ambiente de Testes**: DB Fiddle
- **Controle de Versão**: Git e GitHub

## Arquivos do Projeto
- **schema.sql**: Criação do banco de dados e das tabelas.
- **seed.sql**: Inserção de dados iniciais de teste.
- **queries.sql**: Consultas analíticas e relatórios gerenciais.

## Consultas Principais (queries.sql)
1. **Relatório de Vendas**: Unificação de dados de clientes, veículos e vendedores via JOINs.
2. **Desempenho Comercial**: Agrupamento e agregação (COUNT, SUM) de faturamento por vendedor.
3. **Gestão de Pátio**: Filtro de veículos disponíveis para venda.

