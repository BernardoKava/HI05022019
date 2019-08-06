class MedicalPersonelsController < ApplicationController
  before_action :set_medical_personel, only: [:show, :edit, :update, :destroy]

  # GET /medical_personels
  # GET /medical_personels.json
  def index
    @medical_personels = MedicalPersonel.all
  end

  # GET /medical_personels/1
  # GET /medical_personels/1.json
  def show
  end

  # GET /medical_personels/new
  def new
    @medical_personel = MedicalPersonel.new
  end

  # GET /medical_personels/1/edit
  def edit
  end

  # POST /medical_personels
  # POST /medical_personels.json
  def create
    @medical_personel = MedicalPersonel.new(medical_personel_params)

    respond_to do |format|
      if @medical_personel.save
        format.html { redirect_to @medical_personel, notice: 'Medical personel was successfully created.' }
        format.json { render :show, status: :created, location: @medical_personel }
      else
        format.html { render :new }
        format.json { render json: @medical_personel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_personels/1
  # PATCH/PUT /medical_personels/1.json
  def update
    respond_to do |format|
      if @medical_personel.update(medical_personel_params)
        format.html { redirect_to @medical_personel, notice: 'Medical personel was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_personel }
      else
        format.html { render :edit }
        format.json { render json: @medical_personel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_personels/1
  # DELETE /medical_personels/1.json
  def destroy
    @medical_personel.destroy
    respond_to do |format|
      format.html { redirect_to medical_personels_url, notice: 'Medical personel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_personel
      @medical_personel = MedicalPersonel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_personel_params
      params.require(:medical_personel).permit(:designation, :name, :specialisation, :active, :comments)
    end
end
