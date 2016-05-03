class Reserva < ActiveRecord::Base
  belongs_to :Cliente
  belongs_to :Evento
end
