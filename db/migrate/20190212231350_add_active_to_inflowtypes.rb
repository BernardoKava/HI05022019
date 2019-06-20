class AddActiveToInflowtypes < ActiveRecord::Migration[5.2]
  def change
    add_column :inflowtypes, :active, :boolean
  end
end
