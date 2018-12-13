class UserTasksController < ApplicationController
  def index
  	@user_tasks = UserTask.all
  	@temp = Temp.all
  end
end
