class Attendance < ActiveRecord::Base
  attr_accessible :student
  
  belongs_to :student
  belongs_to :attendace_sheet
end
