class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :time
      t.text :description
      t.text :image
      t.integer :destination_id
      t.integer :attraction_id

      t.timestamps
    end
  end
end
