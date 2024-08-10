#language: pt

US-001
Funcionalidade: Configurar produto na plataforma Ebac

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Contexto: Dado que esteja dentro da plataforma da Ebac-Shop
E entrei na página dos produtos
E cliquei na imagem do produto (Augusta Pullover Jacket)

Cenário: Seleção e configuraçao de todos os itens da pagina do produto

Quando eu escolho o tamnho XS, a cor laranja, 2 quantidades e clico em comprar
Então o sistema vai me direcionar para pagina de login da plataforma

Cenário: Seleção de mais de 10 itens no campo quantidade

Quando eu escolho o tamanho |M, cor azul, quantidade 11 e clico em comprar
Então o sistema vai exibir  uma mensagem de erro" "Quantidade de itens acima do permitido"


Cenário: Não seleciona a opção de tamanho
Quando eu escolho o tamanho M, cor vermelha, quantidade 10 e clico em comprar
Então o sistema vai exibir uma mensagem de alerta "Por favor escolher uma opção de tamanho"

Cenário: Não seleciona opção de cor

Quando eu escolho o tamanho S, quantidade 1 e clico em comprar
Então o sistema vai exibir uma mensagem de alerta "Por favor escolher uma opção de cor"

Cenário: Tentativa de comprar com quantidade de 0 itens

Quando eu escolho o tamanho S, cor azul e quantidade 0 e clico em comprar
Então o sistema vai exibir uma mensagem de erro "Por favor escolher a quantidade de itens"


Cenário: Validação do botão limpar as opções selecionadas

Quando eu escolho o tamanho XL, cor laranja e quantidade 2 e clico no botão limpar
Então o sistema vai apagar as opções de tamnho, cor e quantidade selecionadas e voltar ao estado original
