# -*- encoding : utf-8 -*-
class Admin::ChukusController < Admin::BaseController
  # GET /chukus
  # GET /chukus.json
  def index
    @chukus = Chuku.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chukus }
    end
  end

  # GET /chukus/1
  # GET /chukus/1.json
  def show
    @chuku = Chuku.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chuku }
    end
  end

  # GET /chukus/new
  # GET /chukus/new.json
  def new
    @chuku = Chuku.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chuku }
    end
  end

  # GET /chukus/1/edit
  def edit
    @chuku = Chuku.find(params[:id])
  end

  # POST /chukus
  # POST /chukus.json
  def create
    @chuku = Chuku.new(params[:chuku])

    respond_to do |format|
      if @chuku.save
        format.html { redirect_to admin_chukus_path, notice: 'Chuku was successfully created.' }
        format.json { render json: @chuku, status: :created, location: @chuku }
      else
        format.html { render action: "new" }
        format.json { render json: @chuku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chukus/1
  # PUT /chukus/1.json
  def update
    @chuku = Chuku.find(params[:id])

    respond_to do |format|
      if @chuku.update_attributes(params[:chuku])
        format.html { redirect_to admin_chukus_path, notice: 'Chuku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chuku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chukus/1
  # DELETE /chukus/1.json
  def destroy
    @chuku = Chuku.find(params[:id])
    @chuku.destroy

    respond_to do |format|
      format.html { redirect_to admin_chukus_url }
      format.json { head :no_content }
    end
  end
end
