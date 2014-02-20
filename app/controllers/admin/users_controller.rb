# -*- encoding : utf-8 -*-
class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end


  def create
    @user = User.new(params[:user])
  
    respond_to do |format|
      if @user.save
        flash[:notice] = 'User was successfully created.'
        format.html { redirect_to admin_users_path }
      else
        ap @user.errors
        format.html { render :action => "new" }
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  
    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = 'User was successfully updated.'
        format.html { redirect_to admin_users_path }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def password
  end

  def change_password
    @user = User.find_by_id(params[:id]) || current_user
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    notice = ""
    if params[:password].blank?
      notice = "密码不能空"
    end

    if params[:password] != params[:password_confirmation]
      notice = "两次密码不一致" 
    end

    if notice.blank?
      if @user.save
        notice = "密码修改成功"
      else
        notice = "密码修改失败"
      end
    end

    if params[:id]
      redirect_to admin_users_path, :notice => notice
    else
      redirect_to admin_dashboard_path, :notice => notice
    end
  end
end
