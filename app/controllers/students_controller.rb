# encoding: UTF-8
class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student, notice: 'El estudiante se creó exitosamente.'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
