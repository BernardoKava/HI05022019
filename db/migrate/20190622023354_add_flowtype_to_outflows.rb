class AddFlowtypeToOutflows < ActiveRecord::Migration[5.2]
  def change
    add_column :outflows, :flowtype, :string
  end
end
