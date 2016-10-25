class Link < ApplicationRecord
	acts_as_votable
	belongs_to :user
	has_many :comments

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => lambda { |avatar| avatar.instance.def_url}
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/




  	def def_url
    	ActionController::Base.helpers.asset_path('def1.png')
  	end
end
