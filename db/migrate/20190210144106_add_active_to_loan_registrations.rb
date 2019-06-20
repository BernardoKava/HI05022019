class AddActiveToLoanRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :loan_registrations, :active, :boolean
  end
end
