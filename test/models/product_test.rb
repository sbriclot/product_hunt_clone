require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full product entry (name + tagline)" do
    product = Product.new(name: "skello", tagline: "planning tool")
    assert_equal true, product.valid?
  end

  test "name only" do
    product = Product.new(name: "skello")
    assert_equal false, product.valid?
  end

  test "tagline only" do
    product = Product.new(tagline: "planning tool")
    assert_equal false, product.valid?
  end
end
