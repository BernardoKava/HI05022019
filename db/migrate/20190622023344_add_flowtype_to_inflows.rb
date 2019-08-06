class AddFlowtypeToInflows < ActiveRecord::Migration[5.2]
  def change
    add_column :inflows, :flowtype, :string
  end
end
