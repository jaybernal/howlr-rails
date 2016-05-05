require 'test_helper'

class HowlTest < ActiveSupport::TestCase

  test "validate on setup" do
    h = Howl.new(text: "abc", wolf_id: 3)
    assert(h.valid?, "should be valid")
  end

end
