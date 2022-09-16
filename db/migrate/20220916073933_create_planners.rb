class CreatePlanners < ActiveRecord::Migration[5.2]
  def change
    create_table :planners do |t|
      t.string :name
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
