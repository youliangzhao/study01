class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :taskcode
      t.string :taskname
      t.string :taskdesc
      t.belongs_to :template 

      t.timestamps
    end
  end
end
