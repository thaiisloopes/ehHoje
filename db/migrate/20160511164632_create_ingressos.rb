class CreateIngressos < ActiveRecord::Migration
  def change
    create_table :ingressos do |t|
      t.string :Tipo
      t.string :Valor
      t.references :Evento, index: true, foreign_key: true
      t.references :Cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
