json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :Data, :Hora, :Cliente_id, :Evento_id
  json.url reserva_url(reserva, format: :json)
end
