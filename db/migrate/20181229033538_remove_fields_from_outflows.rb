class RemoveFieldsFromOutflows < ActiveRecord::Migration[5.2]
  def change
    remove_column :outflows, :yeartitle_id, :integer
    remove_column :outflows, :monthtitle_id, :integer
    remove_column :outflows, :bank_record_date, :date
    remove_column :outflows, :owner, :string
    remove_column :outflows, :flow_type, :string
    remove_column :outflows, :origination, :string
  end
end
