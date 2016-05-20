json.cliente(@clientes) do |cliente|
  json.extract! cliente, :id, :Nome, :CPF, :Nacionalidade, :DataNascimento, :CEP, :Endereço, :Bairro, :Cidade, :Estado, :Celular, :Email, :Senha
  json.url cliente_url(cliente, format: :json)
end
