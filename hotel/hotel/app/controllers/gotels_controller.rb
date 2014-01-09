class GotelsController < ApplicationController
  # GET /gotels
  # GET /gotels.json
  def index
    @gotels = Gotel.all
    @top_gotels = Gotel.all.sort_by{|h| -h.average_rating}.first(5)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gotels }
    end
  end

  # GET /gotels/1
  # GET /gotels/1.json
  def show
    @gotel = Gotel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gotel }
    end
  end

  # GET /gotels/new
  # GET /gotels/new.json
  def new
    @gotel = Gotel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gotel }
    end
  end

  # GET /gotels/1/edit
  def edit
    @gotel = Gotel.find(params[:id])
  end

  # POST /gotels
  # POST /gotels.json
  def create
    @gotel = Gotel.new(params[:gotel])
    
    respond_to do |format|
      if @gotel.save
        format.html { redirect_to @gotel, notice: 'Gotel was successfully created.' }
        format.json { render json: @gotel, status: :created, location: @gotel }
      else
        format.html { render action: "new" }
        format.json { render json: @gotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gotels/1
  # PUT /gotels/1.json
  def update
    @gotel = Gotel.find(params[:id])

    respond_to do |format|
      if @gotel.update_attributes(params[:gotel])
        format.html { redirect_to @gotel, notice: 'Gotel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gotels/1
  # DELETE /gotels/1.json
  def destroy
    @gotel = Gotel.find(params[:id])
    @gotel.destroy

    respond_to do |format|
      format.html { redirect_to gotels_url }
      format.json { head :no_content }
    end
  end
end
