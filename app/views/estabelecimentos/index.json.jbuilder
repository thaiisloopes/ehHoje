json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :cnpj, :empresa, :email, :senha, :tipo
  json.url estabelecimento_url(estabelecimento, format: :json)
end
