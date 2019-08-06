class Icd10InpatientsController < ApplicationController
  before_action :set_icd10_inpatient, only: [:show, :edit, :update, :destroy]

  # GET /icd10_inpatients
  # GET /icd10_inpatients.json
  def index
    @icd10_inpatients = Icd10Inpatient.all

    # search Id
    @search = params["search"]

    if @search.present?

      @descriptor = @search["short_description"]

      @icd10_inpatients = Icd10Inpatient.where("Short_description ILIKE ?", "%#{@descriptor}%")
    end
    @icd10_inpatients = @icd10_inpatients.paginate(page: params[:page], :per_page => 100).order("created_at DESC")
  end

  # GET /icd10_inpatients/1
  # GET /icd10_inpatients/1.json
  def show
  end

  # GET /icd10_inpatients/new
  def new
    @icd10_inpatient = Icd10Inpatient.new
  end

  # GET /icd10_inpatients/1/edit
  def edit
  end

  # POST /icd10_inpatients
  # POST /icd10_inpatients.json
  def create
    @icd10_inpatient = Icd10Inpatient.new(icd10_inpatient_params)

    respond_to do |format|
      if @icd10_inpatient.save
        format.html { redirect_to @icd10_inpatient, notice: 'Icd10 inpatient was successfully created.' }
        format.json { render :show, status: :created, location: @icd10_inpatient }
      else
        format.html { render :new }
        format.json { render json: @icd10_inpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd10_inpatients/1
  # PATCH/PUT /icd10_inpatients/1.json
  def update
    respond_to do |format|
      if @icd10_inpatient.update(icd10_inpatient_params)
        format.html { redirect_to @icd10_inpatient, notice: 'Icd10 inpatient was successfully updated.' }
        format.json { render :show, status: :ok, location: @icd10_inpatient }
      else
        format.html { render :edit }
        format.json { render json: @icd10_inpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd10_inpatients/1
  # DELETE /icd10_inpatients/1.json
  def destroy
    @icd10_inpatient.destroy
    respond_to do |format|
      format.html { redirect_to icd10_inpatients_url, notice: 'Icd10 inpatient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd10_inpatient
      @icd10_inpatient = Icd10Inpatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd10_inpatient_params
      params.require(:icd10_inpatient).permit(:diagnosis_code, :short_description, :medium_description, :long_description, :notes)
    end
end
