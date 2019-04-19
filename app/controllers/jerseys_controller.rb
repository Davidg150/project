class JerseysController < ApplicationController
  before_action :set_jersey, only: [:show, :edit, :update, :destroy]

  # GET /jerseys
  # GET /jerseys.json
  def index
    @jerseys = Jersey.all
  end



 # GET /jerseys/1
  # GET /jerseys/1.json
  def show
  end

  # GET /jerseys/new
  def new
    @jersey = Jersey.new
  end

  # GET /jerseys/1/edit
  def edit
  end

  # POST /jerseys
  # POST /jerseys.json
  def create
    @jersey = Jersey.new(jersey_params)

    respond_to do |format|
      if @jersey.save
        format.html { redirect_to @jersey, notice: 'Jersey was successfully created.' }
        format.json { render :show, status: :created, location: @jersey }
      else
        format.html { render :new }
        format.json { render json: @jersey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jerseys/1
  # PATCH/PUT /jerseys/1.json
  def update
    respond_to do |format|
      if @jersey.update(jersey_params)
        format.html { redirect_to @jersey, notice: 'Jersey was successfully updated.' }
        format.json { render :show, status: :ok, location: @jersey }
      else
        format.html { render :edit }
        format.json { render json: @jersey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jerseys/1
  # DELETE /jerseys/1.json
  def destroy
    @jersey.destroy
    respond_to do |format|
      format.html { redirect_to jerseys_url, notice: 'Jersey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
    def search
     searchterm = "%#{params[:searchbox]}%"
     @jerseys = Jersey.where("team like ?", searchterm)
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jersey
      @jersey = Jersey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jersey_params
      params.require(:jersey).permit(:country, :team, :year, :image_url, :description, :size, :price)
    end



end
