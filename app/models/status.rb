class Status < ActiveRecord::Base
	make_flaggable :get
	belongs_to :user
	has_many :comments
	has_many :flags
	belongs_to :group
end
