json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :CNPJ, :Empresa, :Email, :Senha, :Tipo
  json.url estabelecimento_url(estabelecimento, format: :json)
end
