FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "rasalter#{n}@gmail.com"
    end
    password "ohreally"
    password_confirmation "ohreally"
  end

  factory :lesson do
    title 'Gettig Started'
    subtitle 'What are tags?'
    association :section
  end

  factory :section do
    title "Chapter 1"
    association :course
  end

  factory :course do
    title 'Intro to HTML'
    description 'The Best HTML Course'
    cost 15
  end

  factory :charge do
    sequence :email do |n|
      "rasalter#{n}@gmail.com"
    card_number 4242-4242-4242-4242
    expiration 10/18 
    cvc 411
  end
