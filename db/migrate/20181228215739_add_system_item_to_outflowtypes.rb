class AddSystemItemToOutflowtypes < ActiveRecord::Migration[5.2]
  def change
    add_column :outflowtypes, :system_item, :boolean
  end
end
