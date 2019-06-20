class PlannedactivitiesController < ApplicationController
  before_action :set_plannedactivity, only: [:show, :edit, :update, :destroy]

  # GET /plannedactivities
  # GET /plannedactivities.json
  def index
    @plannedactivities = Plannedactivity.paginate(page: params[:page], :per_page => 10).order("created_at DESC")
  end

  # GET /plannedactivities/1
  # GET /plannedactivities/1.json
  def show
  end

  # GET /plannedactivities/new
  def new
    @plannedactivity = Plannedactivity.new
  end

  # GET /plannedactivities/1/edit
  def edit
  end

  # POST /plannedactivities
  # POST /plannedactivities.json
  def create
    @plannedactivity = Plannedactivity.new(plannedactivity_params)

    respond_to do |format|
      if @plannedactivity.save
        format.html { redirect_to @plannedactivity, notice: 'Plannedactivity was successfully created.' }
        format.json { render :show, status: :created, location: @plannedactivity }
      else
        format.html { render :new }
        format.json { render json: @plannedactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plannedactivities/1
  # PATCH/PUT /plannedactivities/1.json
  def update
    respond_to do |format|
      if @plannedactivity.update(plannedactivity_params)
        format.html { redirect_to @plannedactivity, notice: 'Plannedactivity was successfully updated.' }
        format.json { render :show, status: :ok, location: @plannedactivity }
      else
        format.html { render :edit }
        format.json { render json: @plannedactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannedactivities/1
  # DELETE /plannedactivities/1.json
  def destroy
    @plannedactivity.destroy
    respond_to do |format|
      format.html { redirect_to plannedactivities_url, notice: 'Plannedactivity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plannedactivity
      @plannedactivity = Plannedactivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plannedactivity_params
      params.require(:plannedactivity).permit(:name,:active, :description, :activity_date, :target_amount, :user_id, :person_id)
    end
end
