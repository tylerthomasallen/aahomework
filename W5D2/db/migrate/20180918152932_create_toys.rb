class CreateToys < ActiveRecord::Migration[5.1]
  def change
    create_table :toys do |t|
      t.integer :toyable_id
      t.string :name, null: false
      t.string :toyable_type, null: false

      t.timestamps
    end
    add_index :toys, [:name, :toyable_id, :toyable_type], unique: true
  end
end
