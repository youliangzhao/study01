class AddTemplateIdToUserTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_tasks, :template_id, :integer
  end
end
