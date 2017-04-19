class StudentsController < ApplicationController
  # No def index
  def new
    @current_dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Student created successfully."
      redirect_to dojo_path(@student.dojo_id)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
  end
  def show
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    day = @student.created_at
    @cohort = Student.where(dojo_id: params[:dojo_id], created_at: day.beginning_of_day...day.end_of_day)
  end
  def edit
    @student = Student.find(params[:id])
    @dojos = Dojo.all
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Student updated successfully."
      redirect_to dojo_student_path(@student.dojo_id, @student.id)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end
  end
  def destroy
    Student.find(params[:id])
    redirect_to route_path
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
end
