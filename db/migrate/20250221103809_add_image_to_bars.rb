class AddImageToBars < ActiveRecord::Migration[8.0]
  def change
    add_column :bars, :image, :string
  end
end
