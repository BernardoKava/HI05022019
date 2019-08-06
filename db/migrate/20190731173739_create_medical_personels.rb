class CreateMedicalPersonels < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_personels do |t|
      t.string :designation
      t.string :name
      t.string :specialisation
      t.boolean :active
      t.text :comments

      t.timestamps
    end
  end
end
