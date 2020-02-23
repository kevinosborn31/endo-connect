class BloodSugarsController < ApplicationController
  before_action :set_blood_sugar, only: [:show, :edit, :update, :destroy]

  # GET /blood_sugars
  # GET /blood_sugars.json
  def index
    @blood_sugars = BloodSugar.all
  end

  # GET /blood_sugars/1
  # GET /blood_sugars/1.json
  def show
  end

  # GET /blood_sugars/new
  def new
    @blood_sugar = BloodSugar.new
  end

  # GET /blood_sugars/1/edit
  def edit
  end

  # POST /blood_sugars
  # POST /blood_sugars.json
  def create
    @blood_sugar = BloodSugar.new(blood_sugar_params)

    respond_to do |format|
      if @blood_sugar.save
        format.html { redirect_to @blood_sugar, notice: 'Blood sugar was successfully created.' }
        format.json { render :show, status: :created, location: @blood_sugar }
      else
        format.html { render :new }
        format.json { render json: @blood_sugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_sugars/1
  # PATCH/PUT /blood_sugars/1.json
  def update
    respond_to do |format|
      if @blood_sugar.update(blood_sugar_params)
        format.html { redirect_to @blood_sugar, notice: 'Blood sugar was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_sugar }
      else
        format.html { render :edit }
        format.json { render json: @blood_sugar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_sugars/1
  # DELETE /blood_sugars/1.json
  def destroy
    @blood_sugar.destroy
    respond_to do |format|
      format.html { redirect_to blood_sugars_url, notice: 'Blood sugar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_sugar
      @blood_sugar = BloodSugar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blood_sugar_params
      params.require(:blood_sugar).permit(:user_id, :time, :level)
    end
end
