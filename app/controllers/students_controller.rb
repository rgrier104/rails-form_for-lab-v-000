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

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
