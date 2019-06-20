class AddSystemItemToInflowtypes < ActiveRecord::Migration[5.2]
  def change
    add_column :inflowtypes, :system_item, :boolean
  end
end
