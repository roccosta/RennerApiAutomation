@usuario
Feature: Usuário


  Scenario: Cadastrar um usuário válido (uid:7d029b22-11ef-4ba5-b8f6-e91a59b19fd0)
    * que sejam preenchidos os valores de users com
               | email    | teste@teste.com |
               | password | teste@renner |
    * realizado o POST do Users
    * o sistema devolve o status 201
    * o campo "email" retorna o valor "teste@teste.com"
    * o campo "password" retorna o valor "teste@renner"

  Scenario: Consultar um usuário existente (uid:92530ab6-4df6-4c49-a5a9-919dbcb6ddf4)
    * que seja utilizado o id "1"
    * realizado o Get do Users
    * o sistema devolve o status 200
    * o campo "data.id" retorna o numero 1
    * o campo "data.email" retorna o valor "george.bluth@reqres.in"
    * o campo "data.first_name" retorna o valor "George"
    * o campo "data.last_name" retorna o valor "Bluth"

  Scenario: Consultar dois usuários existentes (uid:3d812733-42dc-4f40-a94c-580916f989d8)
    * realizado o Get do Users
    * o sistema devolve o status 200
    * o campo "data[0].id" retorna o numero 1
    * o campo "data[0].email" retorna o valor "george.bluth@reqres.in"
    * o campo "data[0].first_name" retorna o valor "George"
    * o campo "data[0].last_name" retorna o valor "Bluth"
    * o campo "data[1].id" retorna o numero 2
    * o campo "data[1].email" retorna o valor "janet.weaver@reqres.in"
    * o campo "data[1].first_name" retorna o valor "Janet"
    * o campo "data[1].last_name" retorna o valor "Weaver"

  Scenario: Atualizar um usuário válido (uid:a1d51bd1-590b-403a-b30e-6d5ea64e3016)
    * que sejam preenchidos os valores de users com
               | email    | teste@teste.com |
               | password | teste@renner |
    * realizado o PATCH do Users com o id 1
    * o sistema devolve o status 200
    * o campo "email" retorna o valor "teste@teste.com"
    * o campo "password" retorna o valor "teste@renner"

  Scenario: Falhar (uid:c6e234a4-e3d6-4dac-a685-006d0ba8caef)
    * que haja falha proposital
