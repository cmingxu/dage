# -*- encoding : utf-8 -*-
class WelcomeController < ApplicationController
  layout "public"

  def index
  end

  def dashboard
  end

  def routes
    @routes = Route.all
  end

  def huoyun_routes
    @huoyun_routes = HuoyunRoute.all
  end

  def about
    @page = Page.find_by_slug "about"
  end

  def team
    @page = Page.find_by_slug "team"
  end

  def jobs
    @page = Page.find_by_slug "jobs"
  end

  def contact
    @page = Page.find_by_slug "contact"
  end

  def news
    @page = Page.find_by_slug "news"
  end

  def links
    @page = Page.find_by_slug "links"
  end

  def term
    @page = Page.find_by_slug "term"
  end

  def sign_as
    if Setting.easy_login_enable
      sign_in(User.find_by_login  params[:login])
    end
    redirect_to admin_dashboard_path
  end
  
end
