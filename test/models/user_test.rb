require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

#   test "a user should have a unique profile name" do
#   user = User.new
#   user.profile_name = users(:blayne).profile_name
#   user.first_name = users(:blayne).first_name
#   user.last_name = users(:blayne).last_name

#   assert !user.save
#   puts "The problem was #{user.errors.inspect}"
#   assert !user.errors[:profile_name].empty?
# end

test "profile name without spaces" do
user = User.new
user.profile_name = "Profile name with spaces"

assert !user.save
assert !user.errors[:profile_name].empty?
assert !user.errors[:profile_name].include?("Must be formatted correctly")
  end


end
