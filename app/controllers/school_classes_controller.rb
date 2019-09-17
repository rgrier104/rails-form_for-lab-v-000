class SchoolClassesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @school_classes = SchoolClass.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end
end
