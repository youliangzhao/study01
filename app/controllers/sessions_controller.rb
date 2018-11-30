class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name],status: 1)
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      if user.adm == "1"
        redirect_to admin_index_url
      else
        redirect_to lab1_index_url
      end
    else
      redirect_to login_url, alert: "用户名或密码不正确"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "成功退出系统"
  end
end
