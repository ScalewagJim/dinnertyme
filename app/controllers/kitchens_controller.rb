class KitchensController < ApplicationController
  # GET /kitchens
  # GET /kitchens.json
  def index
    @kitchens = Kitchen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kitchens }
    end
  end

  # GET /kitchens/1
  # GET /kitchens/1.json
  def show
    @kitchen = Kitchen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kitchen }
    end
  end

  # GET /kitchens/new
  # GET /kitchens/new.json
  def new
    @kitchen = Kitchen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kitchen }
    end
  end

  # GET /kitchens/1/edit
  def edit
    @kitchen = Kitchen.find(params[:id])
  end

  # POST /kitchens
  # POST /kitchens.json
  def create
    @kitchen = Kitchen.new(params[:kitchen])

    respond_to do |format|
      if @kitchen.save
        format.html { redirect_to @kitchen, notice: 'Kitchen was successfully created.' }
        format.json { render json: @kitchen, status: :created, location: @kitchen }
      else
        format.html { render action: "new" }
        format.json { render json: @kitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kitchens/1
  # PUT /kitchens/1.json
  def update
    @kitchen = Kitchen.find(params[:id])

    respond_to do |format|
      if @kitchen.update_attributes(params[:kitchen])
        format.html { redirect_to @kitchen, notice: 'Kitchen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchens/1
  # DELETE /kitchens/1.json
  def destroy
    @kitchen = Kitchen.find(params[:id])
    @kitchen.destroy

    respond_to do |format|
      format.html { redirect_to kitchens_url }
      format.json { head :no_content }
    end
  end
end
