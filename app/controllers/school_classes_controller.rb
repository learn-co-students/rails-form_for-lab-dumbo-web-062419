class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to @school_class
  end

  def edit
    find_school_class
  end

  def update
    find_school_class
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  private

#locate isntance
  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

#control strong params
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
