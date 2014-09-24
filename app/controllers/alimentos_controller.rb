class AlimentosController < ApplicationController

  def index
  end

  def descricao
    session[:alimento] = params[:alimento][:descricao]
    redirect_to '/usuarios/doar'
  end

end
