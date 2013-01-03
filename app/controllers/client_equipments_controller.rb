class ClientEquipmentsController < ApplicationController
  # GET /client_equipments
  # GET /client_equipments.json

before_filter :authenticate_user!, :except =>[:some_action_without_auth]

  def index
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipments = @cliente.client_equipments

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_equipments }
    end
  end

  # GET /client_equipments/1
  # GET /client_equipments/1.json
  def show
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_equipment }
    end
  end

  # GET /client_equipments/new
  # GET /client_equipments/new.json

  def new
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json:  @client_equipment }
    end
  end

  # GET /client_equipments/1/edit
  def edit
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.find(params[:id])
  end

  # POST /client_equipments
  # POST /client_equipments.json
  def create
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.new(params[:client_equipment])

#    @equipment = Equipment.find(@client_equipment[:equipment_id])
#    @equipment.update_attributes(:eq_state => '3')
  


    respond_to do |format|
      if @client_equipment.save
        format.html { redirect_to "/clientes/#{params[:cliente_id]}/client_equipments",  notice: 'Client equipment was successfully created.' }
        format.json { render json: @client_equipment, status: :created, location: @client_equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @client_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_equipments/1
  # PUT /client_equipments/1.json
  def update
   
    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.find(params[:id])

    respond_to do |format|
      if @client_equipment.update_attributes(params[:client_equipment])
        format.html { redirect_to [@cliente, @client_equipment], notice: 'Client equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_equipments/1
  # DELETE /client_equipments/1.json
  def destroy

    @cliente = Cliente.find(params[:cliente_id])
    @client_equipment = @cliente.client_equipments.find(params[:id])
    @client_equipment.destroy

    respond_to do |format|
      format.html { redirect_to [@cliente, @client_equipment], notice: 'Client equipment was succesfully destroyed' }
      format.json { head :no_content }
    end
  end
end
