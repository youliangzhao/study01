class Lab1Controller < ApplicationController
  before_action :authorized
  def index
  end

  def login
  end

  def invoice
  end

  def maint
  end

  def setting
  end

  def tax
  end

  protected
    def authorized
      unless User.find_by(id: session[:user_id],status: 1)
        redirect_to login_url, notice: "请登录系统"
      end
    end
end
