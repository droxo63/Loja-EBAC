#language: pt

US-002
Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Critérios de Aceitação:
1  Ao inserir dados válidos deve ser direcionado para a tela de checkout
2  Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado que eu esteja dentro da plataforma da Ebac-Shop
E tenha entrado na pagina de um autenticação de usuario


Cenário: Login na plataforma com sucesso

Quando eu digito o nome de usuário joao@meuteste.com
E digito a senha cadastrada Senha@12
E clico no botão login
Então Sou direcionado para a tela de checkout

Cenário: Login na plataforma com campo e-mail inválido

Quando eu digito o nome de usuário joao@meuteste2
E digito a senha cadastrada Senha@12
E clico no botão login
Então O sistema apresenta mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login na plataforma com campo senha inválido

Quando eu digito o nome de usuário joao@meuteste3.com
E digito a senha cadastrada 123
E clico no botão login
Então O sistema apresenta mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login na plataforma com campo Usuario em branco

Quando eu não digito o e-mail no campo usuario
E digito a senha cadastrada Senha@12
E clico no botão login
Então O sistema apresenta mensagem de alerta "Campo usuário em branco"

Cenário: Login na plataforma com campo senha em branco

Quando eu digito o nome de usuário joao@meuteste4.com
E digito a senha cadastrada Senha@12
E clico no botão login
Então O sistema apresenta mensagem de alerta "Campo senha em branco"


