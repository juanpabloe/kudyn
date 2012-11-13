class Course < ActiveRecord::Base
  attr_accessible :description, :ending_date, :start_date, :title, :user_id

  has_many :grades
  has_many :groups, through: :grades
  belongs_to :user
end
