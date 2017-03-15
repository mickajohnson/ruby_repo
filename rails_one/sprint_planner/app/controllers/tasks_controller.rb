class TasksController < ApplicationController
  def index
    @to_do = Task.where("status = 'to_do'")
    @doing = Task.all.where("status = 'doing'")
    @done = Task.all.where("status = 'done'")
  end

  def new
  end

  def create
    @task = Task.new( task_params )
    @task.status = "to_do"
    unless @task.valid?
      flash[:errors] = @task.errors.full_messages
      redirect_to '/new'
    else
      @task.save
      redirect_to "/"
    end
  end

  def update
    @task = Task.find(params[:task])
    @task.status = params[:new_status]
    @task.save
    redirect_to '/'
  end

  private
  def task_params
    params.require(:task).permit(:description, :priority, :due_date)
  end
end
