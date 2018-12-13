class CreateTemps < ActiveRecord::Migration[5.2]
  def change
    create_table :temps do |t|
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
