# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grade do
    month "MyString"
    value "9.99"
    student_id 1
    course_id 1
  end
end
