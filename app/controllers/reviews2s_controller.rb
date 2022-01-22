class Reviews2sController < ApplicationController
  before_action :set_reviews2, only: %i[ show edit update destroy ]

  # GET /reviews2s or /reviews2s.json
  def index
    @reviews2s = Reviews2.all
  end

  # GET /reviews2s/1 or /reviews2s/1.json
  def show
  end

  # GET /reviews2s/new
  def new
    @reviews2 = Reviews2.new
  end

  # GET /reviews2s/1/edit
  def edit
  end

  # POST /reviews2s or /reviews2s.json
  def create
    @reviews2 = Reviews2.new(reviews2_params)

    respond_to do |format|
      if @reviews2.save
        format.html { redirect_to reviews2_url(@reviews2), notice: "Reviews2 was successfully created." }
        format.json { render :show, status: :created, location: @reviews2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reviews2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews2s/1 or /reviews2s/1.json
  def update
    respond_to do |format|
      if @reviews2.update(reviews2_params)
        format.html { redirect_to reviews2_url(@reviews2), notice: "Reviews2 was successfully updated." }
        format.json { render :show, status: :ok, location: @reviews2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reviews2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews2s/1 or /reviews2s/1.json
  def destroy
    @reviews2.destroy

    respond_to do |format|
      format.html { redirect_to reviews2s_url, notice: "Reviews2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews2
      @reviews2 = Reviews2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reviews2_params
      params.require(:reviews2).permit(:content, :restaurant2s_id)
    end
end
