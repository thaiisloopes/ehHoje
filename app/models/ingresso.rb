class Ingresso < ActiveRecord::Base
  belongs_to :evento
  belongs_to :cliente
end
