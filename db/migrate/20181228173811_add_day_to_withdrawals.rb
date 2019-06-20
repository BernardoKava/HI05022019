class AddDayToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :day, :string
  end
end
