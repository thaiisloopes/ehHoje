json.array!(@avaliacoes) do |avaliacao|
  json.extract! avaliacao, :id, :Nota, :Comentário, :cliente_id, :evento_id
  json.url avaliacao_url(avaliacao, format: :json)
end
