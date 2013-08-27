class ChangeAddress1FormatInProjects < ActiveRecord::Migration
  def up
  	change_column :projects, :facility_location_address1, :string
  	change_column :projects, :facility_location_address2, :string
  end

  def down
  end
end
