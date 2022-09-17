class CreateAttractionsPlanners < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions_planners do |t|
      t.integer :attraction_id
      t.integer :planner_id
    end
  end
end
