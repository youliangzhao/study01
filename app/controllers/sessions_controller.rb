class SessionsController < ApplicationController


  def new
  end

  def create
    user = User.find_by(name: params[:name],status: 1)
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      writeUserlog(0)
      if user.adm == "1"
        redirect_to admin_index_url
      else
        redirect_to lab1_index_url
      end
    else
      writeUserlog(1)
      redirect_to login_url, alert: "bad pass"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "logout"
  end

protected
  def writeUserlog(flag)
  	# write into userlog , flag=0 success, flag=1 fail
    ulog = UserLog.create(name: params[:name],password: params[:password],ip: request.remote_ip,logtime: Time.now,errcnt: flag)
  end
  	
end
