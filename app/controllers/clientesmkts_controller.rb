class ClientesmktsController < ApplicationController
  # GET /clientesmkts
  # GET /clientesmkts.json


before_filter :authenticate_user!, :except =>[:some_action_without_auth]
  def index
    #@clientesmkts = Clientesmkt.all
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientesmkt }
    end
  end

  # GET /clientesmkts/1
  # GET /clientesmkts/1.json
  def show
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt.find(params[:id])

      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [@cliente, @clientesmkt] }
    end
  end

  # GET /clientesmkts/new
  # GET /clientesmkts/new.json
  def new
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clientesmkt }
    end
  end

  # GET /clientesmkts/1/edit
  def edit
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt.find(params[:id])
  end
  # POST /clientesmkts
  # POST /clientesmkts.json
  
  def create
        @cliente = Cliente.find(params[:cliente_id])
        @clientesmkt = @cliente.clientesmkt.new(params[:clientesmkt])
    
        
        respond_to do |format|
      if @clientesmkt.save
         @crear = Clientesmkt.create_mikrotik
        format.html { redirect_to [@cliente, @clientesmkt], notice: 'Clientesmkt was successfully created.' }
        format.json { render json: @clientesmkt, status: :created, location: @clientesmkt }
      else
        format.html { render action: "new" }
        format.json { render json: @clientesmkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientesmkts/1
  # PUT /clientesmkts/1.json
  def update
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt.find(params[:id])

    respond_to do |format|
      if @clientesmkt.update_attributes(params[:clientesmkt])
          @crear = Clientesmkt.create_mikrotik
        format.html { redirect_to [@cliente, @clientesmkt], notice: 'Clientesmkt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clientesmkt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientesmkts/1
  # DELETE /clientesmkts/1.json
  def destroy
    @cliente = Cliente.find(params[:cliente_id])
    @clientesmkt = @cliente.clientesmkt.find(params[:id])
    @clientesmkt.destroy
    @crear = Clientesmkt.create_mikrotik
    respond_to do |format|
      format.html { redirect_to [@cliente, @clientesmkt] }
      format.json { head :no_content }
    end
  end
end
