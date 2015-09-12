require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  test "show page" do
     user = FactoryGirl.create(:user)
     course = FactoryGirl.create(:course)

     get :show, id: course.id
     assert_response :success
   end
end
