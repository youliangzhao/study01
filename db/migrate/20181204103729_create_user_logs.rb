class CreateUserLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_logs do |t|
      t.string :name
      t.string :password
      t.string :ip
      t.timestamp :logtime
      t.numeric :errcnt

      t.timestamps
    end
  end
end
