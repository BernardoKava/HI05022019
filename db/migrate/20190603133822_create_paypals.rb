class CreatePaypals < ActiveRecord::Migration[5.2]
  def change
    create_table :paypals do |t|
      t.date :t_date
      t.string :t_time
      t.string :timezone
      t.string :name
      t.string :t_type
      t.string :status
      t.string :currency
      t.numeric :amount

      t.timestamps
    end
  end
end
