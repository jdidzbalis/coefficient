class AddLocationToProject < ActiveRecord::Migration
  def change
    add_column :projects, :location_street, :string
    add_column :projects, :location_number, :integer
    add_column :projects, :location_zip, :integer
    add_column :projects, :location_state, :string
    add_column :projects, :facilitytype, :string
    add_column :projects, :facilityenergyuse, :integer
  end
end
