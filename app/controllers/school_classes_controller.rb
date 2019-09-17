class SchoolClassesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @school_classes = SchoolClass.new
  end

  def create
    @school_classes = SchoolClass.new
    @school_classes.first_name = params[:first_name]
    @school_classes.last_name = params[:last_name]
    @school_classes.save
    redirect_to student_path(@school_class)
  end
end
