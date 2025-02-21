class CreateDrinks < ActiveRecord::Migration[8.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :price
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
