require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "show page" do
    user = FactoryGirl.create(:user)
    lesson = FactoryGirl.create(:lesson)

    get :show, id: lesson.id
    assert_response :success
  end
end
