require 'test_helper'

class WolfTest < ActiveSupport::TestCase

  test "validate on setup" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    assert(w.valid?, "should be valid")
  end

 	test "should be invalid without a name" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    w.name = nil
    refute(w.valid?, "should be invalid without name")
    assert(w.errors[:name])
  end

  test "should be invalid with duplicate name" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    w.save
    dup = w.dup
    refute(dup.valid?, "should not allow a duplicate name")
    assert(dup.errors[:name], "should have an error under :name")
  end 

  test "should be invalid with a duplicate but differently cased name" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    w.save
    dup = w.dup
    dup.name.upcase!
    refute(dup.valid?, "should not allow a duplicate name")
    assert(dup.errors[:name], "should have an error under :name")
  end 

	test "should be invalid without an image" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    w.image = nil
    refute(w.valid?, "should be invalid without an image")
    assert(w.errors[:image])
  end

  test "should be invalid without a description" do
    w = Wolf.new(name: "wolf", image:"http", description: "hairy")
    w.description = nil
    refute(w.valid?, "should be invalid without description")
    assert(w.errors[:description])
  end

end
