class CreateEventsPlanners < ActiveRecord::Migration[5.2]
  def change
    create_table :events_planners do |t|
      t.integer :event_id
      t.integer :planner_id
    end
  end
end
