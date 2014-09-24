class ApplicationController < ActionController::Base
  
  # The lazy way to permit another attributes for devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up)  do |u|
      u.permit(
        :usuario,
        :empresa,
        :cnpj,
        :email,
        :telefone,
        :endereco,
        :tipo_de_negocio,
        :password)
    end
  end
end
