class PlanesController < ApplicationController
  # GET /planes
  # GET /planes.json

before_filter :authenticate_user!, :except =>[:some_action_without_auth]
  def index
    @planes = Plane.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @planes }
    end
  end

  # GET /planes/1
  # GET /planes/1.json
  def show
    @plane = Plane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plane }
    end
  end

  # GET /planes/new
  # GET /planes/new.json
  def new
    @plane = Plane.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plane }
    end
  end

  # GET /planes/1/edit
  def edit
    @plane = Plane.find(params[:id])
  end

  # POST /planes
  # POST /planes.json
  def create
    @plane = Plane.new(params[:plane])

    respond_to do |format|
      if @plane.save
        format.html { redirect_to @plane, notice: 'Plane was successfully created.' }
        format.json { render json: @plane, status: :created, location: @plane }
      else
        format.html { render action: "new" }
        format.json { render json: @plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /planes/1
  # PUT /planes/1.json
  def update
    @plane = Plane.find(params[:id])

    respond_to do |format|
      if @plane.update_attributes(params[:plane])
        format.html { redirect_to @plane, notice: 'Plane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planes/1
  # DELETE /planes/1.json
  def destroy
    @plane = Plane.find(params[:id])
    @plane.destroy

    respond_to do |format|
      format.html { redirect_to planes_url }
      format.json { head :no_content }
    end
  end
end
