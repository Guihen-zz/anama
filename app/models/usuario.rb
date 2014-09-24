class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #   :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :usuario,
            :empresa,
            :cnpj,
            :telefone,
            :endereco,
            :tipo_de_negocio,
        presence: true
end
