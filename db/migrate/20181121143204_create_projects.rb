class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.string :img
      t.text :description
      ##testing again
      t.integer :user_id

      t.timestamps
    end
  end
end
