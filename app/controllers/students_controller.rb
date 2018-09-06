class StudentsController < ApplicationController

  def index
    @students = Students.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = 
  end

  def edit
  end

  def update
  end


  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
