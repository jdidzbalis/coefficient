class AddFacilityNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :facilityname, :string
  end
end
