# encoding: UTF-8
class CoursesController < ApplicationController

  load_and_authorize_resource

  def index
    if current_user
      @courses = current_user.courses
    else
      @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, notice: 'El curso se creó exitosamente.'
    else
      render action: 'new'
    end
  end
  
   def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'El curso se actualizó satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

end
