class RenameUserTasksTemplateIdToTempId < ActiveRecord::Migration[5.2]
  def change
	  change_table :user_tasks do |t|
		  t.rename :template_id, :temp_id
	  end
  end
end
