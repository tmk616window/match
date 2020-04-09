class AddColumnTasks < ActiveRecord::Migration[6.0]
  def change
        add_column :tasks, :time, :string
        add_column :tasks, :week, :string
        add_column :tasks, :station, :string
        add_column :tasks, :address, :string
        add_column :tasks, :image, :string
        add_column :tasks, :user_id, :integer
        add_column :tasks, :picture, :string
  end
end
