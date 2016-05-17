class Cliente < ActiveRecord::Base
  has_many :Reservas
  has_many :Ingressos
  has_many :Avaliacoes
end
