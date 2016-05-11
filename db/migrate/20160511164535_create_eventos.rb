class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :Descrição
      t.string :Data
      t.string :Horário
      t.references :estabelecimento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
