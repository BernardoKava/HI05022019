class CreatePlannedactivities < ActiveRecord::Migration[5.2]
  def change
    create_table :plannedactivities do |t|
      t.string :name
      t.text :description
      t.date :activity_date
      t.numeric :target_amount
      t.integer :user_id
      t.integer :person_id

      t.timestamps
    end
  end
end
