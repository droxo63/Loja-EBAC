            #language:pt

            US-003
            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que eu esteja dentro da página de compras da Ebac-Shop
            E tenha entrado na pagina de um produto
            E clicado no botão comprar
            E tenha sido direcionado para a tela de cadastro para finalizar a compra

            Esquema do Cenário: Preechimento  do cadastro e finalização de compra com sucesso

            Quando eu digito <nome>, <sobrenome>, <endereco>, <CEP>, <pais>, <cidade>, <telefone>, <email>
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

            Quando eu digito  eu digito <nome>, <sobrenome>, <endereco>, <CEP>, <pais>, <cidade>, <telefone>, <email>
            E clico no botão Finalizar compra
            Então o sistema exibe uma mensagem: "E-mail inválido".

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
            Então o sistema exibe uma mensagem" "Há algum campo em branco. Favor preencher".

            Exemplos:

            | nome   | sobrenome | endereco        | CEP       | pais     | cidade           | telefone       | email                   |
            |        | Silva     | Rua Arthur, 123 | 12345-678 | Brasil   | São Paulo        | +5511987654321 | joao.silva@teste.com    |
            | Maria  |           | Av. Belém, 456  | 98765-432 | Portugal | Lisboa           | +351912345678  | maria.oliveira@test.com |
            | John   | Doe       |                 | 10001     | USA      | New York         | +1234567890    | john.doe@test.com       |
            | Jane   | Smith     | 2nd St, 1011    |           | Canada   | Toronto          | +14161234567   | jane.smith@test.com     |
            | Wei    | Zhang     | 3rd Rd, 1213    | 123456    | China    |                  | +8613012345678 | wei.zhang@test.com      |
            | Ana    | Santos    | Rua C, 456      | 54321-987 |          | Rio de Janeiro   | +5521987654321 | ana.santos@teste.com    |
            | Carlos | Mendez    | Calle D, 789    | 67890-123 | México   | Cidade do México |                | carlos.mendez@teste.com |
            | Emma   | Brown     | 4th Blvd, 112   | 30003     | UK       | London           | +447912345678  |                         |




