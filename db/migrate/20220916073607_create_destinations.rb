class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.text :image
      t.text :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
