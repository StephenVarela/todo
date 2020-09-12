class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(permitted_params)

    @task.save
    redirect_to @task
  end

  def new
    @task = Task.new()
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def update
    if @task.update(permitted_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  
    redirect_to tasks_path
  end

  private

  def permitted_params
    params
      .require(:task)
      .permit(:title, :description)
  end
end
