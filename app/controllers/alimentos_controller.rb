class AlimentosController < ApplicationController

  def index
  end

  def descricao
    session[:alimento] = params[:alimento][:descricao]
  end

end
