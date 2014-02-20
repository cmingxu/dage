# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :choose_layout

  before_filter :method

  def method
  end

  def after_sign_out_path_for(user)
    root_path
  end

  def after_sign_in_path_for(user)
    admin_dashboard_path
  end

  def choose_layout
    devise_controller? ? "dage" : "application"
  end
end
