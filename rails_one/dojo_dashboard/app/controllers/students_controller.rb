class StudentsController < ApplicationController
  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def create
    @student = Student.new( student_params )
    @student.dojo = Dojo.find(params[:dojo])
    unless @student.valid?
      flash[:errors] = @student.errors.full_messages
      redirect_to '/dojos/' + params[:dojo_id] + '/students/new'
    else
      @student.save
      redirect_to '/dojos/' + params[:dojo_id], notice: "You have successfully added a student"
    end
  end

  def edit
    @student = Student.find(params[:id])
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update( student_params )
    @student.dojo = Dojo.find(params[:dojo])
    unless @student.valid?
      flash[:errors] = @student.errors.full_messages
      redirect_to '/dojos/' + params[:dojo_id] + '/students/' + params[:id] + '/edit'
    else
      @student.save
      redirect_to '/dojos/' + params[:dojo_id] + '/students/' + params[:id] , notice: "You have successfully added a student"
    end
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to '/dojos/' + params[:dojo_id], notice: "You have successfully deleted a student"
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @cohort = Student.cohort(@student)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end
