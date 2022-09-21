class AddNotesToPlanners < ActiveRecord::Migration[5.2]
  def change
    add_column :planners, :notes, :text
  end
end
