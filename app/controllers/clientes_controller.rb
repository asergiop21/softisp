class ClientesController < ApplicationController
  # GET /clientes
  # GET /clientes.json

before_filter :authenticate_user!, :except =>[:some_action_without_auth]
def inicio
      respond_to do |format|
      format.html # index.html.erb
     # format.json { render json: @clientes }
    end
end


def index 
    if params[:cl_apellido] != "" 
      @clientes = Cliente.filtered params[:cl_apellido]
    end 
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientes }
    end
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
 
 @llamada = RubyAsterisk::AMI.new("200.32.87.151",80)
#@llamada = @ami.login("302","mundoconexion_soporte2") 
#  @llamadas = @ami.originate("SIP/9100","OUTGOING","123456","1","var1=12,var2=99") # CALLER, CONTEXT, CALLEE, PRIORITY, VARIABLE

   # @cliente = Cliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @llamada }
    end
  end

  # GET /clientes/new
  # GET /clientes/new.json
  def new
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cliente }
    end
  end

  # GET /clientes/1/edit
  def edit
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.json
  def create
       @cliente = Cliente.new(params[:cliente])
    
       respond_to do |format|
      if @cliente.save
        format.html { redirect_to edit_cliente_path(@cliente), notice: 'Cliente was successfully created.' }
        format.json { render json: @cliente , status: :created, location: @cliente }
      else
        format.html { render action: "new" }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientes/1
  # PUT /clientes/1.json
  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to edit_cliente_path(@cliente), notice: 'Cliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
    @crear = Clientesmkt.create_mikrotik
    respond_to do |format|
      format.html { redirect_to clientes_url }
      format.json { head :no_content }
    end
  end
end
