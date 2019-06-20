class AddActiveToPlannedactivities < ActiveRecord::Migration[5.2]
  def change
    add_column :plannedactivities, :active, :boolean
  end
end
