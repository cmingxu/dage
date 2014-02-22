# -*- encoding : utf-8 -*-
class Admin::RukusController < Admin::BaseController
  # GET /rukus
  # GET /rukus.json
  def search_supplier
    @items = Ruku.where(["supplier like ?", "%#{params[:query]}%"]).limit(8).collect(&:supplier)

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @items }
    end
  end

  def index
    @rukus = Ruku.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rukus }
    end
  end

  # GET /rukus/1
  # GET /rukus/1.json
  def show
    @ruku = Ruku.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ruku }
    end
  end

  # GET /rukus/new
  # GET /rukus/new.json
  def new
    @ruku = Ruku.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ruku }
    end
  end

  # GET /rukus/1/edit
  def edit
    @ruku = Ruku.find(params[:id])
  end

  # POST /rukus
  # POST /rukus.json
  def create
    @ruku = Ruku.new(params[:ruku])

    respond_to do |format|
      if @ruku.save
        format.html { redirect_to admin_rukus_path, notice: 'Ruku was successfully created.' }
        format.json { render json: @ruku, status: :created, location: @ruku }
      else
        format.html { render action: "new" }
        format.json { render json: @ruku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rukus/1
  # PUT /rukus/1.json
  def update
    @ruku = Ruku.find(params[:id])

    respond_to do |format|
      if @ruku.update_attributes(params[:ruku])
        format.html { redirect_to admin_rukus_path, notice: 'Ruku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ruku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rukus/1
  # DELETE /rukus/1.json
  def destroy
    @ruku = Ruku.find(params[:id])
    @ruku.destroy

    respond_to do |format|
      format.html { redirect_to admin_rukus_url }
      format.json { head :no_content }
    end
  end
end
