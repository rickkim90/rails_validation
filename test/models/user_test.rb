require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user email validation (right)" do
    post = User.new({
      email: "asd@asdf.com",
      password: "123123",
      password_confirmation: "123123"
    })
    asser user.save, 'Validation Success'
  end

  test "user email validation (wrong)" do
    post = User.new({
      email: "asdf",
      password: "123123",
      password_confirmation: "123123"
    })
    refute user.save, 'Validation Success'
  end
end
