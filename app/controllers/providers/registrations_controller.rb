class Providers::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def create
    params[:user] = params[:user]&.merge(type: 'Provider')
    super
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[type name address phone_number category])
  end

end
