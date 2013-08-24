class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_firstname, :user_lastname, :email, :user_phonenumber, :user_company, :user_title, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_presence_of :user_firstname, :user_lastname, :email, :user_phonenumber, :user_company, :user_title, :password, :password_confirmation

  has_many :projects
end
