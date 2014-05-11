require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user should enter a first name" do
  	user=User.new
  	assert !user.save
  	assert !user.error[:first_name].empty?
  end

  test "unique profile name" do
  	user=User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

end
