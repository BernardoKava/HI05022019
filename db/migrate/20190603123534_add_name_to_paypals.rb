class AddNameToPaypals < ActiveRecord::Migration[5.2]
  def change
    add_column :paypals, :name, :string
  end
end
