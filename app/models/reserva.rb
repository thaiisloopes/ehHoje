class Reserva < ActiveRecord::Base
  belongs_to :eventoCliente
  belongs_to :Evento
end
