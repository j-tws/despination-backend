class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.text :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
