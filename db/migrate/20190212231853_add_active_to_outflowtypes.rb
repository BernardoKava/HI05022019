class AddActiveToOutflowtypes < ActiveRecord::Migration[5.2]
  def change
    add_column :outflowtypes, :active, :boolean
  end
end
