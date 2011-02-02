class Epic < ActiveRecord::Base
	validates :UserStory, :presence => true
	
	belongs_to :user
	
	has_many :stories
end
