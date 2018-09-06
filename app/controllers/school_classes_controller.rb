class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(:id)
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path
  end

  def edit
    @school_class = SchoolClass.find(:id)
  end

  def update
    @school_class = SchoolClass.find(:id)
    @school_class.update(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
