class AddBudgetIncomeToLedgers < ActiveRecord::Migration[5.2]
  def change
    add_column :ledgers, :annual_budgeted_income, :numeric
    add_column :ledgers, :annual_budgeted_expenses, :numeric
  end
end
