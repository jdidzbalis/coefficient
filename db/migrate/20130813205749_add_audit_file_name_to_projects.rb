class AddAuditFileNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :audit_file_name, :string
    add_column :projects, :audit_content_type, :string
    add_column :projects, :audit_updated_at, :datetime
    
  end
end
