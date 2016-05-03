json.array!(@ingressos) do |ingresso|
  json.extract! ingresso, :id, :Tipo, :Valor, :Evento_id, :Cliente_id
  json.url ingresso_url(ingresso, format: :json)
end
