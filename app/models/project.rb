class Project < ActiveRecord::Base
  attr_accessible :facility_name, :facility_type, :facility_business, :facility_location_number, :facility_location_street, :facility_location_zip, :facility_location_state, :audit, :audit_file_name, :audit_content_type, :audit_updated_at, :facility_auditconsultant, :facility_totalenergyuse, 
  	:facility_energyprice, :project_type, :project_technology, :project_equipmentlife, :project_energysavings, :project_costsavings, :project_payback, :project_IRR

  has_attached_file :audit, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/:class/:attachment/:id/:style_:filename"

	validates_attachment_content_type :audit,
      :content_type => [ 'application/pdf' ],
      :message => "only pdf files are allowed"

  validates :facility_name, presence: true
  validates :user_id, presence: true

  belongs_to :user

end
