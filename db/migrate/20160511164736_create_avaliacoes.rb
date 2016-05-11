class CreateAvaliacoes < ActiveRecord::Migration
  def change
    create_table :avaliacoes do |t|
      t.string :Nota
      t.string :Comentário
      t.references :cliente, index: true, foreign_key: true
      t.references :evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
