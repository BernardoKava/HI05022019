class AddActiveToCorrectiveAction < ActiveRecord::Migration[5.2]
  def change
    add_column :corrective_actions, :active, :boolean
  end
end
