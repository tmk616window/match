class RemoveColumnTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :image ,:string
  end
end
