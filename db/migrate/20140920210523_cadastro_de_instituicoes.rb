class CadastroDeInstituicoes < ActiveRecord::Migration
  def self.up
    down()

    Instituicao.create :nome => "Instituição 1"
    Instituicao.create :nome => "Instituição 2"
    Instituicao.create :nome => "Instituição 3"
    Instituicao.create :nome => "Instituição 4"
    Instituicao.create :nome => "Instituição 5"
  end

  def self.down
    Instituicao.delete_all
  end
end
