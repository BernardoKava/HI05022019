class AddAccountNameToBankaccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :bankaccounts, :account_name, :string
  end
end
