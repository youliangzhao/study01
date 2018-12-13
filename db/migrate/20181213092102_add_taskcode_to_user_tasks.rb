class AddTaskcodeToUserTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_tasks, :taskcode, :integer
  end
end
