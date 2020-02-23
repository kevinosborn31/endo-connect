class GlycemicIndicesController < ApplicationController
  before_action :set_glycemic_index, only: [:show, :edit, :update, :destroy]

  # GET /glycemic_indices
  # GET /glycemic_indices.json
  def index
    @glycemic_indices = GlycemicIndex.all
  end

  # GET /glycemic_indices/1
  # GET /glycemic_indices/1.json
  def show
  end

  # GET /glycemic_indices/new
  def new
    @glycemic_index = GlycemicIndex.new
  end

  # GET /glycemic_indices/1/edit
  def edit
  end

  # POST /glycemic_indices
  # POST /glycemic_indices.json
  def create
    @glycemic_index = GlycemicIndex.new(glycemic_index_params)

    respond_to do |format|
      if @glycemic_index.save
        format.html { redirect_to @glycemic_index, notice: 'Glycemic index was successfully created.' }
        format.json { render :show, status: :created, location: @glycemic_index }
      else
        format.html { render :new }
        format.json { render json: @glycemic_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glycemic_indices/1
  # PATCH/PUT /glycemic_indices/1.json
  def update
    respond_to do |format|
      if @glycemic_index.update(glycemic_index_params)
        format.html { redirect_to @glycemic_index, notice: 'Glycemic index was successfully updated.' }
        format.json { render :show, status: :ok, location: @glycemic_index }
      else
        format.html { render :edit }
        format.json { render json: @glycemic_index.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glycemic_indices/1
  # DELETE /glycemic_indices/1.json
  def destroy
    @glycemic_index.destroy
    respond_to do |format|
      format.html { redirect_to glycemic_indices_url, notice: 'Glycemic index was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glycemic_index
      @glycemic_index = GlycemicIndex.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def glycemic_index_params
      params.require(:glycemic_index).permit(:food, :gi)
    end
end
