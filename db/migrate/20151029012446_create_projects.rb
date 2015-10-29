class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :currency
      t.string :budget
      t.string :jobs
      t.integer :user_id
      t.integer :teacher_id
    end
  end
end
