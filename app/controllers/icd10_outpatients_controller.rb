class Icd10OutpatientsController < ApplicationController
  before_action :set_icd10_outpatient, only: [:show, :edit, :update, :destroy]

  # GET /icd10_outpatients
  # GET /icd10_outpatients.json
  def index
    @icd10_outpatients = Icd10Outpatient.all

    # search Id
    @search = params["search"]

    if @search.present?

      @descriptor = @search["short_description"]

      @icd10_outpatients = Icd10Outpatient.where("Short_description ILIKE ?", "%#{@descriptor}%")
    end
    @icd10_outpatients = @icd10_outpatients.paginate(page: params[:page], :per_page => 100).order("created_at DESC")
  end

  # GET /icd10_outpatients/1
  # GET /icd10_outpatients/1.json
  def show
  end

  # GET /icd10_outpatients/new
  def new
    @icd10_outpatient = Icd10Outpatient.new
  end

  # GET /icd10_outpatients/1/edit
  def edit
  end

  # POST /icd10_outpatients
  # POST /icd10_outpatients.json
  def create
    @icd10_outpatient = Icd10Outpatient.new(icd10_outpatient_params)

    respond_to do |format|
      if @icd10_outpatient.save
        format.html { redirect_to @icd10_outpatient, notice: 'Icd10 outpatient was successfully created.' }
        format.json { render :show, status: :created, location: @icd10_outpatient }
      else
        format.html { render :new }
        format.json { render json: @icd10_outpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd10_outpatients/1
  # PATCH/PUT /icd10_outpatients/1.json
  def update
    respond_to do |format|
      if @icd10_outpatient.update(icd10_outpatient_params)
        format.html { redirect_to @icd10_outpatient, notice: 'Icd10 outpatient was successfully updated.' }
        format.json { render :show, status: :ok, location: @icd10_outpatient }
      else
        format.html { render :edit }
        format.json { render json: @icd10_outpatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd10_outpatients/1
  # DELETE /icd10_outpatients/1.json
  def destroy
    @icd10_outpatient.destroy
    respond_to do |format|
      format.html { redirect_to icd10_outpatients_url, notice: 'Icd10 outpatient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd10_outpatient
      @icd10_outpatient = Icd10Outpatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd10_outpatient_params
      params.require(:icd10_outpatient).permit(:diagnosis_code, :short_description, :medium_description, :long_description, :notes)
    end
end
