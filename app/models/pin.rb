class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	validates :image, presence: true
	validates :description, presence: true
end

#Paperclip.options[:command_path] = "C:/Program Files/ImageMagick-6.8.9-Q16"
#do_not_validate_attachment_file_type :image
#	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]