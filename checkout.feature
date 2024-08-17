            #language:pt

            US-003
            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que tenha sido direcionado para tela de finalização de cadastro para confirmar a compra dos itens do carrinho

            Esquema do Cenário: Preechimento  do cadastro e finalização de compra com sucesso

            Quando eu preencho os campos <nome>, <sobrenome>, <endereco>, <CEP>, <pais>, <cidade>, <telefone>, <email valido>
            E clico no botão Finalizar compra
            Então o sistema exibe uma mensagem "Compra efetuada com sucesso".

            Exemplos:
            | nome  | sobrenome | endereco        | CEP       | pais     | cidade    | telefone       | email                  |
            | João  | Silva     | Rua Arthur, 123 | 12345-678 | Brasil   | São Paulo | +5511987654321 | joao.silva@test.com    |
            | Maria | Oliveira  | Av. Belem, 456  | 98765-432 | Portugal | Lisboa    | +351912345678  | maria.oliveira@test.pt |
            | John  | Doe       | 1st Ave, 789    | 10001     | USA      | New York  | +1234567890    | john.doe@test.com      |
            | Jane  | Smith     | 2nd St, 1011    | 20002     | Canada   | Toronto   | +14161234567   | jane.smith@test.ca     |
            | Wei   | Zhang     | 3rd Rd, 1213    | 123456    | China    | Beijing   | +8613012345678 | wei.zhang@test.cn      |

            Esquema do Cenário: Preechimento do cadastro com e-mail invalido

            Quando eu preencho os campos <nome>, <sobrenome>, <endereco>, <CEP>, <pais>, <cidade>, <telefone> e <email invalido>
            E clico no botão Finalizar compra
            Então o sistema exibe uma mensagem: "E-mail inválido. Tente novamente".

            Exemplos:

            | email invalido           |
            | joao.silvateste.com      |
            | maria.oliveira@          |
            | johndoe@domain           |
            | jane.test1               |
            | wei.zhang@.cn            |
            | ana.santos@.teste.com    |
            | carlos.mendez@domain.    |
            | emma.brown@domain,com    |
            | akira.tanaka@domain com  |
            | liam.murphy@domain.co,uk |

            Esquema do Cenário: Preechimento  do cadastro com campos obrigatorios em branco

            Quando Eu deixar de digitar algum campo obrigatorio (*)
            E clico no botão Finalizar compra
            Então o sistema exibe uma mensagem" "Há campos em branco. Favor preencher todos os campos obrigatórios".

            




