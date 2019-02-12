class AddPlannedActivitiyIdToLodgements < ActiveRecord::Migration[5.2]
  def change
    add_column :lodgements, :plannedactivity_id, :integer
  end
end
