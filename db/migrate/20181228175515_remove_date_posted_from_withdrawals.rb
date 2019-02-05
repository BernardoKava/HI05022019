class RemoveDatePostedFromWithdrawals < ActiveRecord::Migration[5.2]
  def change
    remove_column :withdrawals, :date_posted, :date
  end
end
