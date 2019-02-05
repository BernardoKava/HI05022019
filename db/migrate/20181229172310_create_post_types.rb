class CreatePostTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :post_types do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :user_id

      t.timestamps
    end
  end
end
