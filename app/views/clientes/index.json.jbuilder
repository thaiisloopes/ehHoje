json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cpf, :nacionalidade, :dtNasc, :cep, :endereco, :bairro, :cidade, :estado, :celular, :email, :senha
  json.url cliente_url(cliente, format: :json)
end
