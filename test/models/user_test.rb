require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
    test "a user should enter a Last name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
    test "a user should enter a profile name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
     test "a user should have a uniqe name" do 
  	user = User.new
  	assert !user.save
  	puts user.errors.inspect
  	assert !user.errors[:profile_name].empty?
  end
  test "a user should have a profile name wihout speaces" do 
  user = User.new
  user.profile_name = "My profile with speaces"
  assert !user.save
  assert !user.errors[:profile_name].empty?
  assert user.errors[:profile_name].include?("must be formatted correct.")
  end

end
