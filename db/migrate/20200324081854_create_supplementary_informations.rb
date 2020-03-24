class CreateSupplementaryInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :supplementary_informations do |t|
      t.text :line
      t.text :station
      t.integer :minutes_on_foot
      t.references :house, foreign_key: true
    end
  end
end
