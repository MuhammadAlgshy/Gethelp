class Flagging < ActiveRecord::Base
	belongs_to :user
 	belongs_to :statuses
end
