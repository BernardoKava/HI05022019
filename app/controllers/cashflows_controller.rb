class CashflowsController < ApplicationController
  before_action :set_cashflow, only: [:show, :edit, :update, :destroy]

  # GET /cashflows
  # GET /cashflows.json
  def index
    @cashflows = Cashflow.all.paginate(page: params[:page], :per_page => 5).order("created_at DESC")
  end

  # GET /cashflows/1
  # GET /cashflows/1.json
  def show

    # define month and year
    @year= @cashflow.accounting_date.year
    @month= @cashflow.accounting_date.month
    @cashflow.year=@year
    @cashflow.month = @month



    # get widrawals and lodgement where the month and the year is the same as the and year of the current cashflow
    @cash_injection = Withdrawal.where(year: @year, month: @month).sum(:amount)
    @saving_lodgement = Lodgement.where(year: @year, month: @month).sum(:amount)
    # Only retieve inflows and outflows where the cashflow id belongs to the current cashflow
    @ref = @cashflow.id



    # inflow outflow tabels
    @inflows = Inflow.where(cashflow_id: @ref).order("date_posted DESC")
    @outflows = Outflow.where(cashflow_id: @ref).order("date_posted DESC")
    @transaction = Transaction.where(cashflow_id: @ref).order("date_posted DESC")

    # reconciliation calc

    @recons = CashflowRecon.where(cashflow_id: @ref).sum(:correction_amount)

    # rent management
    @month_rent = RentManagement.where(year: @year, month: @month).sum(:amount)





    # savings dashboard
    @savings = Saving.where(year: @year).sum(:balance)

    # budget balance
    @budgets = Budget.where(year: @year, month: @month).sum(:balance)
    # Cashflow number
    @cashflow_number =  (@cashflow.id + 10000 )
    @cashflow.cashflow_number = @cashflow_number

    #save whatever can be saved on the table
    @cashflow.save

    # Totals income breakdownAmounts

    @salary = @inflows.where(inflowtype_id: 1).sum(:amount)
    @child_benefit = @inflows.where(inflowtype_id: 2).sum(:amount)
    @lotto_winnings = @inflows.where(inflowtype_id: 3).sum(:amount)
    @others = @inflows.where(inflowtype_id: 4).sum(:amount)


    # Income and Expense accounts/ types

    @inflowtypes = Inflowtype.all.order("name ASC")
    @outflowtypes = Outflowtype.all.order("name ASC")

    # totals

    @totalinflow = Inflow.where(cashflow_id: @ref).sum(:amount)
    @totaloutflow = Outflow.where(cashflow_id: @ref).sum(:amount)

    # transaction from pettycash

    @transactions = Transaction.where(cashflow_id: @ref )
    @transactions_amount = Transaction.where(cashflow_id:@ref).sum(:amount)


    # balance calculation
    @i = 0
    @balance = ((((@totalinflow - @saving_lodgement)- @totaloutflow) + @cash_injection) + @recons)-@transactions_amount
    @cashflow.balance= @balance

    @cashflow.save

    @inflow_fu_count    = Inflow.where(cashflow_id: @ref, follow_up: true).count
    @outflow_fu_count   = Outflow.where(cashflow_id: @ref,follow_up: true).count

    @inflow_follow_up   = Inflow.where(cashflow_id: @ref,follow_up: true).order("date_posted DESC")
    @outflow_follow_up  = Outflow.where(cashflow_id: @ref,follow_up: true).order("date_posted DESC")

    if @inflow_follow_up.empty?
      @message_for_empty1 = "There are no transactions to follow-up!"
    end
    if @outflow_follow_up.empty?
      @message_for_empty2 = "There are no transactions to follow-up!"
    end
  end


  # GET /cashflows/new
  def new
    @cashflow = Cashflow.new

  end

  # GET /cashflows/1/edit
  def edit

  end

  # POST /cashflows
  # POST /cashflows.json
  def create
    @cashflow = Cashflow.new(cashflow_params)

    respond_to do |format|
      if @cashflow.save
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully created.' }
        format.json { render :show, status: :created, location: @cashflow }
      else
        format.html { render :new }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashflows/1
  # PATCH/PUT /cashflows/1.json
  def update
    respond_to do |format|
      if @cashflow.update(cashflow_params)
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashflow }
      else
        format.html { render :edit }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashflows/1
  # DELETE /cashflows/1.json
  def destroy
    @cashflow.destroy
    respond_to do |format|
      format.html { redirect_to cashflows_url, notice: 'Cashflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashflow
      @cashflow = Cashflow.find(params[:id])
    end




    # Never trust parameters from the scary internet, only allow the white list through.
    def cashflow_params
      params.require(:cashflow).permit(:month, :year, :accounting_date, :name,:user_id, inflows_attributes:[ :id,:rationale,:follow_up,:bankaccount_id,:date_posted,:bank_record_date,:monthtitle_id,:yeartitle_id,:inflowtype_id, :person_id,:owner,
      :amount, :details, :flow_type, :user_id,:month,:year ,:_destroy], outflows_attributes:[:id,:rationale,:follow_up,:date_posted,:bankaccount_id,:bank_record_date,:monthtitle_id,:yeartitle_id,:outflowtype_id,:person_id,:owner,
                                                                               :amount, :details, :flow_type, :user_id,
                                                                                             :month,:year ,:_destroy],
                                       comments_attributes:[:id, :commentary, :user_id, :_destroy])
    end
end
