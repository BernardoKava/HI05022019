class MedicalEstablishmentsController < ApplicationController
  before_action :set_medical_establishment, only: [:show, :edit, :update, :destroy]

  # GET /medical_establishments
  # GET /medical_establishments.json
  def index
    @medical_establishments = MedicalEstablishment.all
  end

  # GET /medical_establishments/1
  # GET /medical_establishments/1.json
  def show
  end

  # GET /medical_establishments/new
  def new
    @medical_establishment = MedicalEstablishment.new
  end

  # GET /medical_establishments/1/edit
  def edit
  end

  # POST /medical_establishments
  # POST /medical_establishments.json
  def create
    @medical_establishment = MedicalEstablishment.new(medical_establishment_params)

    respond_to do |format|
      if @medical_establishment.save
        format.html { redirect_to @medical_establishment, notice: 'Medical establishment was successfully created.' }
        format.json { render :show, status: :created, location: @medical_establishment }
      else
        format.html { render :new }
        format.json { render json: @medical_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_establishments/1
  # PATCH/PUT /medical_establishments/1.json
  def update
    respond_to do |format|
      if @medical_establishment.update(medical_establishment_params)
        format.html { redirect_to @medical_establishment, notice: 'Medical establishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_establishment }
      else
        format.html { render :edit }
        format.json { render json: @medical_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_establishments/1
  # DELETE /medical_establishments/1.json
  def destroy
    @medical_establishment.destroy
    respond_to do |format|
      format.html { redirect_to medical_establishments_url, notice: 'Medical establishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_establishment
      @medical_establishment = MedicalEstablishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_establishment_params
      params.require(:medical_establishment).permit(:name, :country, :active, :comments, :location)
    end
end
