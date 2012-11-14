class GroupsController < ApplicationController

  load_and_authorize_resource

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @students = @group.students
    @a_sheet = AttendanceSheet.new
    @students.each { |s| @a_sheet.attendances << Attendance.new(:student => s) }
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      redirect_to @group, notice: 'El grupo se creo exitosamente.'
    else
      render action: "new"
    end
  end

  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end
end
