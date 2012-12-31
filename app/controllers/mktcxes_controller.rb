class MktcxesController < ApplicationController
  # GET /mktcxes
  # GET /mktcxes.json

before_filter :authenticate_user!, :except =>[:some_action_without_auth]
  def index
    @mktcxes = Mktcx.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mktcxes }
    end
  end

  # GET /mktcxes/1
  # GET /mktcxes/1.json
  def show
    @mktcx = Mktcx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mktcx }
    end
  end

  # GET /mktcxes/new
  # GET /mktcxes/new.json
  def new
    @mktcx = Mktcx.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mktcx }
    end
  end

  # GET /mktcxes/1/edit
  def edit
    @mktcx = Mktcx.find(params[:id])
  end

  # POST /mktcxes
  # POST /mktcxes.json
  def create
    @mktcx = Mktcx.new(params[:mktcx])

    respond_to do |format|
      if @mktcx.save
        format.html { redirect_to @mktcx, notice: 'Mktcx was successfully created.' }
        format.json { render json: @mktcx, status: :created, location: @mktcx }
      else
        format.html { render action: "new" }
        format.json { render json: @mktcx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mktcxes/1
  # PUT /mktcxes/1.json
  def update
    @mktcx = Mktcx.find(params[:id])

    respond_to do |format|
      if @mktcx.update_attributes(params[:mktcx])
        format.html { redirect_to @mktcx, notice: 'Mktcx was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mktcx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mktcxes/1
  # DELETE /mktcxes/1.json
  def destroy
    @mktcx = Mktcx.find(params[:id])
    @mktcx.destroy

    respond_to do |format|
      format.html { redirect_to mktcxes_url }
      format.json { head :no_content }
    end
  end
end
