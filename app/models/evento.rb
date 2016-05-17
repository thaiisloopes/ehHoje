class Evento < ActiveRecord::Base
  belongs_to :Estabelecimento
  belongs_to :Reserva
  belongs_to :Ingresso
  has_many :Estabelecimentos
end
