class Comment < ActiveRecord::Base
	attr_accessible :content  # CHANGED
   belongs_to :user         # NEW
   belongs_to :micropost    # NEW
end
