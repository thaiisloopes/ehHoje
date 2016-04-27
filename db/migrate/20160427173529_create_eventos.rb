class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :descricao
      t.string :data
      t.string :horario
      t.string :local
      t.references :Estabelecimento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
