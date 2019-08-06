class AddTreatmentDateToHealthCases < ActiveRecord::Migration[5.2]
  def change
    add_column :health_cases, :treatment_date, :date
    add_column :health_cases, :inpatient_admission_date, :string
    add_column :health_cases, :inpatient_discharge_date, :string
  end
end
