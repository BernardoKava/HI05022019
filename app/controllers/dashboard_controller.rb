class DashboardController < ApplicationController

  def index

    @dash_year = Date.today.year
    @dash_month = Date.today.month

    # Budget
    @monthly_income         =  Income.where(year: @dash_year , month: @dash_month).sum(:amount)
    @monthly_expense        =  Expense.where(year: @dash_year , month: @dash_month).sum(:amount)

    # savings
    @annual_lodgement        =  Lodgement.where(year: @dash_year).sum(:amount)
    @annual_withdrawal       =  Withdrawal.where(year: @dash_year).sum(:amount)
    @annual_savings_balance =   (@annual_lodgement -  @annual_withdrawal)
    # Ledger
    @annual_total_inflow    =  Inflow.where(year: @dash_year).sum(:amount)
    @annual_total_outflow   =  Outflow.where(year: @dash_year).sum(:amount)
    @annual_remainder       =  (@annual_total_inflow - @annual_total_outflow)
    @annual_budgeted_income =  Income.where(year: @dash_year).sum(:amount)
    @annual_budgeted_expense=  Expense.where(year: @dash_year).sum(:amount)

    # post

    @posts      =  Post.where(scanned: false).paginate(page: params[:page], :per_page => 10).order("created_at DESC")

    # Loans
    @loans      =  LoanRegistration.where(active:true).order("created_at DESC")

    # rent

    @rents      = RentManagement.where(year: @dash_year)
    @rent_total = RentManagement.where(year: @dash_year).sum(:amount)

    # Activities

    @activities  = Plannedactivity.where(active: true)

    # issues

    @corrective_actions = CorrectiveAction.where(active:true)





    @inflow_fu_count    = Inflow.where(follow_up: true).count
    @outflow_fu_count   = Outflow.where(follow_up: true).count


  end


  def pendingaccess

  end
end
