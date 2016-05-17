class Avaliacao < ActiveRecord::Base
  belongs_to :Cliente
  belongs_to :Evento
end
