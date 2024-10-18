# Desafio de Projeto - Modelagem de Banco de Dados para E-commerce

## Visão Geral

Este repositório contém o script SQL para a modelagem de um banco de dados de e-commerce, desenvolvido como parte do desafio de projeto. O objetivo do projeto é aplicar conceitos de modelagem de banco de dados, criando tabelas relacionadas para um cenário de vendas online com clientes, pedidos, produtos, fornecedores, pagamentos e entregas.

## Escopo do Projeto

O banco de dados foi modelado para suportar as seguintes funcionalidades principais:

- Armazenar informações de clientes, diferenciando entre Pessoa Física (PF) e Pessoa Jurídica (PJ).
- Registrar pedidos feitos pelos clientes.
- Relacionar produtos com fornecedores e controlar o estoque.
- Registrar várias formas de pagamento para um mesmo pedido.
- Controlar o status de entrega e o código de rastreamento dos pedidos.

### Modelagem Lógica

As principais entidades e relacionamentos do projeto são:

- **Cliente**: Armazena informações de clientes PF ou PJ.
- **Pedido**: Representa o pedido feito por um cliente, relacionando-se com os produtos adquiridos.
- **Produto**: Armazena informações sobre os produtos vendidos no e-commerce.
- **Fornecedor**: Armazena informações dos fornecedores que disponibilizam os produtos.
- **Pagamento**: Registra as diferentes formas de pagamento dos pedidos.
- **Entrega**: Armazena o status e o código de rastreamento dos pedidos.

### Diagrama ERD (Entidade-Relacionamento)

Adicione aqui um link para uma imagem do **Diagrama ERD** (caso tenha criado um), ou uma descrição dos relacionamentos principais.

## Estrutura do Banco de Dados

### Tabelas Criadas:

- **Cliente**: Armazena dados dos clientes, tanto Pessoa Física quanto Jurídica.
- **Pedido**: Informações dos pedidos feitos pelos clientes.
- **Produto**: Detalhes dos produtos disponíveis no e-commerce.
- **Fornecedor**: Informações dos fornecedores.
- **Estoque**: Relaciona produtos e seus fornecedores, armazenando a quantidade de estoque disponível.
- **ItemPedido**: Relação entre os pedidos e os produtos comprados.
- **Pagamento**: Registra os métodos de pagamento associados a cada pedido.
- **Entrega**: Armazena o status de entrega e o código de rastreamento.

### Requisitos de Configuração

Para rodar o projeto localmente, siga os passos abaixo:

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/AllanCardosoDev/banco_dados
   ```
