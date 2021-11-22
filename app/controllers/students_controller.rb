class StudentsController < ApplicationController

  def index
if (params[:name])
 students =  Student.all.filter { |student| student.to_s.downcase.include?(params[:name]) }
else
  students=  Student.all
end
    
render json: students
  end

  def show 
  
    student =Student.find(params[:id])
    render json: student
  end

end
