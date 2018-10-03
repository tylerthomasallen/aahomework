class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :website, null: false
      t.string :open_hours, null: false
      t.timestamps
    end
    add_index :businesses, [:name, :address], unique: true
  end
end
