class Restaurant2sController < ApplicationController
  before_action :set_restaurant2, only: %i[ show edit update destroy ]

  # GET /restaurant2s or /restaurant2s.json
  def index
    @restaurant2s = Restaurant2.all
  end

  # GET /restaurant2s/1 or /restaurant2s/1.json
  def show
  end

  # GET /restaurant2s/new
  def new
    @restaurant2 = Restaurant2.new
  end

  # GET /restaurant2s/1/edit
  def edit
  end

  # POST /restaurant2s or /restaurant2s.json
  def create
    @restaurant2 = Restaurant2.new(restaurant2_params)

    respond_to do |format|
      if @restaurant2.save
        format.html { redirect_to restaurant2_url(@restaurant2), notice: "Restaurant2 was successfully created." }
        format.json { render :show, status: :created, location: @restaurant2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant2s/1 or /restaurant2s/1.json
  def update
    respond_to do |format|
      if @restaurant2.update(restaurant2_params)
        format.html { redirect_to restaurant2_url(@restaurant2), notice: "Restaurant2 was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant2s/1 or /restaurant2s/1.json
  def destroy
    @restaurant2.destroy

    respond_to do |format|
      format.html { redirect_to restaurant2s_url, notice: "Restaurant2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant2
      @restaurant2 = Restaurant2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant2_params
      params.require(:restaurant2).permit(:name, :address, :rating, :chef_name)
    end
end
