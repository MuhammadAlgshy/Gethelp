class Comment < ActiveRecord::Base

	 belongs_to :statuses
	 belongs_to :user
end
