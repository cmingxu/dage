# -*- encoding : utf-8 -*-
class Admin::PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
  
    respond_to do |wants|
      if @page.save
        flash[:notice] = 'Page was successfully created.'
        wants.html { redirect_to(admin_pages_path) }
        wants.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @page = Page.find(params[:id])
  
    respond_to do |wants|
      if @page.update_attributes(params[:page])
        flash[:notice] = 'Page was successfully updated.'
        wants.html { redirect_to(admin_pages_path) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end
  def edit
    @page = Page.find params[:id]
  end
end
