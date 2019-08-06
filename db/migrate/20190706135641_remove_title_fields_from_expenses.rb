class RemoveTitleFieldsFromExpenses < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :monthtitle_id, :integer
    remove_column :expenses, :yeartitle_id, :integer
  end
end
