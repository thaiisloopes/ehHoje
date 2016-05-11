class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :cnpj
      t.string :empresa
      t.string :email
      t.string :senha
      t.string :tipo

      t.timestamps null: false
    end
  end
end
