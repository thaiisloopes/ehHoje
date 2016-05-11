class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nome
      t.string :CPF
      t.string :Nacionalidade
      t.string :DataNascimento
      t.string :CEP
      t.string :Endereço
      t.string :Bairro
      t.string :Cidade
      t.string :Estado
      t.string :Celular
      t.string :Email
      t.string :Senha

      t.timestamps null: false
    end
  end
end
