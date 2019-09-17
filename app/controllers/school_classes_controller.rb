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
    @school_classes.title = params[:title]
    @school_classes.room_number = params[:room_number]
    @school_classes.save
    binding.pry
    redirect_to school_class_path(@school_class)
  end
end
