class CreateBars < ActiveRecord::Migration[8.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.text :description
      t.string :city

      t.timestamps
    end
  end
end
