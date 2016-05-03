json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :data, :hora, :cliente, :eventoCliente_id, :Evento_id
  json.url reserva_url(reserva, format: :json)
end
