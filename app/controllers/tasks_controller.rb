class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create task_params
    @task.user_id = current_user.id
    if @task.save then
      redirect_to '/top/index'
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update task_params
    if @task.save then
      redirect_to '/top/index'
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/top/index' 
  end

  private 
  def task_params
    params.require(:task).permit(:main,:start_time,:user_id,:group_id)
  end
end
