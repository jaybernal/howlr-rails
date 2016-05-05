require 'test_helper'

class WolfTest < ActiveSupport::TestCase

  test "validate on setup" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    assert(w.valid?, "should be valid")
  end

end
