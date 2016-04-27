class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :nacionalidade
      t.string :dtNasc
      t.string :cep
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :celular
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
