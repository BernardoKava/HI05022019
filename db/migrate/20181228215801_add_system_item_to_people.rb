class AddSystemItemToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :system_item, :boolean
  end
end
