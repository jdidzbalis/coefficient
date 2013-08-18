class AddLenderToUser < ActiveRecord::Migration
  def change
    add_column :users, :lender, :boolean, :default => false, :null => false
  end
end
