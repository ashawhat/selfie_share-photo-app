class User < ActiveRecord::Base

  has_secure_password
  validates_uniqueness_of :email
  has_many :albums
  validates :name, :presence => true
  validates :email, :presence => true

  def get_current
    # get the current logged in yser
  end

end
