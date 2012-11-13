class GradesController < ApplicationController

  def monthly
    @course = Course.find(params[:course_id])
    @group = Group.find(params[:group_id])
    @students = @group.students
    @students.each { |s| s.grades.build }
  end


end
