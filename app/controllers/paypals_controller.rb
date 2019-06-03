class PaypalsController < ApplicationController
  before_action :set_paypal, only: [:show, :edit, :update, :destroy]

  # GET /paypals
  # GET /paypals.json
  def index
    @paypals = Paypal.all.paginate(page: params[:page], :per_page => 10).order("t_date DESC")
  end

  # GET /paypals/1
  # GET /paypals/1.json
  def show
  end

  # GET /paypals/new
  def new
    @paypal = Paypal.new
  end

  # GET /paypals/1/edit
  def edit
  end

  # POST /paypals
  # POST /paypals.json
  def create
    @paypal = Paypal.new(paypal_params)

    respond_to do |format|
      if @paypal.save
        format.html { redirect_to @paypal, notice: 'Paypal was successfully created.' }
        format.json { render :show, status: :created, location: @paypal }
      else
        format.html { render :new }
        format.json { render json: @paypal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paypals/1
  # PATCH/PUT /paypals/1.json
  def update
    respond_to do |format|
      if @paypal.update(paypal_params)
        format.html { redirect_to @paypal, notice: 'Paypal was successfully updated.' }
        format.json { render :show, status: :ok, location: @paypal }
      else
        format.html { render :edit }
        format.json { render json: @paypal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paypals/1
  # DELETE /paypals/1.json
  def destroy
    @paypal.destroy
    respond_to do |format|
      format.html { redirect_to paypals_url, notice: 'Paypal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paypal
      @paypal = Paypal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paypal_params
      params.require(:paypal).permit(:t_date, :t_time, :timezone, :name, :t_type, :status, :currency, :amount)
    end
end
