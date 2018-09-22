class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    @student = Student.create(first_name: first_name, last_name: last_name)
    redirect_to @student
  end



end
