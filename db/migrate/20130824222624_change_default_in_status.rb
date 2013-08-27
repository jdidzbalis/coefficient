class ChangeDefaultInStatus < ActiveRecord::Migration
  def up
  	change_column :projects, :project_status, :string, :default => "Submitted"
  end

  def down
  end
end
