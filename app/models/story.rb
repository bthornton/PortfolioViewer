class Story < ActiveRecord::Base
  belongs_to :epic

  belongs_to :user
  
  has_many :tasks

end
