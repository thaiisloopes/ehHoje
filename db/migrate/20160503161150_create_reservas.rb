class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :data
      t.string :hora
      t.references :Cliente, index: true, foreign_key: true
      t.references :Evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
