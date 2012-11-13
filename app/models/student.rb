class Student < ActiveRecord::Base
  attr_accessible :birthdate, :email, :group_id, :name, :grades_attributes

  belongs_to :group
  has_many :attendances
  has_many :grades

  accepts_nested_attributes_for :grades, :reject_if => lambda { |a| a[:value].blank? }
end
