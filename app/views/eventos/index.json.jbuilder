json.array!(@eventos) do |evento|
  json.extract! evento, :id, :descricao, :data, :horario, :local, :estabelecimento_id
  json.url evento_url(evento, format: :json)
end
