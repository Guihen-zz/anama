class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
