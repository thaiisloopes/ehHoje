class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :CNPJ
      t.string :Empresa
      t.string :Email
      t.string :Senha
      t.string :Tipo

      t.timestamps null: false
    end
  end
end
