class Photo < ActiveRecord::Base
  belongs_to :album
  validates :album_id, :presence => true
  validates :caption, :presence => true
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
