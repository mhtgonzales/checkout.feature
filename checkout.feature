Feature: Cadastro no Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Dado que estou na tela de cadastro do checkout

  Scenario: Todos os campos obrigatórios devem estar preenchidos
    Quando eu tento cadastrar sem preencher todos os campos obrigatórios
    Então deve ser exibida uma mensagem de alerta indicando campos obrigatórios

  Scenario: E-mail com formato inválido
    Quando eu insiro um e-mail com formato inválido
    Então deve ser exibida uma mensagem de erro informando "E-mail inválido"

  Esquema do Cenário: Validação de cadastro com campos vazios
    Quando eu tento me cadastrar com os seguintes dados:
      | nome   | email   | telefone  |
      | <nome> | <email> | <telefone> |
    Então deve ser exibida uma mensagem de alerta indicando campos obrigatórios

    Exemplos:
      | nome  | email              | telefone   |
      | João  | joaoemail.com      | 1199999999 |
      |       | maria@exemplo.com  | 1188888888 |
      | Pedro | pedro@dominio.com  |            |