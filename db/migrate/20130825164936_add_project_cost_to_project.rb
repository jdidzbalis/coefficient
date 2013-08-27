class AddProjectCostToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_cost, :integer
  end
end
