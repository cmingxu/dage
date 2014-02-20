class HetongsController < ApplicationController
  # GET /hetongs
  # GET /hetongs.json
  def index
    @hetongs = Hetong.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hetongs }
    end
  end

  # GET /hetongs/1
  # GET /hetongs/1.json
  def show
    @hetong = Hetong.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hetong }
    end
  end

  # GET /hetongs/new
  # GET /hetongs/new.json
  def new
    @hetong = Hetong.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hetong }
    end
  end

  # GET /hetongs/1/edit
  def edit
    @hetong = Hetong.find(params[:id])
  end

  # POST /hetongs
  # POST /hetongs.json
  def create
    @hetong = Hetong.new(params[:hetong])

    respond_to do |format|
      if @hetong.save
        format.html { redirect_to @hetong, notice: 'Hetong was successfully created.' }
        format.json { render json: @hetong, status: :created, location: @hetong }
      else
        format.html { render action: "new" }
        format.json { render json: @hetong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hetongs/1
  # PUT /hetongs/1.json
  def update
    @hetong = Hetong.find(params[:id])

    respond_to do |format|
      if @hetong.update_attributes(params[:hetong])
        format.html { redirect_to @hetong, notice: 'Hetong was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hetong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hetongs/1
  # DELETE /hetongs/1.json
  def destroy
    @hetong = Hetong.find(params[:id])
    @hetong.destroy

    respond_to do |format|
      format.html { redirect_to hetongs_url }
      format.json { head :no_content }
    end
  end
end
