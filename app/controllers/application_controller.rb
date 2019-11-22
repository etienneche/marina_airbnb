class ApplicationController < ActionController::Base

  before_action :authenticate_user!, :only => [:new]
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?
  after_action :verify_policy_scoped, except: [:index, :show], unless: :skip_pundit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
  end

  protected

  def after_update_path_for(resource)
    edit_user_registration_path
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
