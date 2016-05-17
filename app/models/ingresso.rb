class Ingresso < ActiveRecord::Base
  belongs_to :Evento
  belongs_to :Cliente
end
