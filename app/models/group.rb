class Group < ActiveRecord::Base
  attr_accessible :name

  has_many :students
  has_many :grades
  has_many :courses, through: :grades
end
