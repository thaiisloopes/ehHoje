json.array!(@ingressos) do |ingresso|
  json.extract! ingresso, :id, :Tipo, :Valor, :evento_id, :cliente_id
  json.url ingresso_url(ingresso, format: :json)
end
