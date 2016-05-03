json.array!(@avaliacoes) do |avaliacao|
  json.extract! avaliacao, :id, :nota, :comentario, :Cliente_id, :Evento_id
  json.url avaliacao_url(avaliacao, format: :json)
end
