class HealthCasesController < ApplicationController
  before_action :set_health_case, only: [:show, :edit, :update, :destroy]

  # GET /health_cases
  # GET /health_cases.json
  def index
    @health_cases = HealthCase.all.paginate(page: params[:page], :per_page => 10).order("created_at DESC")
  end

  # GET /health_cases/1
  # GET /health_cases/1.json
  def show

    @internal_ref = (@health_case.id)+(123565)
    @health_case.internal_reference = @internal_ref
    @health_case.save
  end

  # GET /health_cases/new
  def new
    @health_case = HealthCase.new
  end

  # GET /health_cases/1/edit
  def edit
  end

  # POST /health_cases
  # POST /health_cases.json
  def create
    @health_case = HealthCase.new(health_case_params)

    respond_to do |format|
      if @health_case.save
        format.html { redirect_to @health_case, notice: 'Health case was successfully created.' }
        format.json { render :show, status: :created, location: @health_case }
      else
        format.html { render :new }
        format.json { render json: @health_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_cases/1
  # PATCH/PUT /health_cases/1.json
  def update
    respond_to do |format|
      if @health_case.update(health_case_params)
        format.html { redirect_to @health_case, notice: 'Health case was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_case }
      else
        format.html { render :edit }
        format.json { render json: @health_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_cases/1
  # DELETE /health_cases/1.json
  def destroy
    @health_case.destroy
    respond_to do |format|
      format.html { redirect_to health_cases_url, notice: 'Health case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_case
      @health_case = HealthCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_case_params
      params.require(:health_case).permit(:treatment_date,:inpatient_admission_date,:inpatient_discharge_date,
                                          :internal_reference, :external_reference, :person_id, :medical_personel_id, :medical_establishment_id, :icd10_inpatient_id, :icd10_outpatient_id, :diagnosis_details, :cpt_id, :treatment_details, :precedent_case_id, :comments, :out_of_pocket_amount, :insurance_cover, :insurance_cover_amount, :case_closed)
    end
end
