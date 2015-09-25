require 'test_helper'

class EnrollmentsControllerTest < ActionController::TestCase
    test "student is enrolled only if the charge goes through" do

    #given
    user = FactoryGirl.create(:user)

    #when
    sign_in user
    #the charge is successful


    #then
    #a new enrollment is created
     assert user.enrollments.create(course: lesson.section.course) 
   end

   
   test "student is NOT enrolled if the charge fails"
   #given
   user = FactoryGirl.create(:user)

   #when
   sign_in user
   #the charge is NOT successful
  

   #then 
   #student is redirected back to course detail page
   assert redirect_to course_path(current_course)

end
