class TasksController < ApplicationController

def index
  @tasks = Task.all

end

def show
  @task = Task.find(param[:id])

end


end
