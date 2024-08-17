#language: pt

US-002
Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos


Contexto:
Dado que eu esteja dentro da pagina de autenticação de login da plataforma da Ebac-Shop



Cenário: Login na plataforma com sucesso

Quando eu digito o usuario joao@meuteste.com e enha Senha@12 e clico em login
Então Sou direcionado para a tela de checkout

Cenário: Login na plataforma com campo e-mail inválido

Quando eu digito o usuario joao@meuteste2.com e senha Senha@12 e clico em login
Então O sistema apresenta mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login na plataforma com campo senha inválido

Quando eu digito usuário joao@meuteste3.com e senha Senha@12 e clico em login
Então O sistema apresenta mensagem de alerta "Usuário ou senha inválidos"

Cenário: Login na plataforma com campo Usuario em branco

Quando eu digito a senha Senha@12 e clico em login
Então O sistema apresenta mensagem de alerta "Campo usuário em branco"

Cenário: Login na plataforma com campo senha em branco

Quando eu digito o nome de usuário joao@meuteste4.com e clico em login
Então O sistema apresenta mensagem de alerta "Campo senha em branco"


