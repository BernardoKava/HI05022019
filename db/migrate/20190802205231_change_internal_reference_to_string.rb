class ChangeInternalReferenceToString < ActiveRecord::Migration[5.2]
  def change
    change_column :health_cases, :internal_reference, :string
  end
end
