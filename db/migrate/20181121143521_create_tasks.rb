class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :timeleft
      t.string :start
      t.text :description
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
