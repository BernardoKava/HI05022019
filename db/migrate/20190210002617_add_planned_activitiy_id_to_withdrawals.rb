class AddPlannedActivitiyIdToWithdrawals < ActiveRecord::Migration[5.2]
  def change
    add_column :withdrawals, :plannedactivity_id, :integer
  end
end
