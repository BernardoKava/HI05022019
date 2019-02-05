class AddDayToLodgements < ActiveRecord::Migration[5.2]
  def change
    add_column :lodgements, :day, :string
  end
end
