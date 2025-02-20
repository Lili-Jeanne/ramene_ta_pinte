class CreateBarsDrinks < ActiveRecord::Migration[8.0]
  def change
    create_table :bars_drinks do |t|
      t.references :bar, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
