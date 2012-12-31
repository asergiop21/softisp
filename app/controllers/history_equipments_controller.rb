class HistoryEquipmentsController < ApplicationController
  # GET /history_equipments
  # GET /history_equipments.json
  def index
    @history_equipments = HistoryEquipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @history_equipments }
    end
  end

  # GET /history_equipments/1
  # GET /history_equipments/1.json
  def show
    @history_equipment = HistoryEquipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @history_equipment }
    end
  end

  # GET /history_equipments/new
  # GET /history_equipments/new.json
  def new
    @history_equipment = HistoryEquipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @history_equipment }
    end
  end

  # GET /history_equipments/1/edit
  def edit
    @history_equipment = HistoryEquipment.find(params[:id])
  end

  # POST /history_equipments
  # POST /history_equipments.json
  def create
    @history_equipment = HistoryEquipment.new(params[:history_equipment])

    respond_to do |format|
      if @history_equipment.save
        format.html { redirect_to @history_equipment, notice: 'History equipment was successfully created.' }
        format.json { render json: @history_equipment, status: :created, location: @history_equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @history_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /history_equipments/1
  # PUT /history_equipments/1.json
  def update
    @history_equipment = HistoryEquipment.find(params[:id])

    respond_to do |format|
      if @history_equipment.update_attributes(params[:history_equipment])
        format.html { redirect_to @history_equipment, notice: 'History equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @history_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_equipments/1
  # DELETE /history_equipments/1.json
  def destroy
    @history_equipment = HistoryEquipment.find(params[:id])
    @history_equipment.destroy

    respond_to do |format|
      format.html { redirect_to history_equipments_url }
      format.json { head :no_content }
    end
  end
end
