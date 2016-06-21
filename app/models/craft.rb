class Craft < ActiveRecord::Base
	belongs_to :craft_type
  has_attached_file :pic
  validates_attachment_file_name :pic, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
