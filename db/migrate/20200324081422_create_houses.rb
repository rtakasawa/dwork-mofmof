class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :property_name, null: false
      t.float :rent, null: false
      t.string :address, null: false
      t.integer :age, null: false
      t.text :remarks
    end
  end
end
