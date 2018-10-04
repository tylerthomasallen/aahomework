class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :review_id, null: false
      t.integer :user_id, null: false
      t.boolean :useful, default: false
      t.boolean :funny, default: false
      t.boolean :cool, default: false
      t.timestamps
    end
  end
end
