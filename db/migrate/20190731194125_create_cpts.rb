class CreateCpts < ActiveRecord::Migration[5.2]
  def change
    create_table :cpts do |t|
      t.string :cpt_code
      t.string :clinician_descriptor_id
      t.text :clinician_descriptor
      t.text :consumer_friendly_descriptor
      t.text :notes

      t.timestamps
    end
  end
end
