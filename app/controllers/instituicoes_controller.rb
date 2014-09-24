class InstituicoesController < ApplicationController

  def index
    @instituicoes = Instituicao.all
  end

  def escolhida
    session[:instituicao] = params[:id]
    redirect_to '/usuarios/doar'
  end

end
