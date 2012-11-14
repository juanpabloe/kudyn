class AttendanceSheet < ActiveRecord::Base
  attr_accessible :group_id
  
  has_many :attendances, :dependent => :destroy
  belongs_to :group
  
  accepts_nested_attributes_for :attendances
end
