class Lab1Controller < ApplicationController
  before_action :authorized

  def index
    inittask(session[:user_id])

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

  def tasklist
    @task = Task.where(temp_id: 1)
  end


  def inittask(userid)
    # 初始化实操任务

    @user_id = userid
    
    # 遍历所有操作模板的所有任务，确保都初始化成功(有的模板新增了任务)
    # 确保该用户的所有任务都初始化了一条记录，且只有一项是进行中(若没有，则将最近一条未开始记录，置为进行中)

    if (@user_id != nil) && (UserTask.where(user_id: @user_id).count == 0)
      # 第一次进入实操功能，对数据进行初始化：读出所有任务，写入该表
    
      Task.all.each do |t|
        UserTask.create(user_id: @user_id,task_id: t.id, temp_id: t.temp_id, taskscore: -1)          
      end

    elsif (@user_id != nil) && (UserTask.where(user_id: @user_id).count != Task.count)
      # 任务数量不一致，需要再次初始化 (什么情况会造成这样结果? 手动改过库)

      # 删除所有实操任务
      UserTask.where(user_id: @user_id).destroy_all

      # 重新写入新记录
      Task.all.each do |t|
        UserTask.create(user_id: @user_id,task_id: t.id, temp_id: t.temp_id, taskscore: -1)          
      end
    end    

  end


  protected
    def authorized
      unless User.find_by(id: session[:user_id],status: 1)
        redirect_to login_url, notice: "请登录系统"
      end
    end

end
