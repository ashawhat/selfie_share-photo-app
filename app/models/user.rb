class User < ActiveRecord::Base

  has_secure_password
  has_attached_file :photo
  validates_uniqueness_of :email
  has_many :albums

end
