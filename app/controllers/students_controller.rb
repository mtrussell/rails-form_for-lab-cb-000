class StudentsController < ApplicationController



  private

  def students_params(*args)
    params.require(:student).permit(*args)
  end
end
