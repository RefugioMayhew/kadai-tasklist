class TasksController < ApplicationController
  
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = Task.order(id: :desc).page(params[:page]).per(5)
  end
  
  def show
    #@task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      flash[:success] = 'submitted, successfully'
      redirect_to @task
    else
      flash.now[:danger] = 'missed'
      render :new
    end
  end
  
  def edit
    #@task = Task.find(params[:id])
  end
  
  def update
    #@task = Task.find(params[:id])
    
    if @task.update(task_params)
      flash[:success] = 'submitted successfully'
      redirect_to @task
    else
      flash.now[:danger] = 'missed'
      render :edit
    end
  end
  
  def destroy
    #@task = Task.find(params[:id])
    @task.destroy
    
    flash[:success] = 'deleted successfully'
    redirect_to tasks_url
  end
  
  private
  #Strong Parameter
  
  def task_params
    params.require(:task).permit(:content, :status)
  end
  
  def set_task
    @task = Task.find(params[:id])
  end
end




