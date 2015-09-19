require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  test "when a user is enrolled in a course, they can see a lesson for it" do
    # Given
    lesson = FactoryGirl.create(:lesson)
    user = FactoryGirl.create(:user)
    user.enrollments.create(course: lesson.section.course)

    # When
    sign_in user
    get :show, id: lesson.id

    # Then
    assert_response :success
  end

  test "when a user is NOT enrolled in a course, they canNOT see the lesson for it" do
    # Given
    lesson = FactoryGirl.create(:lesson)
    user = FactoryGirl.create(:user)

    # When
    sign_in user
    get :show, id: lesson.id

    # Then
    assert_response :redirect
    assert_redirected_to course_path(lesson.section.course)
  end
end
