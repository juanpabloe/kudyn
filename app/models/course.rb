class Course < ActiveRecord::Base
  attr_accessible :description, :ending_date, :start_date, :title
end
