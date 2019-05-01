class AddCashWithdrawalToOutflows < ActiveRecord::Migration[5.2]
  def change
    add_column :outflows, :cash_withdrawal, :boolean
  end
end
