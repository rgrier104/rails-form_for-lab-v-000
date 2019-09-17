class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
