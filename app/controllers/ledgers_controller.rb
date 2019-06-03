class LedgersController < ApplicationController
  before_action :set_ledger, only: [:show, :edit, :update, :destroy]

  # GET /ledgers
  # GET /ledgers.json
  def index
    @ledgers = Ledger.all.paginate(page: params[:page], :per_page => 5).order("created_at DESC")
  end

  # GET /ledgers/1
  # GET /ledgers/1.json
  def show
    @zero = 0.0
    @over_budget_message = "Alert: Exceeded Budgeted Expenditure. Please check budget and cashflow Dr and Cr. If necessary please reconcile."
    @under_budget_message = "Notice: Within Planned Expenditure"
    @year= @ledger.ledger_date.year
    @month= @ledger.ledger_date.month
    @ledger.year=@year
    @ledger.month = @month
    @ref = @year




    @budget_balance = Budget.where(year: @ref).sum(:balance)
    @cashflow_balance = (Cashflow.where(year: @ref).sum(:balance))+(Cashbox.where(year:@year).sum(:balance))
    @saving_balance = Saving.where(year: @ref).sum(:balance)

    @budget_vs_cashflow = @budget_balance - @cashflow_balance
    @cashflow_balance_plus_saving_balance = @saving_balance + @cashflow_balance

    @ledger.annual_budget_bal=@budget_balance
    @ledger.annual_cashflow_bal=@cashflow_balance
    @ledger.annual_saving_bal=@saving_balance

    @annual_total_inflow = Inflow.where(year: @year).sum(:amount)
    @annual_total_outflow = Outflow.where(year: @year).sum(:amount)
    @annual_total_income = Income.where(year: @year).sum(:amount)
    @annual_total_expenses = Expense.where(year: @year).sum(:amount)

    @ledger.annual_total_income=@annual_total_inflow
    @ledger.annual_total_expenditure=@annual_total_outflow
    @ledger.annual_budgeted_income=@annual_total_income
    @ledger.annual_budgeted_expenses=@annual_total_expenses

    # Ledger number
    @ledger_number =  (@ledger.id + 10000 )
    @ledger.ledger_number = @ledger_number

    @ledger.save


    # Annual breakdowns
    @annual_income = Income.where(year: @year)
    @annual_expenses =  Expense.where(year: @year)

    @annual_inflow = Inflow.where(year: @year)
    @annual_outflow = Outflow.where(year: @year)


    # Annual income breakdown (Budget)

    @salary = @annual_income.where(inflowtype_id: 1).sum(:amount)
    @child_benefit = @annual_income.where(inflowtype_id: 2).sum(:amount)
    @lotto_winnings = @annual_income.where(inflowtype_id: 3).sum(:amount)
    @others = @annual_income.where(inflowtype_id: 4).sum(:amount)


    # Annual Inflows Breakdown (Cashflow)

    @isalary = @annual_inflow.where(inflowtype_id: 1).sum(:amount)
    @ichild_benefit = @annual_inflow.where(inflowtype_id: 2).sum(:amount)
    @ilotto_winnings = @annual_inflow.where(inflowtype_id: 3).sum(:amount)
    @iothers = @annual_inflow.where(inflowtype_id: 4).sum(:amount)

    # Accounts

    @inflowtypes = Inflowtype.all.order("name ASC")
    @outflowtypes = Outflowtype.all.order("name ASC")

    # all entries

    @inflows = Inflow.where(year: @ref)
    @outflows = Outflow.where(year: @ref)

    @ledger.save

  end



  # GET /ledgers/newr
  def new
    @ledger = Ledger.new
  end

  # GET /ledgers/1/edit
  def edit
  end

  # POST /ledgers
  # POST /ledgers.json
  def create
    @ledger = Ledger.new(ledger_params)

    respond_to do |format|
      if @ledger.save
        format.html { redirect_to @ledger, notice: 'Ledger was successfully created.' }
        format.json { render :show, status: :created, location: @ledger }
      else
        format.html { render :new }
        format.json { render json: @ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ledgers/1
  # PATCH/PUT /ledgers/1.json
  def update
    respond_to do |format|
      if @ledger.update(ledger_params)
        format.html { redirect_to @ledger, notice: 'Ledger was successfully updated.' }
        format.json { render :show, status: :ok, location: @ledger }
      else
        format.html { render :edit }
        format.json { render json: @ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ledgers/1
  # DELETE /ledgers/1.json
  def destroy
    @ledger.destroy
    respond_to do |format|
      format.html { redirect_to ledgers_url, notice: 'Ledger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ledger
      @ledger = Ledger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ledger_params
      params.require(:ledger).permit(:month, :year, :ledger_date, :name, :user_id,:note)
    end
end
