class PagosController < ApplicationController

before_filter :authenticate_user!, :except =>[:some_action_without_auth]
 
   def all
    if params[:cl_apellido] != ""
      @all = Pago.search params[:cl_apellido]
    else
      @all = Pago.search
    end
    respond_to do |format|
      format.html # all.html.erb
      format.json { render json: @all }
    end
  end

  # GET /pagos
  # GET /pagos.json
  def index
    @cliente = Cliente.find(params[:cliente_id])
    @pagos = @cliente.pagos
    @imp_debe = 0
    @imp_haber = 0
  @pagos.each do |f| 
    @imp_debe += f.pg_debe.to_f
    @imp_haber += f.pg_haber.to_f
  end
    @total = @imp_debe - @imp_haber

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: [@pagos, @imp_debe, @imp_haber, @total]  }
    end
  end

  # GET /pagos/1
  # GET /pagos/1.json
  def show
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pago }
    end
  end

  # GET /pagos/new
  # GET /pagos/new.json
  def new
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pago }
    end
  end

  # GET /pagos/1/edit
  def edit
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.find(params[:id])
  end

  # POST /pagos
  # POST /pagos.json
  def create
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.new(params[:pago])

    respond_to do |format|
      if @pago.save
        format.html { redirect_to [@cliente, @pago], notice: 'Pago was successfully created.' }
        format.json { render json: @pago, status: :created, location: @pago }
      else
        format.html { render action: "new" }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pagos/1
  # PUT /pagos/1.json
  def update
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.find(params[:id])

    respond_to do |format|
      if @pago.update_attributes(params[:pago])
        format.html { redirect_to [@cliente, @pago], notice: 'Pago was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1
  # DELETE /pagos/1.json
  def destroy
    @cliente = Cliente.find(params[:cliente_id])
    @pago = @cliente.pagos.find(params[:id])
    @pago.destroy

    respond_to do |format|
      format.html { redirect_to [@cliente, @pago] }
      format.json { head :no_content }
    end
  end

end
