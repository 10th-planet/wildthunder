require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "numbers_to_currency" do
    course = FactoryGirl.create(:course)
    expected = '$15'
    actual = number_to_currency(course.cost)
    
    assert_equal expected, actual
   end
end
