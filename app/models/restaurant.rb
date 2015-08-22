class Restaurant < ActiveRecord::Base
	belongs_to :user
	 has_attached_file :image, styles: { medium: "600x600#" }
	 validates_attachment_content_type :image, content_type:  /\Aimage\/.*Z/
 
end
