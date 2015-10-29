class AddFpidToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :fpid, :integer
  end
end
