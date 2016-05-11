class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :Data
      t.string :Hora
      t.references :Cliente, index: true, foreign_key: true
      t.references :Evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
