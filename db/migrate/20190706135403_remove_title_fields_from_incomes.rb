class RemoveTitleFieldsFromIncomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :incomes, :monthtitle_id, :integer
    remove_column :incomes, :yeartitle_id, :integer
  end
end
