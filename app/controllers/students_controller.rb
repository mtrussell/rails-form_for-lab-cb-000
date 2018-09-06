class StudentsController < ApplicationController

  def index
    @students = Students.all
  end

  def show
    @student = Student.find(:id)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = student_params(:first_name)
    @student.last_name = student_params(:last_name)
    @student.save
    redirect_to student_path
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
