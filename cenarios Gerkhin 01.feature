#language: pt

US-001
Funcionalidade: Configurar produto na plataforma Ebac

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
1  Seleções de cor, tamanho e quantidade devem ser obrigatórios
2  Deve permitir apenas 10 produtos por venda
3  Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto: Dado que esteja dentro da plataforma da Ebac-Shop
E entrei na página de vizualização dos produtos
E escolhi e cliquei na imagem do produto (Augusta Pullover Jacket)

Cenário: Seleção e configuraçao de todos os itens da pagina do produto

Quando eu clico na opção do tamanho XS
E eu clico na opção de cor laranja
E clico no icone de "+" ou digito a quantidade de itens n° 2
E clico no botão comprar
Então o sistema vai adiconar o produto no carrinho de compras
E o sistema vai me direcionar para pagina de login da plataforma

Cenário: Seleção de mais de 10 itens no campo quantidade

Quando eu clico na opção do tamanho M
E eu clico na opção de cor laranja
E clico mais 10X no icone de "+" ou digito a quantidade de itens n° 11
Então o sistema vai exibir  uma mensagem de erro""Quantidade de itens acima do permitido"
E nao me deixar clicar no botão comprar

Cenário: Não seleciona a opção de tamanho
Quando eu não clico em nenhuma opção de tamanho
E eu clico na opção de cor Azul
E clico no icone de "+" ou digito a quantidade de itens n° 10
E clico no botão comprar
Então o sistema vai exibir uma mensagem de alerta "Por favor escolher uma opção de tamanho"

Cenário: Não seleciona opção de cor

Quando eu clico na opção do tamanho S
E eu clico na opção de cor Vermelha
E seleciono a quantidade de itens n° 1
E clico no botão comprar
Então o sistema vai exibir uma mensagem de alerta "Por favor escolher uma opção de cor"

Cenário: Tentativa de comprar com quantidade de 0 itens

Quando eu clico na opção do tamanho L
E eu clico na opção de cor Laranja
E clico no icone de "-" ou digito a quantidade de itens n° 0
Então o sistema vai exibir uma mensagem de erro "Por favor escolher a quantidade de itens"
E não vai me deixar clicar no botão comprar

Cenário: Validação do botão limpar as opções selecionadas

Quando eu clico na opção do tamanho XL
E eu clico na opção de cor vermelha
E clico no icone de "+" ou digito a quantidade de itens n° 2
E então clico no botão limpar
Então o sistema vai apagar as opções de tamnho, cor e quantidade selecionadas e voltar ao estado original
