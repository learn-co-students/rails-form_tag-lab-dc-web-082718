class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(:form_params)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def form_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
