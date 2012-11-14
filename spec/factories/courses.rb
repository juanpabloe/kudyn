# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    title "MyString"
    description "MyText"
    start_date "2012-11-03"
    ending_date "2012-11-03"
  end
end
