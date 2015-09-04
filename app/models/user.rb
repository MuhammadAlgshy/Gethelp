class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
make_flagger
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         	
validates :first_name, presence: true,  uniqueness: true
validates :last_name, presence: true , uniqueness: true
validates :profile_name, presence: true, uniqueness: true
has_many :statuses
has_many :comments
has_many :flags
has_many :groups
has_many :relations


         def full_name
         		first_name+" "+last_name
         end
      
end
