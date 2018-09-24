class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new_student
    render "new"
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
  end

private

  def fullname
    @full_name = "#{@student.first_name} #{@student.last_name}"
  end

end
