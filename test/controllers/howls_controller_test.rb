require 'test_helper'

class HowlsControllerTest < ActionController::TestCase
   test "should get new" do
     get :new
     assert_response :success
   end

   test "should get create" do
     Wolf.create!(name: "big bad", image: "url", description: "ugly")
     post :create, howl: {text: "abc", wolf_id: Wolf.first.id}
     assert_redirected_to howls_path
   end

   test "should get index" do
     get :index
     assert_response :success
   end

end
