class RemoveFieldsFromInflows < ActiveRecord::Migration[5.2]
  def change
    remove_column :inflows, :yeartitle_id, :integer
    remove_column :inflows, :monthtitle_id, :integer
    remove_column :inflows, :bank_record_date, :date
    remove_column :inflows, :owner, :string
    remove_column :inflows, :flow_type, :string
    remove_column :inflows, :origination, :string
  end
end
