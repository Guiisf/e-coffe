    CLIENTES {id (PK), nome, email, telefone, endereco}
    FORNECEDORES {id (PK), nome, email, telefone, endereco}
    PRODUTOS {id (PK), nome, descricao, preco, qtd_estq}
    VENDAS {id (PK), cliente_id (FK referenciando CLIENTES.id), data, vlr_total}
    ITENS_VENDA {id (PK), venda_id (FK referenciando VENDAS.id), produto_id (FK referenciando PRODUTOS.id), qtd, vlr_unitario}
