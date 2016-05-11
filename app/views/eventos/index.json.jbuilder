json.array!(@eventos) do |evento|
  json.extract! evento, :id, :Descrição, :Data, :Horário, :estabelecimento_id
  json.url evento_url(evento, format: :json)
end
