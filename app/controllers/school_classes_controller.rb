class SchoolClassesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:title]
    @school_class.room_number = params[:room_number]
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
