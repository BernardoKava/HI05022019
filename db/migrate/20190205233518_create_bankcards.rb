class CreateBankcards < ActiveRecord::Migration[5.2]
  def change
    create_table :bankcards do |t|
      t.integer :bankaccount_id
      t.integer :person_id
      t.string :card_number
      t.date :expiry_date
      t.string :security_code
      t.boolean :active
      t.text :note

      t.timestamps
    end
  end
end
