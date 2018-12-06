class AdminController < ApplicationController
  def index
  end
  
  def showUserLogs
    @userlog = UserLog.all
  end
end
