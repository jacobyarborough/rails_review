class TasksController < ApplicationController 
  before_action :get_task, except: [:index, :create, :new] 

  def index 
    @tasks = Task.all
  end

  def new 
  end 

  def create 
    task = Task.new(
      title: params[:task][:title],
      description: params[:task][:description]
    )

    task.save!

    redirect_to "/tasks"
  end

  def show
  end 

  def edit
  end

  def update 
    @task.update!(title: params[:task][:title], description: params[:task][:description])

    @task.save!

    redirect_to "/tasks/#{@task.id}"
  end

  def destroy 
    @task.destroy!

    redirect_to "/tasks"
  end 

  private 
  
  def get_task 
    @task = Task.find(params[:id])
  end 
end 