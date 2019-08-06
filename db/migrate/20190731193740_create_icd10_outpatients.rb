class CreateIcd10Outpatients < ActiveRecord::Migration[5.2]
  def change
    create_table :icd10_outpatients do |t|
      t.string :diagnosis_code
      t.text :short_description
      t.text :medium_description
      t.text :long_description
      t.text :notes

      t.timestamps
    end
  end
end
