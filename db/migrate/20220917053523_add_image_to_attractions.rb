class AddImageToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :image, :text
  end
end
