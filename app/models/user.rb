class User < ActiveRecord::Base

  has_secure_password
  has_many :albums
  validates :name, :presence => true
  validates :email, :presence => true
  validates_uniqueness_of :email

  def get_current
    # get the current logged in yser
  end

end
