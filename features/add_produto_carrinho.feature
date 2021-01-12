#language: pt
#utf-8

Funcionalidade: Colocar produto no carrinho

    Cenario: Adicionar iPhone XR no Carrinho
		Dado que o cliente esteja na home da loja
		Quando pesquisar por 'iPhone XR'
		E adicionar o produto no carrinho
		Então 'iPhone XR' deve estar no carrinho