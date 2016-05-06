require 'test_helper'

class WolvesControllerTest < ActionController::TestCase
   test "should get new" do
     get :new
     assert_response :success
   end

   test "should get create" do
     post :create, wolf: {name: "big bad", image: "url", description: "ugly"}
     assert_redirected_to wolves_path
   end

   test "should get index" do
     get :index
     assert_response :success
   end

end
