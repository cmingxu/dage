# -*- encoding : utf-8 -*-
class Admin::ItemRecordsController < Admin::BaseController
  before_filter :load_item, :except => [:vehicle_item_records]
  # GET /item_records
  # GET /item_records.json
  def index
    @item_records = @item.item_records.page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_records }
    end
  end

  def vehicle_item_records
    @vehicle = Vehicle.find_by_paizhao params[:paizhao]
    @item_records = @vehicle.item_records

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @item_records }
    end
  end

  # GET /item_records/1
  # GET /item_records/1.json
  def show
    @item_record = ItemRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item_record }
    end
  end

  def new
    @item_record = @item.item_records.new(:user_id => current_user.id, :usage_type => params[:usage_type])
  
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :json => @item_record }
    end
  end

  # GET /item_records/1/edit
  def edit
    @item_record = ItemRecord.find(params[:id])
  end

  # POST /item_records
  # POST /item_records.json
  def create
    @item_record = ItemRecord.new(params[:item_record])

    respond_to do |format|
      if @item_record.save
        format.html { redirect_to admin_item_item_records_path(@item), notice: 'Item record was successfully created.' }
        format.json { render json: @item_record, status: :created, location: @item_record }
      else
        format.html { render action: "new" }
        format.json { render json: @item_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /item_records/1
  # PUT /item_records/1.json
  def update
    @item_record = ItemRecord.find(params[:id])

    respond_to do |format|
      if @item_record.update_attributes(params[:item_record])
        format.html { redirect_to admin_item_item_records_path(@item), notice: 'Item record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_records/1
  # DELETE /item_records/1.json
  def destroy
    @item_record = ItemRecord.find(params[:id])
    @item_record.destroy

    respond_to do |format|
      format.html { redirect_to admin_item_item_records_url(@item) }
      format.json { head :no_content }
    end
  end

  def load_item
    @item = Item.find params[:item_id] 
  end
end
