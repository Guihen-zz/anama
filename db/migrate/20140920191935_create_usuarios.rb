class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuario
      t.string :empresa
      t.string :cnpj
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :tipo_de_negocio

      t.timestamps
    end
  end
end
