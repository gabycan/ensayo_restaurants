class LeRestaurantsController < ApplicationController
  before_action :set_le_restaurant, only: %i[ show edit update destroy ]

  # GET /le_restaurants or /le_restaurants.json
  def index
    @le_restaurants = LeRestaurant.all
  end

  # GET /le_restaurants/1 or /le_restaurants/1.json
  def show
  end

  # GET /le_restaurants/new
  def new
    @le_restaurant = LeRestaurant.new
  end

  # GET /le_restaurants/1/edit
  def edit
  end

  # POST /le_restaurants or /le_restaurants.json
  def create
    @le_restaurant = LeRestaurant.new(le_restaurant_params)

    respond_to do |format|
      if @le_restaurant.save
        format.html { redirect_to le_restaurant_url(@le_restaurant), notice: "Le restaurant was successfully created." }
        format.json { render :show, status: :created, location: @le_restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @le_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /le_restaurants/1 or /le_restaurants/1.json
  def update
    respond_to do |format|
      if @le_restaurant.update(le_restaurant_params)
        format.html { redirect_to le_restaurant_url(@le_restaurant), notice: "Le restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @le_restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @le_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /le_restaurants/1 or /le_restaurants/1.json
  def destroy
    @le_restaurant.destroy

    respond_to do |format|
      format.html { redirect_to le_restaurants_url, notice: "Le restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_le_restaurant
      @le_restaurant = LeRestaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def le_restaurant_params
      params.require(:le_restaurant).permit(:name, :address, :rating, :chef_name)
    end
end
