require 'test_helper'

class HowlTest < ActiveSupport::TestCase

  test "validate on setup" do
    h = Howl.new(text: "abc", wolf_id: 3)
    assert(h.valid?, "should be valid")
  end

  test "should be invalid without text" do
    h = Howl.new(text: "abc", wolf_id: 3)
    h.text = nil
    refute(h.valid?, "should be invalid without text")
    assert(h.errors[:text])
  end

  test "should be invalid without wolf_id" do
    h = Howl.new(text: "abc", wolf_id: 3)
    h.wolf_id = nil
    refute(h.valid?, "should be invalid without wolf_id")
    assert(h.errors[:wolf_id])
  end

end
