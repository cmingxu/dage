# -*- encoding : utf-8 -*-
class Admin::BalancesController < Admin::BaseController
  # GET /balances
  # GET /balances.json
  def index
    params[:search] ||= {}
    balance_scope = scope
    balance_scope = balance_scope.with_location Location.find_by_name(params[:search].fetch('location')) if params[:search].fetch("location", "").present?
    balance_scope = balance_scope.with_paizhao params[:search].fetch('route', "") if params[:search].fetch("route", "").present?
    balance_scope = balance_scope.with_reason params[:search].fetch('reason', "") if params[:search].fetch("reason", "").present?
    balance_scope = balance_scope.with_amount_between(params[:search].fetch('amount_start').to_i, params[:search].fetch('amount_end').to_i ) if params[:search].fetch("start_at", "").present? and params[:search].fetch('end_at', "").present?
    balance_scope = balance_scope.with_issued_between(Date.strptime(params[:search].fetch('start_at'), "%Y-%m-%d"), Date.strptime(params[:search].fetch('end_at'), "%Y-%m-%d") )  if params[:search].fetch("start_at", "").present? and params[:search].fetch('end_at',"").present?
    @balances = balance_scope.out.page(params[:page]).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balances }
    end
  end

  def vehicle_balances
    @current_tab = "balances"
    @vehicle = Vehicle.find_by_paizhao params[:paizhao]
    balance_scope = scope.with_paizhao params[:paizhao]
    @balances = balance_scope.out.page(params[:page]).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @balances }
    end
  end

  # GET /balances/1
  # GET /balances/1.json
  def show
    @balance = scope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @balance }
    end
  end

  # GET /balances/new
  # GET /balances/new.json
  def new
    @balance = scope.new
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @balance }
    end
  end

  # GET /balances/1/edit
  def edit
    @routes = current_user.locations.collect(&:routes).flatten
    @balance = scope.find(params[:id])
  end

  # POST /balances
  # POST /balances.json
  def create
    @balance = scope.new(params[:balance])
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      if @balance.save
        format.html { redirect_to admin_balances_path, notice: 'scope was successfully created.' }
        format.json { render json: @balance, status: :created, location: @balance }
      else
        format.html { render action: "new" }
        format.json { render json: @balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /balances/1
  # PUT /balances/1.json
  def update
    @balance = scope.find(params[:id])
    @routes = current_user.locations.collect(&:routes).flatten

    respond_to do |format|
      if @balance.update_attributes(params[:balance])
        format.html { redirect_to admin_balances_path, notice: 'scope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balances/1
  # DELETE /balances/1.json
  def destroy
    @balance = scope.find(params[:id])
    @balance.destroy

    respond_to do |format|
      format.html { redirect_to admin_balances_path }
      format.json { head :no_content }
    end
  end

  def scope
    if current_user.boss? 
      Balance
    else
      current_user.balances
    end
  end
end
