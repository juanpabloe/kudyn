# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name "MyString"
    email "MyString"
    birthdate "2012-10-06"
    group_id 1
  end
end
