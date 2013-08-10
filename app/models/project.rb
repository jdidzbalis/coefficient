class Project < ActiveRecord::Base
  attr_accessible :facilityname

  validates :facilityname, presence: true
  validates :user_id, presence: true

  belongs_to :user

end
