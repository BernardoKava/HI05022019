class AddActiveToBankaccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :bankaccounts, :active, :boolean
  end
end
