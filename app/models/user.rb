class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :lastname, :email, :phonenumber, :company, :title, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :firstname, :lastname, :email, :phonenumber, :company, :title, :password, :password_confirmation

  has_many :projects
end
