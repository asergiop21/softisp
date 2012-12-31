class ServiciosController < ApplicationController

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

  end



