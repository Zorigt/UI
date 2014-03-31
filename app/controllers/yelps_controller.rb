class YelpsController < ApplicationController
  before_action :set_yelp, only: [:show, :edit, :update, :destroy]

  # GET /yelps
  # GET /yelps.json
  def index
    @yelps = Yelp.all
  end

  # GET /yelps/1
  # GET /yelps/1.json
  def show
  end

  # GET /yelps/new
  def new
    @yelp = Yelp.new
  end

  # GET /yelps/1/edit
  def edit
  end

  # POST /yelps
  # POST /yelps.json
  def create
    @yelp = Yelp.new(yelp_params)

    respond_to do |format|
      if @yelp.save
        format.html { redirect_to @yelp, notice: 'Yelp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @yelp }
      else
        format.html { render action: 'new' }
        format.json { render json: @yelp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yelps/1
  # PATCH/PUT /yelps/1.json
  def update
    respond_to do |format|
      if @yelp.update(yelp_params)
        format.html { redirect_to @yelp, notice: 'Yelp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @yelp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yelps/1
  # DELETE /yelps/1.json
  def destroy
    @yelp.destroy
    respond_to do |format|
      format.html { redirect_to yelps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yelp
      @yelp = Yelp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yelp_params
      params.require(:yelp).permit(:name, :address, :descr, :comment)
    end
end
