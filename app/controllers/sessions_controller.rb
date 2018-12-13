class SessionsController < ApplicationController


  def new
  end

  def create
    # 登录系统，管理员->后台， 普通用户->操作台
    #  1. 用户id和用户名写入session中
    #  2. 登录信息写入日志表
    #   
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
      redirect_to login_url, alert: "用户名或密码不正确."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "退出系统"
  end

protected
  def writeUserlog(flag)
  	# write into userlog , flag=0 success, flag=1 fail
    if flag == 0
      pass = params[:password]
    else
      pass = ""
    end
    ulog = UserLog.create(name: params[:name],password: pass,ip: request.remote_ip,logtime: Time.now,errcnt: flag)
  end
  	
end
