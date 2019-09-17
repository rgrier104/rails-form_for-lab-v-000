class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @student = Student.new(student_params(:first_name, :last_name))
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
