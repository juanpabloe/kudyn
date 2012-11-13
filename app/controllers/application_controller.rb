# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "No estás autorizado para acceder a esta sección"
  end

  def after_sign_in_path_for(user) 
    home_index_path
  end
end
