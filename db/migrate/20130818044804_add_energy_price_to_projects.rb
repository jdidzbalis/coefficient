class AddEnergyPriceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :energyprice, :decimal
    add_column :projects, :energypurchase, :string
  end
end
