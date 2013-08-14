class Project < ActiveRecord::Base
  attr_accessible :facilityname, :audit, :audit_file_name, :audit_content_type, :audit_updated_at, :facilitytype, :location_number, :location_street, :location_zip, :location_state, :facilityenergyuse

  has_attached_file :audit, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/:class/:attachment/:id/:style_:filename"

	validates_attachment_content_type :audit,
      :content_type => [ 'application/pdf' ],
      :message => "only pdf files are allowed"

  validates :facilityname, presence: true
  validates :user_id, presence: true

  belongs_to :user

end
