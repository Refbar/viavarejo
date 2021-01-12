# utilizado site da americanas com autorizacao da Recrutadora Angela
# os sites das casas bahia/ponto frio/ extra 
# dao erro de acesso negado ao pesquisar um produto com a automacao

Dado('que o cliente esteja na home da loja') do
  visit "https://www.americanas.com.br"
end

Quando('pesquisar por {string}') do |produto|
  find('#h_search-input').send_keys produto
  find('#h_search-input').send_keys :enter
end

Quando('adicionar o produto no carrinho') do
  find('div.epVkvq:nth-child(1) > div:nth-child(1) > a:nth-child(1) > div:nth-child(2) > div:nth-child(1)').click
  find('.src__BuyButtonText-sc-16np9zs-2').click
  find('.TextUI-sc-1i9za0i-4').click
end

Então('{string} deve estar no carrinho') do |produto|
  titulo_produto = find('.link-default').text
  expect(titulo_produto.include? produto).to be true
end