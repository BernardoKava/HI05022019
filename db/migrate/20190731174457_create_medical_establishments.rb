class CreateMedicalEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_establishments do |t|
      t.string :name
      t.string :country
      t.boolean :active
      t.text :comments
      t.string :location

      t.timestamps
    end
  end
end
