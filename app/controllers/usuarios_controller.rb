class UsuariosController < ApplicationController
  before_filter :authenticate_usuario! # devise method

  def new
  end

  def create
    @usuario = Usuario.new( usuario_params)
 
    @usuario.save
    redirect_to action: 'doar'
  end

  def doar
  end

  private

    def usuario_params
      params.require(:usuario).permit(
        :nome_de_usuario,
        :nome_da_empresa,
        :cnpj,
        :email,
        :telefone,
        :endereco,
        :tipo_de_negocio)
    end
end
