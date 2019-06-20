class AddFromtofieldsToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :from, :date
    add_column :addresses, :to, :date
  end
end
