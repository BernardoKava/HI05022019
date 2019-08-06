class CreateHealthCases < ActiveRecord::Migration[5.2]
  def change
    create_table :health_cases do |t|
      t.numeric :internal_reference
      t.string :external_reference
      t.integer :person_id
      t.integer :medical_personal_id
      t.integer :medical_establishment_id
      t.integer :icd10_inpatient_id
      t.integer :icd10_outpatient_id
      t.text :diagnosis_details
      t.integer :cpt_id
      t.text :treatment_details
      t.string :precedent_case_id
      t.text :comments
      t.numeric :out_of_pocket_amount
      t.boolean :insurance_cover
      t.numeric :insurance_cover_amount
      t.boolean :case_closed

      t.timestamps
    end
  end
end
