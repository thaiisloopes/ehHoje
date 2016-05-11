json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :Data, :Hora, :cliente_id, :evento_id
  json.url reserva_url(reserva, format: :json)
end
