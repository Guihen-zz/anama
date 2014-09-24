class InstituicoesController < ApplicationController

  def index
    @instituicoes = Instituicao.all
  end

  def escolhida
    session[:instituicao] = params[:id]
  end

end
