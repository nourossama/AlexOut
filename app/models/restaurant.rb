class Restaurant < ActiveRecord::Base
	belongs_to :user
	  has_attached_file :image, styles: {large:"600x600>", medium: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
