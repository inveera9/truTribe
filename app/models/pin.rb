class Pin < ActiveRecord::Base
     belongs_to :user
     has_attached_file :image, :styles => { :original => "600x600>", :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates :description, presence: true
	acts_as_taggable

	acts_as_commontable

end
