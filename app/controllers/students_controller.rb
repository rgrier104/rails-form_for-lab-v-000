class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @student = Student.new
  end
end
