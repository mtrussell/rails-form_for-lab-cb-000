class StudentsController < ApplicationController



  private

  def students_params(*args)
    params.require(:students).permit(*args)
  end
end
