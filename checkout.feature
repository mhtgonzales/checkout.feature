Funcionalidade: Checkout de compra

  Como um cliente
  Quero finalizar minha compra
  Para receber os produtos em casa

  Cenário: Finalizar compra com sucesso
    Dado que o usuário adicionou produtos ao carrinho
    E está logado no sistema
    Quando o usuário fornece um cartão de crédito válido
    E informa um endereço de entrega completo
    Então a compra é finalizada com sucesso
    E o sistema exibe uma mensagem de confirmação

  Cenário: Tentativa de compra sem login
    Dado que o usuário tenha produtos no carrinho
    Quando tenta finalizar a compra sem estar logado
    Então o sistema redireciona o usuário para a página de login

  Cenário: Tentativa de compra com cartão inválido
    Dado que o usuário está logado e com produtos no carrinho
    Quando fornece dados de pagamento inválidos
    Então o sistema exibe uma mensagem de erro
    E a compra não é concluída

  Esquema do Cenário: Finalizar compra com diferentes formas de pagamento
    Dado que o usuário está logado e com produtos no carrinho
    Quando fornece os dados de pagamento "<tipo_pagamento>"
    E informa um endereço de entrega válido
    Então a compra é finalizada com sucesso

    Exemplos:
      | tipo_pagamento     |
      | Cartão de crédito  |
      | Cartão de débito   |
      | Pix                |
