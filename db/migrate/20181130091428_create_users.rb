class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name,null: false
      t.string :mobi
      t.string :email
      t.string :password_digest
      t.string :adm,default: 0
      t.string :status,default: 1

      t.timestamps
    end
  end
end
