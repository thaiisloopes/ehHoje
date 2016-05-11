class CreateIngressos < ActiveRecord::Migration
  def change
    create_table :ingressos do |t|
      t.string :Tipo
      t.string :Valor
      t.references :evento, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
