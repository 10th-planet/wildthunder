require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  def setup
    user = FactoryGirl.create(:user)
    sign_in user
  end

  test "#create doesn't create if given bad params" do
    post :create, course: { title: "my class" }
    assert_response :unprocessable_entity
  end

  test "#create redirects to new class when creation succeeds" do
    post :create, course: { title: "my class", description: "awesome", cost: 1 }
    assert_response :redirect
    assert_redirected_to "/instructor/courses/#{Course.last.id}"
  end
end
