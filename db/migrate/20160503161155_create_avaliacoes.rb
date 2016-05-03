class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.string :nota
      t.string :comentario
      t.references :Cliente, index: true, foreign_key: true
      t.references :Evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
