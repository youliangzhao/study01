class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.timestamp :tasktime, default: Time.now
      t.integer :taskscore

      t.timestamps
    end
  end
end