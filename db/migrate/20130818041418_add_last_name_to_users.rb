class AddLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_column :users, :company, :string
    add_column :users, :title, :string
    add_column :users, :phonenumber, :string
  end
end
