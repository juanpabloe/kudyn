class Student < ActiveRecord::Base
  attr_accessible :birthdate, :email, :group_id, :name

  belongs_to :group
  has_many :attendances
    
end
