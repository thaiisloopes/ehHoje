json.array!(@eventos) do |evento|
  json.extract! evento, :id, :Descrição, :Data, :Horário, :Estabelecimento_id
  json.url evento_url(evento, format: :json)
end
