class Grade < ActiveRecord::Base
  attr_accessible :course_id, :month, :student_id, :value, :group_id

  belongs_to :course
  belongs_to :student
  belongs_to :group

  before_create :set_month

  def set_month
    month = Date.today.strftime("%B")
  end
end
