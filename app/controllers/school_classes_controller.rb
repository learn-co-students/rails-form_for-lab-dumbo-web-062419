class SchoolClassesController < ApplicationController
  before_action :find_school_class, only: [:show, :edit, :update, :delete]

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to @school_class
  end

  def show
  end

  def edit
  end

  def update
    # binding.pry
    @school_class.update(school_class_params)
    redirect_to @school_class
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def school_class_params
    params.require(:school_class).permit([:title, :room_number])
  end
end
